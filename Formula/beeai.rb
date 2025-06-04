class Beeai < Formula
  include Language::Python::Virtualenv

  desc "Command-line interface and server for the BeeAI platform"
  homepage "https://github.com/i-am-bee/beeai"
  url "https://files.pythonhosted.org/packages/5b/3b/9e4fe2a5aff90001d83a6f7115ddf69b6ff88047969200c8883e2c3eec6e/beeai_cli-0.2.3.tar.gz"
  sha256 "f0c73b8ca0945dc2337b613660f48a1d91051a6bd414fedb04f2dd7d0365988e"
  license "Apache-2.0"
  head "https://github.com/i-am-bee/beeai.git", branch: "main"

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
