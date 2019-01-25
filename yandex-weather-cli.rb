class YandexWeatherCli < Formula
  homepage "https://github.com/msoap/yandex-weather-cli"
  desc "☀️ ⛅️ ❄️ Command line interface for Yandex weather service\n\n"
  version '1.13'

  if Hardware::CPU.is_64_bit?
    url "https://github.com/msoap/yandex-weather-cli/releases/download/1.13/yandex-weather-cli-1.13.darwin.amd64.tar.gz"
    sha256 "3a46e9788424540a0f13aa039b0d53779fe24ca59a93b77d766e315609618d27"
  else
    url "https://github.com/msoap/yandex-weather-cli/releases/download/1.13/yandex-weather-cli-1.13.darwin.386.tar.gz"
    sha256 "d42d4ab2e6d2b1805829f5d5d383eb2d644ba35c0dff780031a3555ba24336eb"
  end

  def install
    bin.install "yandex-weather-cli"
    man1.install "yandex-weather-cli.1"
  end
end
