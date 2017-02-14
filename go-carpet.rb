class GoCarpet < Formula
  homepage "https://github.com/msoap/go-carpet"
  desc "Tool for viewing test coverage for Go source files\n\nTo view the test coverage in the terminal, just run go-carpet.\n\n"
  version '1.5'

  if MacOS.prefer_64_bit?
    url "https://github.com/msoap/go-carpet/releases/download/1.5/go-carpet-1.5.darwin.amd64.tar.gz"
    sha256 "812692efcf4b4608ca497648b0521acd8e28079234e939c77f3fa78e4eb9e71c"
  else
    url "https://github.com/msoap/go-carpet/releases/download/1.5/go-carpet-1.5.darwin.386.tar.gz"
    sha256 "24e98e0461e269f85ac53e59696c76738628eab60eea902c9bac6a247eeab1b2"
  end

  def install
    bin.install "go-carpet"
    man1.install "go-carpet.1"
  end
end
