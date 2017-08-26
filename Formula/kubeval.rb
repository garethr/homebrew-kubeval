class Kubeval < Formula
  desc "Validate your Kubernetes configurations"
  homepage "https://github.com/garethr/"
  url "https://github.com/garethr/kubeval/releases/download/0.6.0/kubeval-darwin-amd64.tar.gz"
  sha256 "40122CCE2ABE1B51EA9752FF00FEE61AE3107623D66D7FFC776C8EDAE8FA9B91".downcase
  version "0.6.0"

  bottle :unneeded

  def install
    bin.install "kubeval"
  end

  test do
    system "#{bin}/kubeval", "--version"
  end
end
