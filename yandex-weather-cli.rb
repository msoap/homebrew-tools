class YandexWeatherCli < Formula
  homepage "https://github.com/msoap/yandex-weather-cli"
  desc "☀️ ⛅️ ❄️ Command line interface for Yandex weather service\n\n"
  version '1.15'

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/msoap/yandex-weather-cli/releases/download/v1.15/yandex-weather-cli_1.15_darwin_amd64.tar.gz"
      sha256 "ae9ced91784803021e9cade70e0927a5e2176229cd477a1c0475a715827cd029"
    elsif Hardware::CPU.arm?
      url "https://github.com/msoap/yandex-weather-cli/releases/download/v1.15/yandex-weather-cli_1.15_darwin_arm64.tar.gz"
      sha256 "f92e59c7dcf9041e79bc6232f58fc6479927e54edca40308aad6a4d57f7092ca"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/msoap/yandex-weather-cli/releases/download/v1.15/yandex-weather-cli_1.15_linux_amd64.tar.gz"
      sha256 "ff6f308dbb8ba9bdd17fdd94f1925a3901b1d49d01d3daa90771b60c3868a135"
    elsif Hardware::CPU.intel? && !Hardware::CPU.is_64_bit?
      url "https://github.com/msoap/yandex-weather-cli/releases/download/v1.15/yandex-weather-cli_1.15_linux_386.tar.gz"
      sha256 "18e79b63318d25edb4ff67894e166da944b764d3a5e8136f47f7857c488262a9"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/msoap/yandex-weather-cli/releases/download/v1.15/yandex-weather-cli_1.15_linux_arm64.tar.gz"
      sha256 "c0e992573b88402eef82dfaf6f7a27444929302ecd4eada4f65c905e8d722681"
    elsif Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/msoap/yandex-weather-cli/releases/download/v1.15/yandex-weather-cli_1.15_linux_armv6.tar.gz"
      sha256 "640598147bcd2a862be947544b939c01017f03f7d52f220202cfaf503eae854b"
    end
  end

  def install
    bin.install "yandex-weather-cli"
    man1.install "yandex-weather-cli.1"
  end
end
