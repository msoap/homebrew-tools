class Shell2http < Formula
  homepage "https://github.com/msoap/shell2http"
  desc "Executing shell commands via simple http server\n\nSettings through 2 command line arguments, path and shell command.\n\n"
  version '1.9'

  if MacOS.prefer_64_bit?
    url "https://github.com/msoap/shell2http/releases/download/1.9/shell2http-1.9.darwin.amd64.tar.gz"
    sha256 "97ece93fa8ad73f54c5caf5db25db443acf8086cc24863ab1be9a4a1f1d195e9"
  else
    url "https://github.com/msoap/shell2http/releases/download/1.9/shell2http-1.9.darwin.386.tar.gz"
    sha256 "80748fed02b272eeba8b6ac1bc6ff5194ddba098ae039dcc68e43dc43223fae2"
  end

  def install
    bin.install "shell2http"
    man1.install "shell2http.1"
  end
end
