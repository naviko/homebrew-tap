class Spy < Formula
  desc "See what a program really does on your machine"
  homepage "https://github.com/naviko/spy"

  on_macos do
    on_arm do
      url "https://github.com/naviko/spy/releases/download/v0.0.6/spy-0.0.6-macos-arm64.tar.gz"
      sha256 "b86326296575b61f1bd4542ad3c8567449c29782890872bf75cec1d4841bfd85"
    end
    on_intel do
      url "https://github.com/naviko/spy/releases/download/v0.0.6/spy-0.0.6-macos-amd64.tar.gz"
      sha256 "66e3681e5d644593d2694d09d59abc7a6c27e2e7f09f00211a81eaeaa79ce1cc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/naviko/spy/releases/download/v0.0.6/spy-0.0.6-linux-arm64.tar.gz"
      sha256 "2b798279d0c27fffee09d1ea636cbee76127c081d9f88c6b64423f60e49107d3"
    end
    on_intel do
      url "https://github.com/naviko/spy/releases/download/v0.0.6/spy-0.0.6-linux-amd64.tar.gz"
      sha256 "5629c060cdcacd8a3e9d791e1658e4509d3f3692c7c3c019915daf045c7c5aee"
    end
  end

  def install
    bin.install "spy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/spy --version")
  end
end
