class Quorum < Formula
  desc "Command-line interface for Quorum document review and spaces"
  homepage "https://quorum.md"
  url "https://registry.npmjs.org/@quorum-md/cli/-/cli-0.2.0.tgz"
  sha256 "38ff16143def5bc3994d928e375b326461fc651162eaf7ffc91cc2c14728d71d"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match "0.2.0", shell_output("#{bin}/quorum --version")
    assert_match '"version": "0.2.0"', shell_output("#{bin}/quorum --json version")
  end
end
