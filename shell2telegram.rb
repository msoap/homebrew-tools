class Shell2telegram < Formula
  homepage "https://github.com/msoap/shell2telegram"
  desc "Create Telegram bot from command-line\n\n"
  version '1.2'

  if MacOS.prefer_64_bit?
    url "https://github.com/msoap/shell2telegram/releases/download/1.2/shell2telegram-1.2.amd64.darwin.zip"
    sha256 "4c11d526df0587872469c04291cc5094c72f65887ae91eb6c40e9a6f3bc592a2"
  else
    url "https://github.com/msoap/shell2telegram/releases/download/1.2/shell2telegram-1.2.386.darwin.zip"
    sha256 "4c25db3f823c2c4488198d1f9cd74e651f49ad4f32d7db9ecc36488482d54b3f"
  end

  def install
    bin.install "shell2telegram"
  end
end
