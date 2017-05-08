class Shell2http < Formula
  homepage "https://github.com/msoap/shell2http"
  desc "Executing shell commands via simple http server\n\nSettings through 2 command line arguments, path and shell command.\n\n"
  version '1.10'

  if MacOS.prefer_64_bit?
    url "https://github.com/msoap/shell2http/releases/download/1.10/shell2http-1.10.darwin.amd64.tar.gz"
    sha256 "9ed8ef4aedc74c07bffb82b9a7e5143daedb314fc680357338833c31fa02edc6"
  else
    url "https://github.com/msoap/shell2http/releases/download/1.10/shell2http-1.10.darwin.386.tar.gz"
    sha256 "14bf909169a9b30f380b73d920d6e8961fa22dfff8a411b3612c0c2740375e56"
  end

  def install
    bin.install "shell2http"
    man1.install "shell2http.1"
  end
end
