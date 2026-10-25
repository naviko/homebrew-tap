class Gget < Formula
  desc "Download anything, upload to FTP, call APIs. One command, no flags"
  homepage "https://github.com/naviko/gget"
  version "1.0.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/naviko/gget/releases/download/v1.0.3/gget-darwin-arm64"
      sha256 "ebc3e3098995f771373a9826b0ad7e79bcee4dfdde13881c0a83ba80ce8bc1ad"
    end
    on_intel do
      url "https://github.com/naviko/gget/releases/download/v1.0.3/gget-darwin-amd64"
      sha256 "62c64c004cf39c747b03a42f7751f7b1fa8f19bfe66b10730b37461e0e3234b9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/naviko/gget/releases/download/v1.0.3/gget-linux-arm64"
      sha256 "23efe92c360d570deb487b0251755d3fcff4230a4d15f7b33226fe8d7dd4b5de"
    end
    on_intel do
      url "https://github.com/naviko/gget/releases/download/v1.0.3/gget-linux-amd64"
      sha256 "a8cf5dfc8d6313aae42c1c9bfc539c9c2698a4a5e6bcc39a588d116dae60115e"
    end
  end

  def install
    bin.install Dir["gget-*"].first => "gget"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gget --version")
  end
end