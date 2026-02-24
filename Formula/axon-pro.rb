class AxonPro < Formula
  include Language::Python::Virtualenv

  desc "Enterprise-grade graph-powered code intelligence engine"
  homepage "https://github.com/talhamsajid/axon-pro"
  url "https://github.com/talhamsajid/axon-pro/archive/refs/tags/v0.3.2.tar.gz"
  sha256 "36d332fc7307a43d1fa5671a9f4e127a14bf8c8d4c700e69b230bf1948c86deb"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/axon-pro", "--version"
  end
end
