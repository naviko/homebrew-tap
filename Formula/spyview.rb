class Spyview < Formula
  desc "Terminal viewer for spy logs"
  homepage "https://github.com/naviko/spy"

  on_macos do
    on_arm do
      url "https://github.com/naviko/spy/releases/download/v0.0.6/spyview-0.0.6-macos-arm64.tar.gz"
      sha256 "43bdd2f3301d6de8ad43007f9368d088a563520964aa5044738aa005eda1876b"
    end
    on_intel do
      url "https://github.com/naviko/spy/releases/download/v0.0.6/spyview-0.0.6-macos-amd64.tar.gz"
      sha256 "99522602bd47d4f941517ea9967fd5eb848d8f3377ed312f8f8424593a373163"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/naviko/spy/releases/download/v0.0.6/spyview-0.0.6-linux-arm64.tar.gz"
      sha256 "fa98b238a9b832ca3f668ca5802135e81d53ca2a185a5a47a446e4e0a615e4b1"
    end
    on_intel do
      url "https://github.com/naviko/spy/releases/download/v0.0.6/spyview-0.0.6-linux-amd64.tar.gz"
      sha256 "be771558a78d3faeb1f5e9e3c1e4a9ac4db316a64ce5f8cede861983e3a257a9"
    end
  end

  def install
    bin.install "spyview"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/spyview --version")
  end
end
