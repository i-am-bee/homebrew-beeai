class Beeai < Formula
  include Language::Python::Virtualenv

  desc "Command-line interface and server for the BeeAI platform"
  homepage "https://github.com/i-am-bee/beeai"
  url "https://files.pythonhosted.org/packages/df/3b/ba8b7ecdb706d077639755dff68369baa121332cc11ef84d5f8aea212bae/beeai_cli-0.2.0.tar.gz"
  sha256 "1e9a9da49d998915b703c5fdaa2a8f710d5a37be4cd105694cdf6acd7548d22a"
  license "Apache-2.0"
  head "https://github.com/i-am-bee/beeai.git", branch: "main"

  bottle do
    root_url "https://github.com/i-am-bee/homebrew-beeai/releases/download/beeai-0.2.0"
    sha256 arm64_sequoia: "1af0c7c4e99cab5e29609c050ce7aeae961c5920e060255dcfc5098df3fb58f1"
    sha256 arm64_sonoma:  "f0403c3dfe07da6c9de38dc22ffa337ad83d2df41bf2946f68cb9d31b734cf96"
    sha256 ventura:       "d936c838219b22db4826bd9d17aa981b94529554f54fcf873b190320f4eb5f27"
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
