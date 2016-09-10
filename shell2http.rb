class Shell2http < Formula
  homepage "https://github.com/msoap/shell2http"
  desc "Executing shell commands via simple http server\n\nSettings through 2 command line arguments, path and shell command.\n\n"
  version '1.6'

  if MacOS.prefer_64_bit?
    url "https://github.com/msoap/shell2http/releases/download/1.6/shell2http-1.6.amd64.darwin.zip"
    sha256 "eff8f35f25a930dc2dd6a726dcc42dea714d64ec68f313d7088a4d276d37f402"
  else
    url "https://github.com/msoap/shell2http/releases/download/1.6/shell2http-1.6.386.darwin.zip"
    sha256 "e492c81b75d4d4c57479b6ed9d751d504b25ef98a650d5a138ffbb7ea083771c"
  end

  def install
    bin.install "shell2http"
  end
end
