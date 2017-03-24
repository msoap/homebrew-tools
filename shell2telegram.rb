class Shell2telegram < Formula
  homepage "https://github.com/msoap/shell2telegram"
  desc "Create Telegram bot from command-line\n\n"
  version '1.4'

  if MacOS.prefer_64_bit?
    url "https://github.com/msoap/shell2telegram/releases/download/1.4/shell2telegram-1.4.darwin.amd64.tar.gz"
    sha256 "07f7b4b5c4e5582d4653764e39c1c14d696df144216b49499ef52cd942ee4392"
  else
    url "https://github.com/msoap/shell2telegram/releases/download/1.4/shell2telegram-1.4.darwin.386.tar.gz"
    sha256 "aefb898e6a328755209b299a01156c49c22f0cbf351e5987c23839b6ce9ceee4"
  end

  def install
    bin.install "shell2telegram"
    man1.install "shell2telegram.1"
  end
end
