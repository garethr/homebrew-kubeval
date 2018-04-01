class Kubeval < Formula
  desc "Validate your Kubernetes configurations"
  homepage "https://github.com/garethr/"
  if OS.mac?
    url "https://github.com/garethr/kubeval/releases/download/0.7.1/kubeval-darwin-amd64.tar.gz"
    sha256 "0E9FBC4495CE048936F6A535A48DB9F1164404DE68B7A04EB806A0FCA7212485".downcase
  elsif OS.linux?
    url "https://github.com/garethr/kubeval/releases/download/0.7.1/kubeval-linux-amd64.tar.gz"
    sha256 "8259D462BD19E5FC2DB2EA304E51ED4DB928BE4343F6C9530F909DBA66E15713".downcase
  end
  version "0.7.1_1"

  bottle :unneeded

  def install
    bin.install "kubeval"
  end

  test do
    system "#{bin}/kubeval", "--version"
  end
end
