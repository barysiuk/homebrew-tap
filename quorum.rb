class Quorum < Formula
  desc "Command-line interface for Quorum document review and spaces"
  homepage "https://quorum.md"
  url "https://registry.npmjs.org/@quorum-md/cli/-/cli-0.1.1.tgz"
  sha256 "e9be44cc5e80c1f76d411066760b60a5748ffe7928c3983262e2d9a43a94571c"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match "0.1.1", shell_output("#{bin}/quorum --version")
    assert_match '"version": "0.1.1"', shell_output("#{bin}/quorum --json version")
  end
end
