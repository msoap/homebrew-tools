class Shell2telegram < Formula
  homepage "https://github.com/msoap/shell2telegram"
  version '1.1'

  if MacOS.prefer_64_bit?
    url "https://github.com/msoap/shell2telegram/releases/download/1.1/shell2telegram-1.1.amd64.darwin.zip"
    sha256 "15cb1a89b3b24183e9bdcbc11ca96b624826ccbac4d35242e0ffc7a4b6f0d134"
  else
    url "https://github.com/msoap/shell2telegram/releases/download/1.1/shell2telegram-1.1.386.darwin.zip"
    sha256 "313ef02473fef2358f2c86d7ee8c0356a26cb3b07c0843e895e936186d3b3ef5"
  end

  def install
    bin.install "shell2telegram"
  end
end
