# typed: false
# frozen_string_literal: true

class Railwise < Formula
  desc "AI coding agent built for the terminal"
  homepage "https://github.com/railwise-cn/RAILWISE-CLI"
  version "1.0.5"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/railwise-cn/RAILWISE-CLI/releases/download/v1.0.5/railwise-darwin-x64.zip"
      sha256 ""
      def install
        bin.install "railwise"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/railwise-cn/RAILWISE-CLI/releases/download/v1.0.5/railwise-darwin-arm64.zip"
      sha256 "b10c774e3ff3b00e67ff5f15237a291d780c214ee9ec41c27e9ddd9087b7be98"
      def install
        bin.install "railwise"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/railwise-cn/RAILWISE-CLI/releases/download/v1.0.5/railwise-linux-x64.tar.gz"
      sha256 "ac96c53931c91065c04503c9a7e6e19a68f9db27ef621b9b7f47454b2134747e"
      def install
        bin.install "railwise"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/railwise-cn/RAILWISE-CLI/releases/download/v1.0.5/railwise-linux-arm64.tar.gz"
      sha256 "afa04af93d10cc21b7a7cbf6ed3136b92cef85200b3a0ffc1980ca86f7b6eb3b"
      def install
        bin.install "railwise"
      end
    end
  end
end
