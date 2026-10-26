class Gett < Formula
  desc "Download anything, upload to FTP, call APIs"
  homepage "https://github.com/naviko/gett"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/naviko/gett/releases/download/v0.1.2/gett-darwin-arm64"
      sha256 "423046d30d879a095f12ee317352bfcfc3a7743d9d81ae46b4721fe69396011e"
    end
    on_intel do
      url "https://github.com/naviko/gett/releases/download/v0.1.2/gett-darwin-amd64"
      sha256 "ad34ec715aa69f42bc620e4f4f4a759d265c2a58f57e4884ad8618749fe63120"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/naviko/gett/releases/download/v0.1.2/gett-linux-arm64"
      sha256 "8582d6811cd55c9ce2ce267d465d9f4142b346884ce2a2b04b845e1920850a78"
    end
    on_intel do
      url "https://github.com/naviko/gett/releases/download/v0.1.2/gett-linux-amd64"
      sha256 "1175c664603c42a4111c7926fbcb31ad30e049377f8428beddc51685148faaa5"
    end
  end

  def install
    bin.install Dir["gett-*"].first => "gett"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gett --version")
  end
end
