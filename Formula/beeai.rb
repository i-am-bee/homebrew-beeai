class Beeai < Formula
  include Language::Python::Virtualenv

  desc "Command-line interface and server for the BeeAI platform"
  homepage "https://github.com/i-am-bee/beeai"
  url "https://files.pythonhosted.org/packages/00/44/5eb966ad88e461240e6f297c6627a3ad43ae339ad884f60bcf4b1fe0dbae/beeai_cli-0.2.1.tar.gz"
  sha256 "bc596feb89206a99ddd54b06809c08019d90080a7a1d0510f6a0c2ac8d7f2beb"
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
