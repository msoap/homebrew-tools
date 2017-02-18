class Html2data < Formula
  homepage "https://github.com/msoap/html2data"
  desc "Extract data from HTML via CSS selectors\n\n"
  version '1.2'

  if MacOS.prefer_64_bit?
    url "https://github.com/msoap/html2data/releases/download/1.2/html2data-1.2.darwin.amd64.tar.gz"
    sha256 "c4d046dccbc35efbe8c9d64c412512e3028de3108206fee0f304ada5a19ff410"
  else
    url "https://github.com/msoap/html2data/releases/download/1.2/html2data-1.2.darwin.386.tar.gz"
    sha256 "031df47850a2d038c45d40582b6e3ebd11eab80ff1fb4d3b16d8a620b81f906b"
  end

  def install
    bin.install "html2data"
    man1.install "html2data.1"
  end
end
