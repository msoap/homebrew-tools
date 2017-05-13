class Shell2telegram < Formula
  homepage "https://github.com/msoap/shell2telegram"
  desc "Create Telegram bot from command-line\n\n"
  version '1.6'

  if MacOS.prefer_64_bit?
    url "https://github.com/msoap/shell2telegram/releases/download/1.6/shell2telegram-1.6.darwin.amd64.tar.gz"
    sha256 "884da4d7906e59072811c3d8bcb1e702f487a84f7126245ef2ef4d8b7670a4aa"
  else
    url "https://github.com/msoap/shell2telegram/releases/download/1.6/shell2telegram-1.6.darwin.386.tar.gz"
    sha256 "4fe2720fb38d2adca9b18c69da000968e5f5aa05018f888d9f714944e0793794"
  end

  def install
    bin.install "shell2telegram"
    man1.install "shell2telegram.1"
  end
end
