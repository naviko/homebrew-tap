class Gett < Formula
  desc "Download anything, upload to FTP, call APIs"
  homepage "https://github.com/naviko/gett"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/naviko/gett/releases/download/v0.1.2/gett-darwin-arm64"
      sha256 "e7ef49070bab8b74a345d16bd5c454a2a0dbe61e379d5d798d1ee8444f4b6e82"
    end
    on_intel do
      url "https://github.com/naviko/gett/releases/download/v0.1.2/gett-darwin-amd64"
      sha256 "c832cff36d7dbe64675461e8c820521e298070ac656baf42b034079fd7cb2ca5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/naviko/gett/releases/download/v0.1.2/gett-linux-arm64"
      sha256 "588d78ad967b356113baa02ee138aadb4bcf7eae1161b1eb26696517d93397b5"
    end
    on_intel do
      url "https://github.com/naviko/gett/releases/download/v0.1.2/gett-linux-amd64"
      sha256 "e163724fe07014d2c8382b76cab1bf012beabe7f337e8fdace8fada7b127f9f0"
    end
  end

  def install
    bin.install Dir["gett-*"].first => "gett"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gett --version")
  end
end
