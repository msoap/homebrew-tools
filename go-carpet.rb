class GoCarpet < Formula
  homepage "https://github.com/msoap/go-carpet"
  desc "Tool for viewing test coverage for Go source files"
  version '1.1'

  if MacOS.prefer_64_bit?
    url "https://github.com/msoap/go-carpet/releases/download/1.1/go-carpet-1.1.amd64.darwin.zip"
    sha256 "215ad86003f9d3dc6a1b53a7dfb2332469e4a20534cc71dbead9a9e34695d4b6"
  else
    url "https://github.com/msoap/go-carpet/releases/download/1.1/go-carpet-1.1.386.darwin.zip"
    sha256 "f68b0152aa1c2c5afa7a174f6eda8c746648b33ee23fd829b64af54dcb33b2c6"
  end

  def install
    bin.install "go-carpet"
  end
end
