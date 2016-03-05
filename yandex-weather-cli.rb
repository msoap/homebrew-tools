class YandexWeatherCli < Formula
  homepage "https://github.com/msoap/yandex-weather-cli"
  desc "☀️⛅️❄️ Command line interface for Yandex weather service\n\n"
  version '1.3'

  if MacOS.prefer_64_bit?
    url "https://github.com/msoap/yandex-weather-cli/releases/download/1.3/yandex-weather-cli-1.3.amd64.darwin.zip"
    sha256 "b82b05c391558f2715b17b2cc85b64f976cfcb9a53a3e6644cb9011bde50f034"
  else
    url "https://github.com/msoap/yandex-weather-cli/releases/download/1.3/yandex-weather-cli-1.3.386.darwin.zip"
    sha256 "27b28298cd2425db9e87ea95b28f361692f2418c43e84a43d2299159f3e40a97"
  end

  def install
    bin.install "yandex-weather-cli"
  end
end
