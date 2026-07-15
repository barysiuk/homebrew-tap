class Quorum < Formula
  desc "Command-line interface for Quorum document review and spaces"
  homepage "https://quorum.md"
  url "https://registry.npmjs.org/@quorum-md/cli/-/cli-0.3.0.tgz"
  sha256 "d5f09f8c24605dc344acb417d340841ab61cc6a247c40e5f6bc571f8e71ac4a6"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match "0.3.0", shell_output("#{bin}/quorum --version")
    assert_match '"version": "0.3.0"', shell_output("#{bin}/quorum --json version")
  end
end
