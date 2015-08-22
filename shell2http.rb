class Shell2http < Formula
  homepage "https://github.com/msoap/shell2http"
  version '1.4'

  if MacOS.prefer_64_bit?
    url "https://github.com/msoap/shell2http/releases/download/1.4/shell2http-1.4.amd64.darwin.zip"
    sha256 "e986aff9dd60da083d9f2803af37271f7e4e9f0ef5e0f22d2de768ea34058685"
  else
    url "https://github.com/msoap/shell2http/releases/download/1.4/shell2http-1.4.386.darwin.zip"
    sha256 "2026bc8731843b620cc2f8005218e324e731736be05a069f1b088b954a3b62f7"
  end

  def install
    bin.install "shell2http"
  end
end
