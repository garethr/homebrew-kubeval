class Kubeval < Formula
  desc "Validate your Kubernetes configurations"
  homepage "https://github.com/garethr/"
  url "https://github.com/garethr/kubeval/releases/download/0.7.0/kubeval-darwin-amd64.tar.gz"
  sha256 "A12D2644E73CDBBE36FE4BAB46E4CED0F8B6D1F1CF6BAFB635BACD6C2CD63F10".downcase
  version "0.7.0"

  bottle :unneeded

  def install
    bin.install "kubeval"
  end

  test do
    system "#{bin}/kubeval", "--version"
  end
end
