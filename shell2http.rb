class Shell2http < Formula
  homepage "https://github.com/msoap/shell2http"
  desc "Executing shell commands via simple http server\n\nSettings through 2 command line arguments, path and shell command.\n\n"
  version '1.11'

  if MacOS.prefer_64_bit?
    url "https://github.com/msoap/shell2http/releases/download/1.11/shell2http-1.11.darwin.amd64.tar.gz"
    sha256 "72a0546a931676533a2c1ed7e573009484c946d65337f57637a7830d3050811f"
  else
    url "https://github.com/msoap/shell2http/releases/download/1.11/shell2http-1.11.darwin.386.tar.gz"
    sha256 "106506015836c739d84e8eb4247a7b93b8601147369ad17b9a8de5f613cdd99b"
  end

  def install
    bin.install "shell2http"
    man1.install "shell2http.1"
  end
end
