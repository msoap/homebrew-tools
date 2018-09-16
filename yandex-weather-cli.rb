class YandexWeatherCli < Formula
  homepage "https://github.com/msoap/yandex-weather-cli"
  desc "☀️ ⛅️ ❄️ Command line interface for Yandex weather service\n\n"
  version '1.11'

  if MacOS.prefer_64_bit?
    url "https://github.com/msoap/yandex-weather-cli/releases/download/1.11/yandex-weather-cli-1.11.darwin.amd64.tar.gz"
    sha256 "7b4ac988ac93d7e2f2c49af5d86c99c339ea23fa43902ad6ef8bef4c6e9ccc77"
  else
    url "https://github.com/msoap/yandex-weather-cli/releases/download/1.11/yandex-weather-cli-1.11.darwin.386.tar.gz"
    sha256 "da82b4a9ab8e913d251f41d4a4984bc4e1212fcc9f0f14a5661291186849565e"
  end

  def install
    bin.install "yandex-weather-cli"
    man1.install "yandex-weather-cli.1"
  end
end
