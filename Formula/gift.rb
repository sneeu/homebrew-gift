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
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sneeu/gift/releases/download/v#{version}/gift-macos-aarch64.tar.gz"
      sha256 "48a8b845c60c524ea2d227a78f2500bc2bc5effdb0bf84b025e76a753bd40834"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/sneeu/gift/releases/download/v#{version}/gift-linux-x86_64.tar.gz"
      sha256 "6f66a5f35a30b40ceab9f4fc296acecf701f33203b6485d73cc853be90d3af98"
    end
  end

  def install
    bin.install "gift"
  end

  test do
    assert_match "gift", shell_output("#{bin}/gift --version 2>&1", 1)
  end
end
