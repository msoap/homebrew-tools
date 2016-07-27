class GoCarpet < Formula
  homepage "https://github.com/msoap/go-carpet"
  desc "Tool for viewing test coverage for Go source files\n\nTo view the test coverage in the terminal, just run go-carpet.\n\n"
  version '1.4'

  if MacOS.prefer_64_bit?
    url "https://github.com/msoap/go-carpet/releases/download/1.4/go-carpet-1.4.amd64.darwin.zip"
    sha256 "aa00a9aba591f9f6c83c3f7dd5799bf1f864e9cbc873b80e23dcffaaa204db2d"
  else
    url "https://github.com/msoap/go-carpet/releases/download/1.4/go-carpet-1.4.386.darwin.zip"
    sha256 "cebe2184da2b9fb406e1197a44f58517957e4efe753a2f30d98cc61f4305ee22"
  end

  def install
    bin.install "go-carpet"
  end
end
