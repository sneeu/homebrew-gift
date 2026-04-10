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
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sneeu/gift/releases/download/v#{version}/gift-macos-aarch64.tar.gz"
      sha256 "938f292d98a87d4b29ff802c99d974fb1885b21c369dd51c217f91a2c877e657"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/sneeu/gift/releases/download/v#{version}/gift-linux-x86_64.tar.gz"
      sha256 "30c453f3107ee8c0a228a380015e61af94d58c204911f78f9d9fb661afd9b66b"
    end
  end

  def install
    bin.install "gift"
  end

  test do
    assert_match "gift", shell_output("#{bin}/gift --version 2>&1", 1)
  end
end
