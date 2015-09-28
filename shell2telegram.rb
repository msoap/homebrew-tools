class Shell2http < Formula
  homepage "https://github.com/msoap/shell2telegram"
  version '1.0'

  if MacOS.prefer_64_bit?
    url "https://github.com/msoap/shell2telegram/releases/download/1.0/shell2telegram-1.0.amd64.darwin.zip"
    sha256 "4b7c7270e8c29f09deccf2966e3e65b948c341dd8c52767e3908776728a08e8e"
  else
    url "https://github.com/msoap/shell2telegram/releases/download/1.0/shell2telegram-1.0.386.darwin.zip"
    sha256 "43541ea5b8567fbdf4771725d848768d827aeb4c70efaf66e85d72a7479c9bfa"
  end

  def install
    bin.install "shell2telegram"
  end
end
