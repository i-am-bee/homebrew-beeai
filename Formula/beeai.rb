class Beeai < Formula
  include Language::Python::Virtualenv

  desc "Command-line interface and server for the BeeAI platform"
  homepage "https://github.com/i-am-bee/beeai"
  url "https://files.pythonhosted.org/packages/4d/04/b12d40fc1a020e32e5d2553c55c37086062d0f2f703735c6fec91db8c177/beeai_cli-0.2.6.tar.gz"
  sha256 "9c2e95a2369a4108d250b7241508ce534a7882e22e80cd9d83d8d28c7f563542"
  license "Apache-2.0"
  head "https://github.com/i-am-bee/beeai.git", branch: "main"

  bottle do
    root_url "https://github.com/i-am-bee/homebrew-beeai/releases/download/beeai-0.2.6"
    sha256 cellar: :any, arm64_sequoia: "b0cff8a82451d20f1f39cc3dd7e0404ba5e1f9ac84d557ea0e26808e30c37719"
    sha256 cellar: :any, arm64_sonoma:  "c9fe9269adc6a8614afe4d181f0a07dd7e1fcc08bad8a12918bb9ae2413e4b75"
    sha256 cellar: :any, ventura:       "d79ab653655f21c9fab5d9537be319a015e49c32e7446c711d6b5853f9492758"
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
