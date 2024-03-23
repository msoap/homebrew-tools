class Shell2http < Formula
  homepage "https://github.com/msoap/shell2http"
  desc "Executing shell commands via simple http server\n\nSettings through 2 command line arguments, path and shell command.\n\n"
  version '1.17.0'

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/msoap/shell2http/releases/download/v1.17.0/shell2http_1.17.0_darwin_amd64.tar.gz"
      sha256 "31b2aed761b207b4578d85e103d070259d030dc709bd728fb369f02920f65512"
    elsif Hardware::CPU.arm?
      url "https://github.com/msoap/shell2http/releases/download/v1.17.0/shell2http_1.17.0_darwin_arm64.tar.gz"
      sha256 "14f96ca151f70825c8183e2220812a35c39bbe2137cbf6f20e12ef5fdc927491"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/msoap/shell2http/releases/download/v1.17.0/shell2http_1.17.0_linux_amd64.tar.gz"
      sha256 "14b314a501bafa4c3819822fb0bdd1c6d8423ec495432116af184ebfdec3b296"
    elsif Hardware::CPU.intel? && !Hardware::CPU.is_64_bit?
      url "https://github.com/msoap/shell2http/releases/download/v1.17.0/shell2http_1.17.0_linux_386.tar.gz"
      sha256 "23720b2b1df8372c6906a4488620853479cd6efbefa757653a4717ba9a973fb1"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/msoap/shell2http/releases/download/v1.17.0/shell2http_1.17.0_linux_arm64.tar.gz"
      sha256 "f0a5ac070e32c2654283683f1553d9d9a64b2f5de65418e099a31311f8ff4e64"
    elsif Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/msoap/shell2http/releases/download/v1.17.0/shell2http_1.17.0_linux_armv6.tar.gz"
      sha256 "8abe909481f3b21e59a73283cc7aaf5ec654823bde2c07afc474a8db8095f3e5"
    end
  end

  def install
    bin.install "shell2http"
    man1.install "shell2http.1"
  end
end
