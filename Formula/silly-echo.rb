class SillyEcho < Formula
  desc "Like echo but Silly"
  homepage "https://draketalley.com"
  url "https://github.com/Axylos/silly/archive/refs/tags/v0.1.1-rc.2.tar.gz"
  version "0.1.1-rc.6"
  sha256 "3801a7aee6e22716b37f95470defb2e1bfd85abc69caab21be2abd5cf86df0e9"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--path", "silly-echo", "--root", prefix
    man1.install "man/sillyecho.1"
  end

  test do
    system "true"
  end
end