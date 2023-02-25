#!/bin/sh

prj_name=$1
if [ -z "$prj_name" ]; then
  echo "Usage: $0 project_name"
  exit 1
fi

user_name=msoap

link=$(
    curl -s -H "Accept: application/vnd.github+json" https://api.github.com/repos/${user_name}/${prj_name}/releases/latest \
    | jq -r '.assets[] | select(.name == "checksums.txt") | .browser_download_url'
)
echo "Generating by $link -> ${prj_name}.rb ..."
cat ${prj_name}.rb.tmpl | go run generate.go $link > ${prj_name}.rb
