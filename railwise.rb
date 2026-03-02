# typed: false
# frozen_string_literal: true

class Railwise < Formula
  desc "AI coding agent built for the terminal"
  homepage "https://github.com/railwise-cn/RAILWISE-CLI"
  version "1.0.4"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/railwise-cn/RAILWISE-CLI/releases/download/v1.0.4/railwise-darwin-x64.zip"
      sha256 ""
      def install
        bin.install "railwise"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/railwise-cn/RAILWISE-CLI/releases/download/v1.0.4/railwise-darwin-arm64.zip"
      sha256 "8781e7999d9dd3034165ea3b6db1c571c716a2f205d354c29f00a2df87af4ea7"
      def install
        bin.install "railwise"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/railwise-cn/RAILWISE-CLI/releases/download/v1.0.4/railwise-linux-x64.tar.gz"
      sha256 "01d5292564785c269abb1a7c2f3fd661b57e6577d0324837e35c0ddb2968614c"
      def install
        bin.install "railwise"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/railwise-cn/RAILWISE-CLI/releases/download/v1.0.4/railwise-linux-arm64.tar.gz"
      sha256 "e536de1ce607659d0c7837ddd2e31ceb5e6eee12ebe042178f5344dd03a52e92"
      def install
        bin.install "railwise"
      end
    end
  end
end
