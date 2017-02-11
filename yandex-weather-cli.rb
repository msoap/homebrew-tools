class YandexWeatherCli < Formula
  homepage "https://github.com/msoap/yandex-weather-cli"
  desc "☀️ ⛅️ ❄️ Command line interface for Yandex weather service\n\n"
  version '1.7'

  if MacOS.prefer_64_bit?
    url "https://github.com/msoap/yandex-weather-cli/releases/download/1.7/yandex-weather-cli-1.7.darwin.amd64.tar.gz"
    sha256 "3097ee5bd5b18c8f651bc88c98bbd8b8a098044817bd0700cdaf6828ef03365d"
  else
    url "https://github.com/msoap/yandex-weather-cli/releases/download/1.7/yandex-weather-cli-1.7.darwin.386.tar.gz"
    sha256 "adbf414315fef99e5c181742738bee3d2dfdb27dd6c15fffbc079ad5a33f899e"
  end

  def install
    bin.install "yandex-weather-cli"
    man1.install "yandex-weather-cli.1"
  end
end
