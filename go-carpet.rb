class GoCarpet < Formula
  homepage "https://github.com/msoap/go-carpet"
  version '1.0'

  if MacOS.prefer_64_bit?
    url "https://github.com/msoap/go-carpet/releases/download/1.0/go-carpet-1.0.amd64.darwin.zip"
    sha256 "bc0eb3346e223989679bb97cd92bfa59179eee3a0ca7bf0c6b3470dec691b0dd"
  else
    url "https://github.com/msoap/go-carpet/releases/download/1.0/go-carpet-1.0.386.darwin.zip"
    sha256 "5d5e8c96ddb0827e8386e58793dd18b72b56ad409b98bf6b0ea4be2ddb7a9251"
  end

  def install
    bin.install "go-carpet"
  end
end
