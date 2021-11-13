/*
Generating formula from template:
  cat application.rb.tmpl | go run generate.go http://link.to/checksums.txt > application.rb
*/
package main

import (
	"fmt"
	"log"
	"net/http"
	"os"
	"regexp"
	"strconv"
	"strings"

	"github.com/msoap/byline"
)

var (
	reVars   = regexp.MustCompile(`{{\s*(\S+)\s*}}`)
	reVer    = regexp.MustCompile(`_(\d+\.\d+(?:\.\d+)?)_`)
	reFileds = regexp.MustCompile(`\$(\d),(\S+)`) // $2,darwin_amd64.tar.gz
)

func main() {
	if len(os.Args) != 2 {
		log.Fatalf("usage:\n  cat application.rb.tmpl | go run generate.go http://link.to/checksums.txt > application.rb")
	}

	cs, err := getChecksums(os.Args[1])
	if err != nil {
		log.Fatalf("failed to get checksums file: %s", err)
	}

	out, err := byline.NewReader(os.Stdin).AWKMode(func(line string, _ []string, _ byline.AWKVars) (string, error) {
		return reVars.ReplaceAllStringFunc(line, cs.replacer), nil
	}).ReadAll()
	if err != nil {
		log.Fatalf("failed to process file: %s", err)
	}

	if _, err := os.Stdout.Write(out); err != nil {
		log.Fatalf("failed to write file: %s", err)
	}
}

type checksums struct {
	ver   string
	lines [][]string
}

func getChecksums(in string) (*checksums, error) {
	resp, err := http.Get(in)
	if err != nil {
		return nil, err
	}
	defer resp.Body.Close()

	result := checksums{}
	err = byline.NewReader(resp.Body).AWKMode(func(line string, fields []string, vars byline.AWKVars) (string, error) {
		if len(fields) != 2 {
			return line, fmt.Errorf("got not valid line: %q, with %d fields", line, vars.NF)
		}
		result.lines = append(result.lines, fields)
		if result.ver == "" {
			if parts := reVer.FindStringSubmatch(fields[1]); len(parts) == 2 {
				result.ver = parts[1]
			}
		}
		return line, nil
	}).Discard()
	if err != nil {
		return nil, err
	}

	return &result, nil
}

func (cs checksums) replacer(from string) string {
	from = strings.TrimRight(strings.TrimLeft(from, "{ "), " }")
	if from == "ver" {
		return cs.ver
	}

	if parts := reFileds.FindStringSubmatch(from); len(parts) == 3 {
		idx, err := strconv.Atoi(parts[1])
		if err != nil || idx < 1 {
			log.Printf("failed convert %q into index: %s", parts[1], err)
			return from
		}
		what := parts[2]
		for _, row := range cs.lines {
			if strings.Contains(row[1], what) {
				return row[idx-1]
			}
		}
	}

	return from
}
