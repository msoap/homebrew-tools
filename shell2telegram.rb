class Shell2telegram < Formula
  homepage "https://github.com/msoap/shell2telegram"
  desc "Create Telegram bot from command-line\n\n"
  version '1.3'

  if MacOS.prefer_64_bit?
    url "https://github.com/msoap/shell2telegram/releases/download/1.3/shell2telegram-1.3.amd64.darwin.zip"
    sha256 "43fd80d65db8b477ee4ddb6446653bfcbccb150c0023a6c3c3328cd162f3aee3"
  else
    url "https://github.com/msoap/shell2telegram/releases/download/1.3/shell2telegram-1.3.386.darwin.zip"
    sha256 "e17ff68082e42adbac2481bd978d7454b14775af7cda5d759ee677f4d877d1be"
  end

  def install
    bin.install "shell2telegram"
  end
end
