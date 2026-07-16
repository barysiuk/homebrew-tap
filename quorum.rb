class Quorum < Formula
  desc "Command-line interface for Quorum document review and spaces"
  homepage "https://quorum.md"
  url "https://registry.npmjs.org/@quorum-md/cli/-/cli-0.4.0.tgz"
  sha256 "d62b62826170eb686402c4dffe84fab6532ffb8e0ca188f225eeae64c38f7ae1"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match "0.4.0", shell_output("#{bin}/quorum --version")
    assert_match '"version": "0.4.0"', shell_output("#{bin}/quorum --json version")
  end
end
