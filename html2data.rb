class Html2data < Formula
  homepage "https://github.com/msoap/html2data"
  version '1.0'

  if MacOS.prefer_64_bit?
    url "https://github.com/msoap/html2data/releases/download/1.0/html2data-1.0.amd64.darwin.zip"
    sha256 "031bb2aacd7f19cad4c3ff2f8e2e945310e042bfab1c0e9cadf3043d0d998fe7"
  else
    url "https://github.com/msoap/html2data/releases/download/1.0/html2data-1.0.386.darwin.zip"
    sha256 "fff0aa8207c51ab7fa52e74767918bb7342b911c7ce0ff4a7470a9ffdf18fa24"
  end

  def install
    bin.install "html2data"
  end
end
