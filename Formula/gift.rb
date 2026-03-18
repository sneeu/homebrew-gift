# This file belongs in a separate tap repository:
#   github.com/sneeu/homebrew-gift/Formula/gift.rb
#
# Users install with:
#   brew install sneeu/gift/gift
#
# To update for a new release, run the update-formula workflow or edit
# the version and sha256 values below and push to the tap repo.

class Gift < Formula
  desc "Terminal UI for managing a GIF library stored in S3"
  homepage "https://github.com/sneeu/gift"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sneeu/gift/releases/download/v#{version}/gift-macos-aarch64.tar.gz"
      sha256 "eb43d5e2d6c22b006a42da341da635d1dae7289f1f9b009bb9fc8b72c24d453b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/sneeu/gift/releases/download/v#{version}/gift-linux-x86_64.tar.gz"
      sha256 "sha256:3b5fe0965a09feff925d2d67e165b6158baa1bc13b99d1cf08bb91158473bc19"
    end
  end

  def install
    bin.install "gift"
  end

  test do
    assert_match "gift", shell_output("#{bin}/gift --version 2>&1", 1)
  end
end
