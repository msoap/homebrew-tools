class YandexWeatherCli < Formula
  homepage "https://github.com/msoap/yandex-weather-cli"
  desc "☀️ ⛅️ ❄️ Command line interface for Yandex weather service\n\n"
  version '1.5'

  if MacOS.prefer_64_bit?
    url "https://github.com/msoap/yandex-weather-cli/releases/download/1.5/yandex-weather-cli-1.5.amd64.darwin.zip"
    sha256 "5f7a379ae979687266e3ebd63a70371c97daa50b3e65a22874e9b890d03a0ca6"
  else
    url "https://github.com/msoap/yandex-weather-cli/releases/download/1.5/yandex-weather-cli-1.5.386.darwin.zip"
    sha256 "795f2dfe0d2dd1b927d8e1cd7cbc1782ada61bcc31456e11aad0c94c326c5a11"
  end

  def install
    bin.install "yandex-weather-cli"
  end
end
