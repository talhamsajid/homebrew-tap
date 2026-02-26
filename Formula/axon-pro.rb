class AxonPro < Formula
  include Language::Python::Virtualenv

  desc "Enterprise-grade graph-powered code intelligence engine"
  homepage "https://github.com/talhamsajid/axon-pro"
  url "https://github.com/talhamsajid/axon-pro/archive/refs/tags/v0.3.5.tar.gz"
  sha256 "8f9b23e533c0c537f587b2790e839f0cdc10a917477d5d351c5bc6d62f2e3fb9"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/axon-pro", "--version"
  end
end
