class Html2data < Formula
  homepage "https://github.com/msoap/html2data"
  desc "Extract data from HTML via CSS selectors\n\n"
  version '1.2.3'

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/msoap/html2data/releases/download/v1.2.3/html2data_1.2.3_darwin_amd64.tar.gz"
      sha256 "4959b4d352f9fa9ca191a7a21df9a14d46fa0edd15d0d1b05f52eedd7794fa50"
    elsif Hardware::CPU.arm?
      url "https://github.com/msoap/html2data/releases/download/v1.2.3/html2data_1.2.3_darwin_arm64.tar.gz"
      sha256 "a3d9c57bb767bb866b4655de8d71d8695d89d7919ca27cd60cbcf0a480eb34a8"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/msoap/html2data/releases/download/v1.2.3/html2data_1.2.3_linux_amd64.tar.gz"
      sha256 "f0e6a9bd09138bbf04fdb4cdcf28012a940b61d42ecf5c2b69a89d07654d3232"
    elsif Hardware::CPU.intel? && !Hardware::CPU.is_64_bit?
      url "https://github.com/msoap/html2data/releases/download/v1.2.3/html2data_1.2.3_linux_386.tar.gz"
      sha256 "bcd390b4ce434c2a63d24a43fa52b45a6c0d4ee9b0063aabb91745e8b14c9366"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/msoap/html2data/releases/download/v1.2.3/html2data_1.2.3_linux_arm64.tar.gz"
      sha256 "151c59271bd976b30cd8b839b081471efa15d87846e47590d27bfe06fbba989a"
    elsif Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/msoap/html2data/releases/download/v1.2.3/html2data_1.2.3_linux_armv6.tar.gz"
      sha256 "8359343b87e282d51bb6ca3fc9a27645085cec81fcf0ad43a72b04500a8bf266"
    end
  end

  def install
    bin.install "html2data"
    man1.install "html2data.1"
  end
end
