class SillyEcho < Formula
  desc "Like echo but Silly"
  homepage "https://draketalley.com"
  url "https://github.com/Axylos/silly/archive/refs/tags/v0.1.1-rc.5.tar.gz"
  version "0.1.1-rc.6"
  sha256 "3801a7aee6e22716b37f95470defb2e1bfd85abc69caab21be2abd5cf86df0e9"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--path", "silly-echo", "--root", prefix
    man1.install "man/sillyecho.1"
  end

  bottle do
    sha256 cellar: :any_skip_relocation, x86_64_linux: "cdffa6091a6dc944d00a557ed990cfad18e3b71b9f6e456e614853dd3abaf561"
  end


  test do
    system "true"
  end
end
