class Gptui < Formula
  desc "Terminal client for Goprox, a private, encrypted, self-hosted proxy"
  homepage "https://github.com/naviko/goprox-dist"

  on_macos do
    on_arm do
      url "https://github.com/naviko/goprox-dist/releases/download/v0.0.9/gptui-darwin-arm64.tar.gz"
      sha256 "f22d1797571dcd9eb32ad77fc38dd848a0e0b2aebd0ef61641120d3048e44985"
    end
    on_intel do
      url "https://github.com/naviko/goprox-dist/releases/download/v0.0.9/gptui-darwin-amd64.tar.gz"
      sha256 "eeed8e93e6ec13c388bafe3b10922d003d21ae0328ab0a57a5d6cd5e54e36de4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/naviko/goprox-dist/releases/download/v0.0.9/gptui-linux-arm64.tar.gz"
      sha256 "99d02eca99e36944cc1fd8b6e7ce57fdd04315963fb23463674b8a4e2f4cf98a"
    end
    on_intel do
      url "https://github.com/naviko/goprox-dist/releases/download/v0.0.9/gptui-linux-amd64.tar.gz"
      sha256 "e46191a603d3e27497846e8b5e8ae40111b150689fa0829d1fef0d4fef0e1a6e"
    end
  end

  def install
    bin.install "gptui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gptui --version")
  end
end
