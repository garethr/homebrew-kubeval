class Kubeval < Formula
  desc "Validate your Kubernetes configurations"
  homepage "https://github.com/garethr/"
  url "https://github.com/garethr/kubeval/releases/download/0.7.1/kubeval-darwin-amd64.tar.gz"
  sha256 "0E9FBC4495CE048936F6A535A48DB9F1164404DE68B7A04EB806A0FCA7212485".downcase
  version "0.7.1"

  bottle :unneeded

  def install
    bin.install "kubeval"
  end

  test do
    system "#{bin}/kubeval", "--version"
  end
end
