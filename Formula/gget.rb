class Gget < Formula
  desc "Download anything, upload to FTP, call APIs. One command, no flags"
  homepage "https://github.com/naviko/gget"
  version "1.0.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/naviko/gget/releases/download/v1.0.10/gget-darwin-arm64"
      sha256 "d8810443c9cdaaa8e2cf9863d90304a10dbbd16a2ea420d4263087ae4da0a8fa"
    end
    on_intel do
      url "https://github.com/naviko/gget/releases/download/v1.0.10/gget-darwin-amd64"
      sha256 "eef6334849be53418bb430ba8f05974abdc1a3f018a684107fbdd82bcea2d611"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/naviko/gget/releases/download/v1.0.10/gget-linux-arm64"
      sha256 "261c3d20f5cd744761e481d048899547768cfa95fc7c4d6c9cf14148c845b698"
    end
    on_intel do
      url "https://github.com/naviko/gget/releases/download/v1.0.10/gget-linux-amd64"
      sha256 "16e2dd5422b933bf55b8cccef20f49b56977a8a5d10f8708b9bff8d5fbe9edd1"
    end
  end

  def install
    bin.install Dir["gget-*"].first => "gget"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gget --version")
  end
end
