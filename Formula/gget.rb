class Gget < Formula
  desc "Download anything, upload to FTP, call APIs. One command, no flags"
  homepage "https://github.com/naviko/gget"
  url "https://github.com/naviko/gget/archive/refs/tags/v1.0.3.tar.gz"
  sha256 "177e3265293bfc2eef105bbe412b9857402546095e6a813d445aa229e04a6031"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gget --version")
  end
end
