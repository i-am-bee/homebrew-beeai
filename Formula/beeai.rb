class Beeai < Formula
  include Language::Python::Virtualenv

  desc "Command-line interface and server for the BeeAI platform"
  homepage "https://github.com/i-am-bee/beeai"
  url "https://files.pythonhosted.org/packages/df/3b/ba8b7ecdb706d077639755dff68369baa121332cc11ef84d5f8aea212bae/beeai_cli-0.2.0.tar.gz"
  sha256 "1e9a9da49d998915b703c5fdaa2a8f710d5a37be4cd105694cdf6acd7548d22a"
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
