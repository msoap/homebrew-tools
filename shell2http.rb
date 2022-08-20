class Shell2http < Formula
  homepage "https://github.com/msoap/shell2http"
  desc "Executing shell commands via simple http server\n\nSettings through 2 command line arguments, path and shell command.\n\n"
  version '1.14.2'

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/msoap/shell2http/releases/download/v1.14.2/shell2http_1.14.2_darwin_amd64.tar.gz"
      sha256 "5a2b96ab1065cceb0c35b1c4b259f144a7502992d4078d6d65214dd881bf5208"
    elsif Hardware::CPU.arm?
      url "https://github.com/msoap/shell2http/releases/download/v1.14.2/shell2http_1.14.2_darwin_arm64.tar.gz"
      sha256 "4da3ed7e05449bfd3ee2bf4c16fcf775f3b9a9c530430ef9ce22c1f265280acf"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/msoap/shell2http/releases/download/v1.14.2/shell2http_1.14.2_linux_amd64.tar.gz"
      sha256 "4708b1f89599f1bcd7aabd5e6a2843b2ed3580be207673b604f964b5d20cd3b5"
    elsif Hardware::CPU.intel? && !Hardware::CPU.is_64_bit?
      url "https://github.com/msoap/shell2http/releases/download/v1.14.2/shell2http_1.14.2_linux_386.tar.gz"
      sha256 "42bea76cd6191abb9ac4a9ee685fe7e51e034f3fad68bc4349f4be7019d7ec15"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/msoap/shell2http/releases/download/v1.14.2/shell2http_1.14.2_linux_arm64.tar.gz"
      sha256 "97d16ca853e97ae25e766466b53048db29a1681197f458a990e697a5d31e2c93"
    elsif Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/msoap/shell2http/releases/download/v1.14.2/shell2http_1.14.2_linux_armv6.tar.gz"
      sha256 "630a459619b864c7dcbba9447efe5fa83bf081f9f78f554c11792ca0ea06e34d"
    end
  end

  def install
    bin.install "shell2http"
    man1.install "shell2http.1"
  end
end
