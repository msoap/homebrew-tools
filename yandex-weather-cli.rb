class YandexWeatherCli < Formula
  homepage "https://github.com/msoap/yandex-weather-cli"
  desc "☀️ ⛅️ ❄️ Command line interface for Yandex weather service\n\n"
  version '1.4'

  if MacOS.prefer_64_bit?
    url "https://github.com/msoap/yandex-weather-cli/releases/download/1.4/yandex-weather-cli-1.4.amd64.darwin.zip"
    sha256 "0836656d8af88372c2af3b7c03d6fcd467ac47135d1ef3b0649ece8e3de8efe7"
  else
    url "https://github.com/msoap/yandex-weather-cli/releases/download/1.4/yandex-weather-cli-1.4.386.darwin.zip"
    sha256 "bd2e3031694f27767082061d36bc538a71a140d09041e0c60e979928a879000e"
  end

  def install
    bin.install "yandex-weather-cli"
  end
end
