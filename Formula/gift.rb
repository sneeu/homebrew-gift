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
  version "0.1.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sneeu/gift/releases/download/v#{version}/gift-macos-aarch64.tar.gz"
      sha256 "d2535f562fe1725b71c75f7ce1cf61efce9b71ae9e9b63f517c24cfe32e53b90"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/sneeu/gift/releases/download/v#{version}/gift-linux-x86_64.tar.gz"
      sha256 "b44dfbcc070723655ff66539c7e0457d8d56c5b11cd998cf76551010e151c952"
    end
  end

  def install
    bin.install "gift"
  end

  test do
    assert_match "gift", shell_output("#{bin}/gift --version 2>&1", 1)
  end
end
