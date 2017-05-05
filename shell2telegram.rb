class Shell2telegram < Formula
  homepage "https://github.com/msoap/shell2telegram"
  desc "Create Telegram bot from command-line\n\n"
  version '1.5'

  if MacOS.prefer_64_bit?
    url "https://github.com/msoap/shell2telegram/releases/download/1.5/shell2telegram-1.5.darwin.amd64.tar.gz"
    sha256 "820dd215f4a2c53e6ac2a41b42bf1a0e4a0f7de4ad9d55c23d6966f9ce6ca201"
  else
    url "https://github.com/msoap/shell2telegram/releases/download/1.5/shell2telegram-1.5.darwin.386.tar.gz"
    sha256 "2cbb743fd3f02d6f1b87dc03414139f1fe0a21a41db594a82632f03b31d86c42"
  end

  def install
    bin.install "shell2telegram"
    man1.install "shell2telegram.1"
  end
end
