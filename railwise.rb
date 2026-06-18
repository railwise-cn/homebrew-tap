# typed: false
# frozen_string_literal: true

class Railwise < Formula
  desc "AI coding agent built for the terminal"
  homepage "https://github.com/railwise-cn/RAILWISE-CLI"
  version "1.2.32"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/railwise-cn/RAILWISE-CLI/releases/download/v1.2.32/railwise-darwin-x64.zip"
      sha256 "7bdf6da2f9857e8fb03d6c92a25cd792fc53d7e7df7ce6934253f096f6f17f5c"
      def install
        bin.install "railwise"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/railwise-cn/RAILWISE-CLI/releases/download/v1.2.32/railwise-darwin-arm64.zip"
      sha256 "55f90613a5f264bdd97e528e2c01e84b462af851b0d7d29d08ceb69fd5270983"
      def install
        bin.install "railwise"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/railwise-cn/RAILWISE-CLI/releases/download/v1.2.32/railwise-linux-x64.tar.gz"
      sha256 "e4d64b9f437126d0e829cff80ab8674286cb8d9942a41035b1a3ba4815dd7342"
      def install
        bin.install "railwise"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/railwise-cn/RAILWISE-CLI/releases/download/v1.2.32/railwise-linux-arm64.tar.gz"
      sha256 "f827e79d900f1f2b1e109fb5c974a7f30f56dbdd7b7682506a223808335405ad"
      def install
        bin.install "railwise"
      end
    end
  end
end
