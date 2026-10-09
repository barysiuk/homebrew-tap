class Quorum < Formula
  desc "Command-line interface for Quorum document review and spaces"
  homepage "https://quorum.md"
  url "https://registry.npmjs.org/@quorum-md/cli/-/cli-0.5.1.tgz"
  sha256 "c71f07613dea941b2f80c03e46e481aff9797e82a426b475b2caf1265e1274c6"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match "0.5.1", shell_output("#{bin}/quorum --version")
    assert_match '"version": "0.5.1"', shell_output("#{bin}/quorum --json version")
  end
end
