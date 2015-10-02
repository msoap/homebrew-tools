class YandexWeatherCli < Formula
  homepage "https://github.com/msoap/yandex-weather-cli"
  version '1.2'

  if MacOS.prefer_64_bit?
    url "https://github.com/msoap/yandex-weather-cli/releases/download/1.2/yandex-weather-cli-1.2.amd64.darwin.zip"
    sha256 "b478063de7d5e4f87cbad6c2c1a24dc67656a859e701523e0ff070861716d467"
  else
    url "https://github.com/msoap/yandex-weather-cli/releases/download/1.2/yandex-weather-cli-1.2.386.darwin.zip"
    sha256 "3fd8b1c942c72926bf9826f1ef38699ffbb2cc8db10093ec1ee7f2e818506132"
  end

  def install
    bin.install "yandex-weather-cli"
  end
end
