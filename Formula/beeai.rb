class Beeai < Formula
  include Language::Python::Virtualenv

  desc "Command-line interface and server for the BeeAI platform"
  homepage "https://github.com/i-am-bee/beeai"
  url "https://files.pythonhosted.org/packages/af/ff/b8206106cd4d0d77ccd3750ec79ee7d0dda499a85d086185b4ceda95646a/beeai_cli-0.1.4.tar.gz"
  sha256 "8ef65573862240e929d5450cd634df530d9ba9250954444aceaa54e6b383abde"
  license "Apache-2.0"
  head "https://github.com/i-am-bee/beeai.git", branch: "main"

  depends_on "lima"
  depends_on "python@3.13"

  def install
    venv = virtualenv_create(libexec, "python3.13")
    system "#{venv.root}/bin/python", "-m", "pip", "install", "beeai-cli==#{version}"
    bin.install_symlink libexec/"bin/beeai"
  end

  service do
    run [opt_bin/"beeai", "serve"]
    keep_alive true
    error_log_path var/"log/beeai-server.log"
    log_path var/"log/beeai-server.log"
    working_dir var
    environment_variables PATH: std_service_path_env, FORCE_LIMA: 1
  end

  test do
    system bin/"beeai", "--help"
  end
end
