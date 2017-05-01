class GoCarpet < Formula
  homepage "https://github.com/msoap/go-carpet"
  desc "Tool for viewing test coverage for Go source files\n\nTo view the test coverage in the terminal, just run go-carpet.\n\n"
  version '1.6'

  if MacOS.prefer_64_bit?
    url "https://github.com/msoap/go-carpet/releases/download/1.6/go-carpet-1.6.darwin.amd64.tar.gz"
    sha256 "ec58be05ce38d0b5ee2f45c342cce250615b14d7de884318963ec4ff7a30dadf"
  else
    url "https://github.com/msoap/go-carpet/releases/download/1.6/go-carpet-1.6.darwin.386.tar.gz"
    sha256 "58a1d72eecaa2c619f5b87fb74dcaf241d09e95db5d47ab064ad556af3a9d7de"
  end

  def install
    bin.install "go-carpet"
    man1.install "go-carpet.1"
  end
end
