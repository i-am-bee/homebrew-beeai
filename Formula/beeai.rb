class Beeai < Formula
  include Language::Python::Virtualenv

  desc "Command-line interface and server for the BeeAI platform"
  homepage "https://github.com/i-am-bee/beeai"
  url "https://files.pythonhosted.org/packages/22/ef/077be6c5cad36fdb79d1e0aabfcbab040e0c81bf97b8feb7fcffc11f5199/beeai_cli-0.2.5.tar.gz"
  sha256 "e0990133f561aeb2dde5addf14076dafca66bc54e8278dea544ff5037e24d547"
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
