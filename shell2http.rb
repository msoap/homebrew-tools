class Shell2http < Formula
  homepage "https://github.com/msoap/shell2http"
  desc "Executing shell commands via simple http server\n\nSettings through 2 command line arguments, path and shell command.\n\n"
  version '1.16.0'

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/msoap/shell2http/releases/download/v1.16.0/shell2http_1.16.0_darwin_amd64.tar.gz"
      sha256 "371b152ce03f5ef3f0fab40f9874d9dbece94f337908c0059254732a99146631"
    elsif Hardware::CPU.arm?
      url "https://github.com/msoap/shell2http/releases/download/v1.16.0/shell2http_1.16.0_darwin_arm64.tar.gz"
      sha256 "0f11e6f6962d091d17af231e752f54a07e722d5941c51c8b9fa25eb318cb54ff"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/msoap/shell2http/releases/download/v1.16.0/shell2http_1.16.0_linux_amd64.tar.gz"
      sha256 "82881123f9f027648e67904cef616729e693f12b09c917e41cf9566e9c337a03"
    elsif Hardware::CPU.intel? && !Hardware::CPU.is_64_bit?
      url "https://github.com/msoap/shell2http/releases/download/v1.16.0/shell2http_1.16.0_linux_386.tar.gz"
      sha256 "9c270f0cb657d9b7df36f6dacb308f243cf9a7577aeb65c5ca266995b1856629"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/msoap/shell2http/releases/download/v1.16.0/shell2http_1.16.0_linux_arm64.tar.gz"
      sha256 "7169ae141c0d1e3f1036c2a6b3546907ef5c1836e8d9ae276a6acb46bb9ae567"
    elsif Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/msoap/shell2http/releases/download/v1.16.0/shell2http_1.16.0_linux_armv6.tar.gz"
      sha256 "8e8f838f24e79e104bc48ad7b3cf07fdb4dde7f829a5c3a09c285dce06c2cc94"
    end
  end

  def install
    bin.install "shell2http"
    man1.install "shell2http.1"
  end
end
