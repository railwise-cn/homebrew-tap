# typed: false
# frozen_string_literal: true

class Railwise < Formula
  desc "AI coding agent built for the terminal"
  homepage "https://github.com/railwise-cn/RAILWISE-CLI"
  version "1.2.34"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/railwise-cn/RAILWISE-CLI/releases/download/v1.2.34/railwise-darwin-x64.zip"
      sha256 "b55f48859d84083caa3e7b80524e3b9d50993b6a73b67ad4dce707317da8439a"
      def install
        bin.install "railwise"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/railwise-cn/RAILWISE-CLI/releases/download/v1.2.34/railwise-darwin-arm64.zip"
      sha256 "f82285f5df971ce7f10849823de78cd1fbb83ce63195813a7269b5dd027911d2"
      def install
        bin.install "railwise"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/railwise-cn/RAILWISE-CLI/releases/download/v1.2.34/railwise-linux-x64.tar.gz"
      sha256 "2297c47800ee6c045829b370028f291e1d9fe47bedc5b10b9e6d0627b5ba1bc2"
      def install
        bin.install "railwise"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/railwise-cn/RAILWISE-CLI/releases/download/v1.2.34/railwise-linux-arm64.tar.gz"
      sha256 "e75f27319fc075f6bd96606cd5226e5c746ee6e1296bac375be2031c35f51a5b"
      def install
        bin.install "railwise"
      end
    end
  end
end
