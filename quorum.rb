class Quorum < Formula
  desc "Command-line interface for Quorum document review and spaces"
  homepage "https://quorum.md"
  url "https://registry.npmjs.org/@quorum-md/cli/-/cli-0.1.0.tgz"
  sha256 "28ea1c90caa02d0df25a99c36c0268c8e0f12e46a2bceb4e6ca08de7a0553ed8"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match "0.1.0", shell_output("#{bin}/quorum --version")
    assert_match '"version": "0.1.0"', shell_output("#{bin}/quorum --json version")
  end
end
