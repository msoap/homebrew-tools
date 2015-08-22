class YandexWeatherCli < Formula
  homepage "https://github.com/msoap/yandex-weather-cli"
  version '1.1'

  if MacOS.prefer_64_bit?
    url "https://github.com/msoap/yandex-weather-cli/releases/download/1.1/yandex-weather-cli-1.1.amd64.darwin.zip"
    sha256 "fbb86b726072ca91f78e8a7d1c4e607452cea5fa994cad139e9eb2e76b0c131d"
  else
    url "https://github.com/msoap/yandex-weather-cli/releases/download/1.1/yandex-weather-cli-1.1.386.darwin.zip"
    sha256 "7e47bfbc4ffd2ac367e9e6bc81ad918c0c59bc79512f30f4c633ade64d3215d0"
  end

  def install
    bin.install "yandex-weather-cli"
  end
end
