class Shell2http < Formula
  homepage "https://github.com/msoap/shell2http"
  desc "Executing shell commands via simple http server\n\nSettings through 2 command line arguments, path and shell command.\n\n"
  version '1.8'

  if MacOS.prefer_64_bit?
    url "https://github.com/msoap/shell2http/releases/download/1.8/shell2http-1.8.darwin.amd64.tar.gz"
    sha256 "cf6bcdd457a1232d76fa152dfc2f1985520502eec87a46e3b51d0e72d78abc2e"
  else
    url "https://github.com/msoap/shell2http/releases/download/1.8/shell2http-1.8.darwin.386.tar.gz"
    sha256 "8401194379969e6a2d42ae13ad0447ea7ef3444805f7dcb5ef3568920eaf2a44"
  end

  def install
    bin.install "shell2http"
    man1.install "shell2http.1"
  end
end
