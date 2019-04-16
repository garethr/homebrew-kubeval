class Kubeval < Formula
  desc "Validate your Kubernetes configurations"
  homepage "https://github.com/garethr/"
  url "https://github.com/garethr/kubeval/releases/download/0.8.0/kubeval-darwin-amd64.tar.gz"
  sha256 "22763d893ea9e9524d98165865dc4697818597a0979f40ddeb1b98dd1ad37094".downcase
  version "0.8.0"

  bottle :unneeded

  def install
    bin.install "kubeval"
  end

  test do
    system "#{bin}/kubeval", "--version"
  end
end
