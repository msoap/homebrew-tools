class Shell2http < Formula
  homepage "https://github.com/msoap/shell2http"
  desc "Executing shell commands via simple http server\n\nSettings through 2 command line arguments, path and shell command.\n\n"
  version '1.16.0'

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/msoap/shell2http/releases/download/v1.16.0/shell2http_1.16.0_darwin_amd64.tar.gz"
      sha256 "b1c28e5ad3549b7c2d3c603d49698830d8ec26e5beda01519659512535ffaeda"
    elsif Hardware::CPU.arm?
      url "https://github.com/msoap/shell2http/releases/download/v1.16.0/shell2http_1.16.0_darwin_arm64.tar.gz"
      sha256 "3b59bee39c823392e3b52450e0323f76eb4ae22c91707840faca8834cbf8e288"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/msoap/shell2http/releases/download/v1.16.0/shell2http_1.16.0_linux_amd64.tar.gz"
      sha256 "2eb6dd4a59b7cec0a6e21506b48c00bb57c78229c4a2212729999ec3967e2523"
    elsif Hardware::CPU.intel? && !Hardware::CPU.is_64_bit?
      url "https://github.com/msoap/shell2http/releases/download/v1.16.0/shell2http_1.16.0_linux_386.tar.gz"
      sha256 "c30510a6010ccf1e43d95a89c57f391a15c7cb5ef09cf7cd782cbcf3c870c1ee"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/msoap/shell2http/releases/download/v1.16.0/shell2http_1.16.0_linux_arm64.tar.gz"
      sha256 "aeaad90093c724aac4c50097674553c30bf6d12b318ca8f28a95179bab20c4ff"
    elsif Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/msoap/shell2http/releases/download/v1.16.0/shell2http_1.16.0_linux_armv6.tar.gz"
      sha256 "e626560c3ac49b05194be81b3b94e22c9b5cf28f1259032c7c881bf013b3a1fc"
    end
  end

  def install
    bin.install "shell2http"
    man1.install "shell2http.1"
  end
end
