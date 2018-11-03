class Shell2telegram < Formula
  homepage "https://github.com/msoap/shell2telegram"
  desc "Create Telegram bot from command-line\n\n"
  version '1.8'

  if MacOS.prefer_64_bit?
    url "https://github.com/msoap/shell2telegram/releases/download/1.8/shell2telegram-1.8.darwin.amd64.tar.gz"
    sha256 "2c72b4b9629b65f1433fc828b766e7dc9886b5f95b4ea906b367dff7369b66f7"
  else
    url "https://github.com/msoap/shell2telegram/releases/download/1.8/shell2telegram-1.8.darwin.386.tar.gz"
    sha256 "fa1463565238b144fff75ad71a3f7441dc5fc64e87798eb58e6ee433f57f91cd"
  end

  def install
    bin.install "shell2telegram"
    man1.install "shell2telegram.1"
  end
end
