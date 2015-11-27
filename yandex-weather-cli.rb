class YandexWeatherCli < Formula
  homepage "https://github.com/msoap/yandex-weather-cli"
  version '1.3'

  if MacOS.prefer_64_bit?
    url "https://github.com/msoap/yandex-weather-cli/releases/download/1.3/yandex-weather-cli-1.3.amd64.darwin.zip"
    sha256 "2d9e3d2decfabf38b6db5796b7b63cd2c444aec833d20aac00c971789685fda2"
  else
    url "https://github.com/msoap/yandex-weather-cli/releases/download/1.3/yandex-weather-cli-1.3.386.darwin.zip"
    sha256 "7914be74ebba8185982af4e6ceaf7c70b1f183d35d0d4edd8b0fc7ca2fb1233a"
  end

  def install
    bin.install "yandex-weather-cli"
  end
end
