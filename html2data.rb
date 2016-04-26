class Html2data < Formula
  homepage "https://github.com/msoap/html2data"
  desc "Extract data from HTML via CSS selectors\n\n"
  version '1.1'

  if MacOS.prefer_64_bit?
    url "https://github.com/msoap/html2data/releases/download/1.1/html2data-1.1.amd64.darwin.zip"
    sha256 "48c752ccfdf883f1e9b902faae202ce748b66d4a3cbc35a8228ab51eeafc38b1"
  else
    url "https://github.com/msoap/html2data/releases/download/1.1/html2data-1.1.386.darwin.zip"
    sha256 "478e464f23779307cb42ebf4002699b18dfa14cbf41e8634d75c36ba5d58ae7e"
  end

  def install
    bin.install "html2data"
  end
end
