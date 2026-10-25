class Gget < Formula
  desc "Download anything, upload to FTP, call APIs. One command, no flags"
  homepage "https://github.com/naviko/gget"
  version "1.0.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/naviko/gget/releases/download/v1.0.7/gget-darwin-arm64"
      sha256 "93d3ae219baa34e85f6531ef02f7763576edea85a19f902bb246665bcd38d1d1"
    end
    on_intel do
      url "https://github.com/naviko/gget/releases/download/v1.0.7/gget-darwin-amd64"
      sha256 "37aaf0e96db345cbbff5c8e08cf36dae73a59d3a9a127e061a3bdc7c892469b2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/naviko/gget/releases/download/v1.0.7/gget-linux-arm64"
      sha256 "f77101ed52d1a9eff355fe358df8287210e0d287f5d226f46e52e03014c2e162"
    end
    on_intel do
      url "https://github.com/naviko/gget/releases/download/v1.0.7/gget-linux-amd64"
      sha256 "9f850b0f3d4b3df6f365656c7bee1e62b8570e1cd589c048e863cadae4e17bfa"
    end
  end

  def install
    bin.install Dir["gget-*"].first => "gget"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gget --version")
  end
end