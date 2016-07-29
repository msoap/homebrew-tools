class Shell2http < Formula
  homepage "https://github.com/msoap/shell2http"
  desc "Executing shell commands via simple http server\n\nSettings through 2 command line arguments, path and shell command.\n\n"
  version '1.5'

  if MacOS.prefer_64_bit?
    url "https://github.com/msoap/shell2http/releases/download/1.5/shell2http-1.5.amd64.darwin.zip"
    sha256 "ae0d1f335b40940a9fe657d22825d661a5b976f63d131a99b7b1afe2583ab9fd"
  else
    url "https://github.com/msoap/shell2http/releases/download/1.5/shell2http-1.5.386.darwin.zip"
    sha256 "10cd41365e872194f52f41d810c32e4d0ed685a1d6854029eef43022f4d7e80a"
  end

  def install
    bin.install "shell2http"
  end
end
