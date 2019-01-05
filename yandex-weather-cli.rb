class YandexWeatherCli < Formula
  homepage "https://github.com/msoap/yandex-weather-cli"
  desc "☀️ ⛅️ ❄️ Command line interface for Yandex weather service\n\n"
  version '1.12'

  if MacOS.prefer_64_bit?
    url "https://github.com/msoap/yandex-weather-cli/releases/download/1.12/yandex-weather-cli-1.12.darwin.amd64.tar.gz"
    sha256 "ad6433b40a1df0338a8b0a94d3649ed063a25adc9c1b78b2684f7c9496feb70b"
  else
    url "https://github.com/msoap/yandex-weather-cli/releases/download/1.12/yandex-weather-cli-1.12.darwin.386.tar.gz"
    sha256 "2718586679f6a2b59714c6399bad1b9884c0fee4fdda86c29a57e81f3befdc0e"
  end

  def install
    bin.install "yandex-weather-cli"
    man1.install "yandex-weather-cli.1"
  end
end
