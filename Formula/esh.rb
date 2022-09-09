class Esh < Formula
  desc "Simple templating engine based on shell"
  homepage "https://github.com/jirutka/esh"
  url "https://github.com/jirutka/esh/archive/refs/tags/v0.3.2.tar.gz"
  sha256 "4103b8901c7346f5dd608f2aa272d23c259434f825e6f39b2fb642157d6a2a7c"
  license "MIT"

  bottle do
    root_url "https://ghcr.io/v2/nolith/stuff"
    sha256 cellar: :any_skip_relocation, big_sur:      "bd4b0b8bcd0321aa79afdbb6bafd15c9bcb2d45828a67713063aa8902a82b914"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "1c290b12139f4d1cc5a6886c60a0d404127f2ba259813b3bcc3109570e44a291"
  end

  depends_on "asciidoctor" => :build

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "#{bin}/esh", "-V"
  end
end
