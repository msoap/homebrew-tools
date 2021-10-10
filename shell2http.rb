class Shell2http < Formula
  homepage "https://github.com/msoap/shell2http"
  desc "Executing shell commands via simple http server\n\nSettings through 2 command line arguments, path and shell command.\n\n"
  version '1.14.1'

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/msoap/shell2http/releases/download/v1.14.1/shell2http_1.14.1_darwin_amd64.tar.gz"
      sha256 "9d467e3b3f2f8a69b1755fe10b205fa2419642bd1eb89d9533d7265bfe4259b6"
    elsif Hardware::CPU.arm?
      url "https://github.com/msoap/shell2http/releases/download/v1.14.1/shell2http_1.14.1_darwin_arm64.tar.gz"
      sha256 "92080e0ead1e3be8c78733a5ce8e7a8dcba2fe69bf7c270ee78dda594209adad"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/msoap/shell2http/releases/download/v1.14.1/shell2http_1.14.1_linux_amd64.tar.gz"
      sha256 "cbd16aadcb627ae98630aa680407a53e79330f228a890f11b4a7ab4faf1b65e5"
    elsif Hardware::CPU.intel? && !Hardware::CPU.is_64_bit?
      url "https://github.com/msoap/shell2http/releases/download/v1.14.1/shell2http_1.14.1_linux_386.tar.gz"
      sha256 "2fcce3249c6dd2d936ba01fe9269f8e1eef72e0df9d2b197647410ae3ec99b0e"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/msoap/shell2http/releases/download/v1.14.1/shell2http_1.14.1_linux_arm64.tar.gz"
      sha256 "3d90aadd9538303c67f0ec26cf1a571183fe2e111364f659a41def9239a3ab68"
    elsif Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/msoap/shell2http/releases/download/v1.14.1/shell2http_1.14.1_linux_armv6.tar.gz"
      sha256 "fbda5cba8ed35c84cb1e06eb8c1b52d2688833902c066439e1ea8f619bde70b6"
    end
  end

  def install
    bin.install "shell2http"
    man1.install "shell2http.1"
  end
end
