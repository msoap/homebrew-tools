class Shell2http < Formula
  homepage "https://github.com/msoap/shell2http"
  desc "Executing shell commands via simple http server\n\nSettings through 2 command line arguments, path and shell command.\n\n"
  version '1.13'

  if MacOS.prefer_64_bit?
    url "https://github.com/msoap/shell2http/releases/download/1.13/shell2http-1.13.darwin.amd64.tar.gz"
    sha256 "42b8c9dfd2e25443923fa085a9f1e113e71d1742bedac624bb8b8771c8b961f6"
  else
    url "https://github.com/msoap/shell2http/releases/download/1.13/shell2http-1.13.darwin.386.tar.gz"
    sha256 "bd4c353759d7e0e2cf078fdee46cbeb814b85bd14fff9854b7ff25a74218e99a"
  end

  def install
    bin.install "shell2http"
    man1.install "shell2http.1"
  end
end
