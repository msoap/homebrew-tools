class GoCarpet < Formula
  homepage "https://github.com/msoap/go-carpet"
  desc "Tool for viewing test coverage for Go source files\n\nTo view the test coverage in the terminal, just run go-carpet.\n\n"
  version '1.7'

  if MacOS.prefer_64_bit?
    url "https://github.com/msoap/go-carpet/releases/download/1.7/go-carpet-1.7.darwin.amd64.tar.gz"
    sha256 "9f3671e4784264774376191cc1ad87978ed5f1fdb78640e041bc5994f7307b1f"
  else
    url "https://github.com/msoap/go-carpet/releases/download/1.7/go-carpet-1.7.darwin.386.tar.gz"
    sha256 "506b9a727d0b0cf4788424b8a65a286beacbc3346eedf83c7ce17c6b9a6d2423"
  end

  def install
    bin.install "go-carpet"
    man1.install "go-carpet.1"
  end
end
