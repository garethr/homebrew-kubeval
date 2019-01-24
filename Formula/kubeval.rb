class Kubeval < Formula
  desc "Validate your Kubernetes configurations"
  homepage "https://github.com/garethr/"
  url "https://github.com/garethr/kubeval/releases/download/0.7.3/kubeval-darwin-amd64.tar.gz"
  sha256 "efb298bfea2b78a19db559eab620e0318c6a22a9b975d2756221b9fed16f709c".downcase
  version "0.7.3"

  bottle :unneeded

  def install
    bin.install "kubeval"
  end

  test do
    system "#{bin}/kubeval", "--version"
  end
end
