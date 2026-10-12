class Quorum < Formula
  desc "Command-line interface for Quorum document review and spaces"
  homepage "https://quorum.md"
  url "https://registry.npmjs.org/@quorum-md/cli/-/cli-0.5.2.tgz"
  sha256 "c10ff5e2df6e6d3d24fc61ec786de6029d2b193d6bcf533f4f05a4e3411a3ac5"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match "0.5.2", shell_output("#{bin}/quorum --version")
    assert_match '"version": "0.5.2"', shell_output("#{bin}/quorum --json version")
  end
end
