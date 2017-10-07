class YandexWeatherCli < Formula
  homepage "https://github.com/msoap/yandex-weather-cli"
  desc "☀️ ⛅️ ❄️ Command line interface for Yandex weather service\n\n"
  version '1.10'

  if MacOS.prefer_64_bit?
    url "https://github.com/msoap/yandex-weather-cli/releases/download/1.10/yandex-weather-cli-1.10.darwin.amd64.tar.gz"
    sha256 "ad74034302a7e8fa7c14c83dbdb1446cc3f5db43327a99d54923a412e0c65b34"
  else
    url "https://github.com/msoap/yandex-weather-cli/releases/download/1.10/yandex-weather-cli-1.10.darwin.386.tar.gz"
    sha256 "0abb0813db573d2fba88776a97a12284447edd78bce5c83732fc71e418882520"
  end

  def install
    bin.install "yandex-weather-cli"
    man1.install "yandex-weather-cli.1"
  end
end
