class Html2data < Formula
  homepage "https://github.com/msoap/html2data"
  desc "Extract data from HTML via CSS selectors\n\n"
  version '1.2.1'

  if Hardware::CPU.is_64_bit?
    url "https://github.com/msoap/html2data/releases/download/v1.2.1/html2data-v1.2.1.darwin.amd64.tar.gz"
    sha256 "f1a16320a3c9d85316b452017ae75a78e9b58e6fbbf6b137b790adce17bb4e1e"
  else
    url "https://github.com/msoap/html2data/releases/download/v1.2.1/html2data-v1.2.1.darwin.386.tar.gz"
    sha256 "31b12fce8985ab904945561124c71b9b9ca13add56c6ffac26fcaba40054bbfb"
  end

  def install
    bin.install "html2data"
    man1.install "html2data.1"
  end
end
