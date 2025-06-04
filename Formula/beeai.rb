class Beeai < Formula
  include Language::Python::Virtualenv

  desc "Command-line interface and server for the BeeAI platform"
  homepage "https://github.com/i-am-bee/beeai"
  url "https://files.pythonhosted.org/packages/5b/3b/9e4fe2a5aff90001d83a6f7115ddf69b6ff88047969200c8883e2c3eec6e/beeai_cli-0.2.3.tar.gz"
  sha256 "f0c73b8ca0945dc2337b613660f48a1d91051a6bd414fedb04f2dd7d0365988e"
  license "Apache-2.0"
  head "https://github.com/i-am-bee/beeai.git", branch: "main"

  bottle do
    root_url "https://github.com/i-am-bee/homebrew-beeai/releases/download/beeai-0.2.3"
    sha256 cellar: :any, arm64_sequoia: "af9eab8c97d9fcf3e9e63f10e0e02a291af6d793f9a7a72ec807f59c83a89fb7"
    sha256 cellar: :any, arm64_sonoma:  "8a71954ee8a53eaf86f861491e91dee1ac4a1a333f74e4981a76771b00b1e055"
    sha256 cellar: :any, ventura:       "48fbebe7e2793daca4a9de449fe4deb416618e2792884d1060e5a91f1be3e546"
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
