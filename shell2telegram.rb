class Shell2telegram < Formula
  homepage "https://github.com/msoap/shell2telegram"
  desc "Create Telegram bot from command-line\n\n"
  version '1.9.0'

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/msoap/shell2telegram/releases/download/v1.9.0/shell2telegram_1.9.0_darwin_amd64.tar.gz"
      sha256 "b630a9ba91927c40d23c79324b2ea17e0c4e07c5d185ec1385f0f66acb6e1426"
    elsif Hardware::CPU.arm?
      url "https://github.com/msoap/shell2telegram/releases/download/v1.9.0/shell2telegram_1.9.0_darwin_arm64.tar.gz"
      sha256 "700d0f4bf99a3a0ee6b2d534690cdda27850ae1dae695c2e5847555cdc405dba"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/msoap/shell2telegram/releases/download/v1.9.0/shell2telegram_1.9.0_linux_amd64.tar.gz"
      sha256 "b5028d5f83b545b101783b50829feda59a8ef0b25720faf972e991d2cdd71f81"
    elsif Hardware::CPU.intel? && !Hardware::CPU.is_64_bit?
      url "https://github.com/msoap/shell2telegram/releases/download/v1.9.0/shell2telegram_1.9.0_linux_386.tar.gz"
      sha256 "5a0ff3cff9b8d74193c54576f76ed6193a4c2eea30c2fea4afaf3f7be9ffba5c"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/msoap/shell2telegram/releases/download/v1.9.0/shell2telegram_1.9.0_linux_arm64.tar.gz"
      sha256 "2260e7c4ad40513a8272895c7a22e45b19ba8a458112fdeed40064893cf28df7"
    elsif Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/msoap/shell2telegram/releases/download/v1.9.0/shell2telegram_1.9.0_linux_armv6.tar.gz"
      sha256 "0bce40afb717f19013277b64c965ce69e71730913a02b40f5d04b24abba06ed3"
    end
  end

  def install
    bin.install "shell2telegram"
    man1.install "shell2telegram.1"
  end
end
