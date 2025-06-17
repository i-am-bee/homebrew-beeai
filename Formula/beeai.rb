class Beeai < Formula
  include Language::Python::Virtualenv

  desc "Command-line interface and server for the BeeAI platform"
  homepage "https://github.com/i-am-bee/beeai"
  url "https://files.pythonhosted.org/packages/8e/5a/69e09e25d4108379b5ee8b495898099af2e26e7579a04b5f30e891b99549/beeai_cli-0.2.9.tar.gz"
  sha256 "ee3348535bd1ed35d466a2f066b83f1c1b7eb9b1b61d56c16397895f4d2e6cb0"
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
