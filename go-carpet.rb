class GoCarpet < Formula
  homepage "https://github.com/msoap/go-carpet"
  desc "Tool for viewing test coverage for Go source files\n\nTo view the test coverage in the terminal, just run go-carpet.\n\n"
  version '1.9.0'

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/msoap/go-carpet/releases/download/v1.9.0/go-carpet_1.9.0_darwin_amd64.tar.gz"
      sha256 "ba6f71852bc32f3d554b106d8f0765616b1ea34c38f0a52d5c86f10e553d4f8b"
    elsif Hardware::CPU.arm?
      url "https://github.com/msoap/go-carpet/releases/download/v1.9.0/go-carpet_1.9.0_darwin_arm64.tar.gz"
      sha256 "e8c772e521cf9d25313c963ae0f2dfb49752c6233cf0c7ad99247a94771ebf2a"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/msoap/go-carpet/releases/download/v1.9.0/go-carpet_1.9.0_linux_amd64.tar.gz"
      sha256 "ba132adeb5f6425eb04355cca016b8277e7cdada12a5b8aee47d9ab81f8ba0e7"
    elsif Hardware::CPU.intel? && !Hardware::CPU.is_64_bit?
      url "https://github.com/msoap/go-carpet/releases/download/v1.9.0/go-carpet_1.9.0_linux_386.tar.gz"
      sha256 "48bc78aaf5b2d3e482659eb46dc8599412c7404446bfeec4d2e3503f191ed035"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/msoap/go-carpet/releases/download/v1.9.0/go-carpet_1.9.0_linux_arm64.tar.gz"
      sha256 "0e866b9e6cf8505ecbb885de66ce8e4af067974f76c148fcd29ca08e60f4d460"
    elsif Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/msoap/go-carpet/releases/download/v1.9.0/go-carpet_1.9.0_linux_armv6.tar.gz"
      sha256 "0aacd84aa5dcc74c23cf0486fb1b71077a62277978745d08c9e6b24c7044b247"
    end
  end

  def install
    bin.install "go-carpet"
    man1.install "go-carpet.1"
  end
end
