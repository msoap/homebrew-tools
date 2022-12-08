class GoCarpet < Formula
  homepage "https://github.com/msoap/go-carpet"
  desc "Tool for viewing test coverage for Go source files\n\nTo view the test coverage in the terminal, just run go-carpet.\n\n"
  version '1.10.0'

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/msoap/go-carpet/releases/download/v1.10.0/go-carpet_1.10.0_darwin_amd64.tar.gz"
      sha256 "61ba55d7306694f0deced6363ed275e2339188da16ee6a71bee5a670a6357df4"
    elsif Hardware::CPU.arm?
      url "https://github.com/msoap/go-carpet/releases/download/v1.10.0/go-carpet_1.10.0_darwin_arm64.tar.gz"
      sha256 "14ec4256db17df93f13844e13c76fd86825bf45d683c7376b71a3eaf0e5b3441"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/msoap/go-carpet/releases/download/v1.10.0/go-carpet_1.10.0_linux_amd64.tar.gz"
      sha256 "319d7e116493ebda1f506fb63800f2f7bab2b5dcdc9e89caf6f7f95c1b7baa2a"
    elsif Hardware::CPU.intel? && !Hardware::CPU.is_64_bit?
      url "https://github.com/msoap/go-carpet/releases/download/v1.10.0/go-carpet_1.10.0_linux_386.tar.gz"
      sha256 "a16473eae76270f455bb7605924e21302de93a96da40a5e0c7cc8de946adaa67"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/msoap/go-carpet/releases/download/v1.10.0/go-carpet_1.10.0_linux_arm64.tar.gz"
      sha256 "89659c84e6714d846bb512c74cca6755a1e2cf3747fd6618341c4a956c12875c"
    elsif Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/msoap/go-carpet/releases/download/v1.10.0/go-carpet_1.10.0_linux_armv6.tar.gz"
      sha256 "c8024e1a3ba31d7253fdd5588179d387295cee1093fc133078d98c0200db5d10"
    end
  end

  def install
    bin.install "go-carpet"
    man1.install "go-carpet.1"
  end
end
