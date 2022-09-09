class Esh < Formula
  desc "Simple templating engine based on shell"
  homepage "https://github.com/jirutka/esh"
  url "https://github.com/jirutka/esh/archive/refs/tags/v0.3.2.tar.gz"
  sha256 "4103b8901c7346f5dd608f2aa272d23c259434f825e6f39b2fb642157d6a2a7c"
  license "MIT"

  depends_on "asciidoctor" => :build

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "#{bin}/esh", "-V"
  end
end
