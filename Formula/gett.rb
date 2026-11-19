class Gett < Formula
  desc "Download anything, upload to FTP, call APIs"
  homepage "https://github.com/naviko/gett"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/naviko/gett/releases/download/v0.1.5/gett-darwin-arm64"
      sha256 "0ab0903ec64cbbbffec451f2076e4770261cd7ae33bfcaa7736f49839900e07c"
    end
    on_intel do
      url "https://github.com/naviko/gett/releases/download/v0.1.5/gett-darwin-amd64"
      sha256 "024231af1eff7fdfd7ecb01c0801a9fc18d93f64809cc77131e9c5cb2413e33a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/naviko/gett/releases/download/v0.1.5/gett-linux-arm64"
      sha256 "933b3490b2e3e81512d8308c167bf842a7079f53c2b1d92d41afe30b20580ef8"
    end
    on_intel do
      url "https://github.com/naviko/gett/releases/download/v0.1.5/gett-linux-amd64"
      sha256 "5304a1ff32c180679dafa28860df06d8a71805d6ee071027cf89d613836cde3f"
    end
  end

  def install
    bin.install Dir["gett-*"].first => "gett"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gett --version")
  end
end
