class AxonPro < Formula
  include Language::Python::Virtualenv

  desc "Enterprise-grade graph-powered code intelligence engine"
  homepage "https://github.com/talhamsajid/axon-pro"
  url "https://github.com/talhamsajid/axon-pro/releases/download/v0.3.0/axon_pro-0.3.0.tar.gz"
  sha256 "a6155086bfbf8b721ea3270aae60a768dbf42efcdbac39b391cb2a422850e05d"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/axon-pro", "--version"
  end
end
