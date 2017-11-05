class Shell2telegram < Formula
  homepage "https://github.com/msoap/shell2telegram"
  desc "Create Telegram bot from command-line\n\n"
  version '1.7'

  if MacOS.prefer_64_bit?
    url "https://github.com/msoap/shell2telegram/releases/download/1.7/shell2telegram-1.7.darwin.amd64.tar.gz"
    sha256 "7e5298684a010cc9987b755e6e2864cb982718e41143015cb88d5bfcba8bd6da"
  else
    url "https://github.com/msoap/shell2telegram/releases/download/1.7/shell2telegram-1.7.darwin.386.tar.gz"
    sha256 "7346ce23703f0cac0f3a19ecc8e9158c8750030483bb99f0f5cc81540513faa8"
  end

  def install
    bin.install "shell2telegram"
    man1.install "shell2telegram.1"
  end
end
