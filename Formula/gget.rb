class Gget < Formula
  desc "Download anything, upload to FTP, call APIs. One command, no flags"
  homepage "https://github.com/naviko/gget"
  version "1.0.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/naviko/gget/releases/download/v1.0.11/gget-darwin-arm64"
      sha256 "5b0a40b89ae1a3b7c09529e88ed79c6a9697389d0456b4baf943b7eecb48e479"
    end
    on_intel do
      url "https://github.com/naviko/gget/releases/download/v1.0.11/gget-darwin-amd64"
      sha256 "0810bd58817951889475d98f7e0fc3dd2c1466ce6fec29d2ffc483eb3c64fdff"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/naviko/gget/releases/download/v1.0.11/gget-linux-arm64"
      sha256 "47d9ea95070a9283df2b52a06f72c6b22ed7bb896f3922264bab418f9c413868"
    end
    on_intel do
      url "https://github.com/naviko/gget/releases/download/v1.0.11/gget-linux-amd64"
      sha256 "4e21e410c19189edbc96ec22d25aef98070c132defa8b6af01630b314d790159"
    end
  end

  def install
    bin.install Dir["gget-*"].first => "gget"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gget --version")
  end
end
