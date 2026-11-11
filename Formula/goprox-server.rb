class GoproxServer < Formula
  desc "Server for Goprox, a private, encrypted, self-hosted proxy"
  homepage "https://github.com/naviko/goprox-dist"

  on_macos do
    on_arm do
      url "https://github.com/naviko/goprox-dist/releases/download/v0.0.9/goprox-server-darwin-arm64.tar.gz"
      sha256 "13d330be23761ed106838265ee12c110c7bf8edf01fe86e4766824fb6cbc6af0"
    end
    on_intel do
      url "https://github.com/naviko/goprox-dist/releases/download/v0.0.9/goprox-server-darwin-amd64.tar.gz"
      sha256 "27d00749cafd6997ca998a8ed4dcaf17013041763047a19fbd31fec9263b18b0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/naviko/goprox-dist/releases/download/v0.0.9/goprox-server-linux-arm64.tar.gz"
      sha256 "f355198a6e3d709c329241ba39f66c2ac05771041fb22dde73fe846c20497ba8"
    end
    on_intel do
      url "https://github.com/naviko/goprox-dist/releases/download/v0.0.9/goprox-server-linux-amd64.tar.gz"
      sha256 "05902127781ca291eefb94106550e5e19ec2202124a7c7d1d777c0c5c7abcdc3"
    end
  end

  def install
    bin.install "goprox-server"
    pkgshare.install Dir["create-install-*.sh"]
  end

  def caveats
    script = OS.mac? ? "create-install-osx.sh" : "create-install-linux.sh"
    <<~EOS
      The setup script creates the certificate and password next to
      goprox-server, so run it from a folder of your own:

        mkdir -p ~/goprox && cd ~/goprox
        ln -sf #{opt_bin}/goprox-server .
        cp #{opt_pkgshare}/#{script} .
        bash #{script}

      Then follow the instructions it prints to install the service.
      The client is a separate formula: brew install naviko/tap/gptui
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/goprox-server --version")
  end
end
