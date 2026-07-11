class Quorum < Formula
  desc "Command-line interface for Quorum document review and spaces"
  homepage "https://quorum.md"
  url "https://registry.npmjs.org/@quorum-md/cli/-/cli-0.2.1.tgz"
  sha256 "3eb482071d519a59d66e6ca32734884423b8ed136e73c3dfc8fa1fa5fdc174a8"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match "0.2.1", shell_output("#{bin}/quorum --version")
    assert_match '"version": "0.2.1"', shell_output("#{bin}/quorum --json version")
  end
end
