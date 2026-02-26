class AxonPro < Formula
  include Language::Python::Virtualenv

  desc "Enterprise-grade graph-powered code intelligence engine"
  homepage "https://github.com/talhamsajid/axon-pro"
  url "https://github.com/talhamsajid/axon-pro/archive/refs/tags/v0.3.4.tar.gz"
  sha256 "91e33ffdd0168be81b64d1e87c9ecfe0f00f37f6d371b091e94c4a60cbc99d4a"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/axon-pro", "--version"
  end
end
