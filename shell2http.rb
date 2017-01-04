class Shell2http < Formula
  homepage "https://github.com/msoap/shell2http"
  desc "Executing shell commands via simple http server\n\nSettings through 2 command line arguments, path and shell command.\n\n"
  version '1.7'

  if MacOS.prefer_64_bit?
    url "https://github.com/msoap/shell2http/releases/download/1.7/shell2http-1.7.darwin.amd64.zip"
    sha256 "b2a28d5e63c301c9d4a2a9d86f77fe450fe801ddf1055fbbcbbda4820a29bf30"
  else
    url "https://github.com/msoap/shell2http/releases/download/1.7/shell2http-1.7.darwin.386.zip"
    sha256 "cd5e8335310130d83d5e121cd9cd09817acc2b3683982cb9de687d2c62132633"
  end

  def install
    bin.install "shell2http"
  end
end
