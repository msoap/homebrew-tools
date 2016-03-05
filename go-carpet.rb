class GoCarpet < Formula
  homepage "https://github.com/msoap/go-carpet"
  desc "Tool for viewing test coverage for Go source files\n\nTo view the test coverage in the terminal, just run go-carpet.\n"
  version '1.2'

  if MacOS.prefer_64_bit?
    url "https://github.com/msoap/go-carpet/releases/download/1.2/go-carpet-1.2.amd64.darwin.zip"
    sha256 "796cb04d8f11bbd688735b438532f0ce5180494491e9657101ae9d14e8106a95"
  else
    url "https://github.com/msoap/go-carpet/releases/download/1.2/go-carpet-1.2.386.darwin.zip"
    sha256 "c2084810e2756ce41cb81513d7bbc177e4bce7f09d8e486bc049159a87d0752c"
  end

  def install
    bin.install "go-carpet"
  end
end
