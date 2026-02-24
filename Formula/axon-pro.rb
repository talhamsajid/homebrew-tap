class AxonPro < Formula
  include Language::Python::Virtualenv

  desc "Enterprise-grade graph-powered code intelligence engine"
  homepage "https://github.com/talhamsajid/axon-pro"
  url "https://github.com/talhamsajid/axon-pro/archive/refs/tags/v0.3.3.tar.gz"
  sha256 "dcedd2649cef75f459c35f37b57a65e15863de6965987cd6619350708ad50e38"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/axon-pro", "--version"
  end
end
