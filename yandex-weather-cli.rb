class YandexWeatherCli < Formula
  homepage "https://github.com/msoap/yandex-weather-cli"
  desc "☀️ ⛅️ ❄️ Command line interface for Yandex weather service\n\n"
  version '1.14'

  if Hardware::CPU.is_64_bit?
    url "https://github.com/msoap/yandex-weather-cli/releases/download/v1.14/yandex-weather-cli-v1.14.darwin.amd64.tar.gz"
    sha256 "164fa62a8d27a3b119b28f203c156298f633330ce2adb43945835dcb5ab9770d"
  else
    url "https://github.com/msoap/yandex-weather-cli/releases/download/v1.14/yandex-weather-cli-v1.14.darwin.386.tar.gz"
    sha256 "476aa0bd3ce5067c3c62f533580f8292de64c2875c491cc0f67f8435e3942692"
  end

  def install
    bin.install "yandex-weather-cli"
    man1.install "yandex-weather-cli.1"
  end
end
