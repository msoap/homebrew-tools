class YandexWeatherCli < Formula
  homepage "https://github.com/msoap/yandex-weather-cli"
  desc "☀️ ⛅️ ❄️ Command line interface for Yandex weather service\n\n"
  version '1.9'

  if MacOS.prefer_64_bit?
    url "https://github.com/msoap/yandex-weather-cli/releases/download/1.9/yandex-weather-cli-1.9.darwin.amd64.tar.gz"
    sha256 "362accf1c6fa3b24c7c07d581a3b04c3694a63edf178b1ee5145a03e9a6b116f"
  else
    url "https://github.com/msoap/yandex-weather-cli/releases/download/1.9/yandex-weather-cli-1.9.darwin.386.tar.gz"
    sha256 "c6368ccb3df57bcb448fbed7c46fa73bf2cc48edf915b2c1e3a83aff4ffeaa12"
  end

  def install
    bin.install "yandex-weather-cli"
    man1.install "yandex-weather-cli.1"
  end
end
