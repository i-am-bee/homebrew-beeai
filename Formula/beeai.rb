class Beeai < Formula
  include Language::Python::Virtualenv

  desc "Command-line interface and server for the BeeAI platform"
  homepage "https://github.com/i-am-bee/beeai"
  url "https://files.pythonhosted.org/packages/26/f6/08d383176fba4917a2feeed3600c052c99589198a1566c190fab3d6b2588/beeai_cli-0.2.7.tar.gz"
  sha256 "d31ce9bb2ff691c3fe37c565f3a273536dac56f3187ba438975caaeaf0d791fa"
  license "Apache-2.0"
  head "https://github.com/i-am-bee/beeai.git", branch: "main"

  bottle do
    root_url "https://github.com/i-am-bee/homebrew-beeai/releases/download/beeai-0.2.7"
    sha256 cellar: :any, arm64_sequoia: "9dab37c6886ed08e26c02898b7a34d9e6dad644e3515b7763df841caa65c24b4"
    sha256 cellar: :any, arm64_sonoma:  "1955a144be90b83646c3bebf7e6fb80a8540676f55fe244ead489d6874c95a1c"
    sha256 cellar: :any, ventura:       "2662081a8a07b0c7b71c1e127b27c3dc44c195d3a808a7c31b440d3d82b5a850"
  end

  depends_on "lima"
  depends_on "python@3.13"

  def install
    venv = virtualenv_create(libexec, "python3.13")
    system "#{venv.root}/bin/python", "-m", "pip", "install", "beeai-cli==#{version}"
    bin.install_symlink libexec/"bin/beeai"
  end

  test do
    system bin/"beeai", "--help"
  end
end
