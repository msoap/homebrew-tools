class Shell2http < Formula
  homepage "https://github.com/msoap/shell2http"
  desc "Executing shell commands via simple http server\n\nSettings through 2 command line arguments, path and shell command.\n\n"
  version '1.15.0'

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/msoap/shell2http/releases/download/v1.15.0/shell2http_1.15.0_darwin_amd64.tar.gz"
      sha256 "b016a7fd7dd52f97aa68e123dcea287e9ef982cd5ce2320cc5713cc0c17606c1"
    elsif Hardware::CPU.arm?
      url "https://github.com/msoap/shell2http/releases/download/v1.15.0/shell2http_1.15.0_darwin_arm64.tar.gz"
      sha256 "9c3332bc52f968bc95651620be9a2d34ae881e42e0ca3fa2df1db5c03d6d2398"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/msoap/shell2http/releases/download/v1.15.0/shell2http_1.15.0_linux_amd64.tar.gz"
      sha256 "e807ec671d8297d7ca72ce2666ddddc7798793bd4dc107ebf1c7c98ae80c3f17"
    elsif Hardware::CPU.intel? && !Hardware::CPU.is_64_bit?
      url "https://github.com/msoap/shell2http/releases/download/v1.15.0/shell2http_1.15.0_linux_386.tar.gz"
      sha256 "184425cc3073885e0f7c4b4a6d4a9a8c2ee6275985432c94815db1bccd96e915"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/msoap/shell2http/releases/download/v1.15.0/shell2http_1.15.0_linux_arm64.tar.gz"
      sha256 "22e7e323fe4b2171a0a797d3b277b1b325a29ecf1a9a7422643c932e7ebdbf19"
    elsif Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/msoap/shell2http/releases/download/v1.15.0/shell2http_1.15.0_linux_armv6.tar.gz"
      sha256 "94a0ed81173e86c7f64fd1f1674d52a4cac1a4721d42f29e58926655c63fb598"
    end
  end

  def install
    bin.install "shell2http"
    man1.install "shell2http.1"
  end
end
