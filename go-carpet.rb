class GoCarpet < Formula
  homepage "https://github.com/msoap/go-carpet"
  desc "Tool for viewing test coverage for Go source files\n\nTo view the test coverage in the terminal, just run go-carpet.\n\n"
  version '1.3'

  if MacOS.prefer_64_bit?
    url "https://github.com/msoap/go-carpet/releases/download/1.3/go-carpet-1.3.amd64.darwin.zip"
    sha256 "422a2c5805c15d3bc0c10a61fac68b4f55b01f8d57bc9a4f305217fe0ef0858c"
  else
    url "https://github.com/msoap/go-carpet/releases/download/1.3/go-carpet-1.3.386.darwin.zip"
    sha256 "f4b0499a899abc11d48bb3537d2d1de4618865a56d658b9188de760ca0b53f4c"
  end

  def install
    bin.install "go-carpet"
  end
end
