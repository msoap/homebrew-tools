class YandexWeatherCli < Formula
  homepage "https://github.com/msoap/yandex-weather-cli"
  desc "☀️ ⛅️ ❄️ Command line interface for Yandex weather service\n\n"
  version '1.8'

  if MacOS.prefer_64_bit?
    url "https://github.com/msoap/yandex-weather-cli/releases/download/1.8/yandex-weather-cli-1.8.darwin.amd64.tar.gz"
    sha256 "fdca9a65216d8fe27b6bad85323998a9a981afb755402b215ea462d9ae43f5e2"
  else
    url "https://github.com/msoap/yandex-weather-cli/releases/download/1.8/yandex-weather-cli-1.8.darwin.386.tar.gz"
    sha256 "ef5f733377fbaa131e3ff17b1dd8aeb451bffcc1e2634c6a7f7a67251b00b201"
  end

  def install
    bin.install "yandex-weather-cli"
    man1.install "yandex-weather-cli.1"
  end
end
