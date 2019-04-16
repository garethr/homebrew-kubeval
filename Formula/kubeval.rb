class Kubeval < Formula
  desc "Validate your Kubernetes configurations"
  homepage "https://github.com/garethr/"
  url "https://github.com/garethr/kubeval/releases/download/0.8.1/kubeval-darwin-amd64.tar.gz"
  sha256 "d7a31879e5622ece560167c3f923dcf784636215a42eae98624d37d53bd661fd".downcase
  version "0.8.1"

  bottle :unneeded

  def install
    bin.install "kubeval"
  end

  test do
    system "#{bin}/kubeval", "--version"
  end
end
