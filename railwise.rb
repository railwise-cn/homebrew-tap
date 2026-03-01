# typed: false
# frozen_string_literal: true

class Railwise < Formula
  desc "AI coding agent built for the terminal"
  homepage "https://github.com/railwise-cn/RAILWISE-CLI"
  version "1.0.3"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/railwise-cn/RAILWISE-CLI/releases/download/v1.0.3/railwise-darwin-x64.zip"
      sha256 ""
      def install
        bin.install "railwise"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/railwise-cn/RAILWISE-CLI/releases/download/v1.0.3/railwise-darwin-arm64.zip"
      sha256 "c409c8d7276385235c535452bfda4939493a801ca5df084b26fd699e8ce5680d"
      def install
        bin.install "railwise"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/railwise-cn/RAILWISE-CLI/releases/download/v1.0.3/railwise-linux-x64.tar.gz"
      sha256 "7abdf09827b81a224730c25762f46452edd320aba7bb82fcc0320790079483aa"
      def install
        bin.install "railwise"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/railwise-cn/RAILWISE-CLI/releases/download/v1.0.3/railwise-linux-arm64.tar.gz"
      sha256 "fd703863a615b99f020589beb551a8239f03cbf2e56dd9f4c0a4587c864ad94c"
      def install
        bin.install "railwise"
      end
    end
  end
end
