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
      sha256 "92eb12f78af8670c509dda48e6c8544039add1add140fd8fc9ba6b5094e727d6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/sneeu/gift/releases/download/v#{version}/gift-linux-x86_64.tar.gz"
      sha256 "ae7160259bdee482519aa7b33b495863d2d58a7d9fa5b4cc13e25ccb1e53b786"
    end
  end

  def install
    bin.install "gift"
  end

  test do
    assert_match "gift", shell_output("#{bin}/gift --version 2>&1", 1)
  end
end
