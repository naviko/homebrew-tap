class Gett < Formula
  desc "Download anything, upload to FTP, call APIs"
  homepage "https://github.com/naviko/gett"
  version "0.1.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/naviko/gett/releases/download/v0.1.4/gett-darwin-arm64"
      sha256 "9da2983defe23cc959921b1599738a322f1c3b80960bb62d0e561d0f1944af22"
    end
    on_intel do
      url "https://github.com/naviko/gett/releases/download/v0.1.4/gett-darwin-amd64"
      sha256 "f7881a4f5978ab1def72cc1ab89bed6cb2616d7ca2809f2983432683c2aa28f3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/naviko/gett/releases/download/v0.1.4/gett-linux-arm64"
      sha256 "39fd3c8dcf6daf9d4273547d8647bfdf70fe7cf586368963a6520840df2590fe"
    end
    on_intel do
      url "https://github.com/naviko/gett/releases/download/v0.1.4/gett-linux-amd64"
      sha256 "1f358e4cfca14ca9018333681402c55a43b972d5e78c779f7c7913cc29189370"
    end
  end

  def install
    bin.install Dir["gett-*"].first => "gett"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gett --version")
  end
end
