# typed: false
# frozen_string_literal: true

class Railwise < Formula
  desc "AI coding agent built for the terminal"
  homepage "https://github.com/railwise-cn/RAILWISE-CLI"
  version "1.2.33"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/railwise-cn/RAILWISE-CLI/releases/download/v1.2.33/railwise-darwin-x64.zip"
      sha256 "dec82b0998d9a78f986852562fa4d3c78fbdb41599c922643d4ff4cb8497f4b6"
      def install
        bin.install "railwise"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/railwise-cn/RAILWISE-CLI/releases/download/v1.2.33/railwise-darwin-arm64.zip"
      sha256 "0f256218325eb06f1aa65899c601b8f1c7f94d9bd8c703fa9520796ab48f7715"
      def install
        bin.install "railwise"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/railwise-cn/RAILWISE-CLI/releases/download/v1.2.33/railwise-linux-x64.tar.gz"
      sha256 "e38350c10115bf7627d942649e9aba4ff5704094f7a2d5cb0df1eae6e1f67efb"
      def install
        bin.install "railwise"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/railwise-cn/RAILWISE-CLI/releases/download/v1.2.33/railwise-linux-arm64.tar.gz"
      sha256 "cae1573e3160bccbec083d1bbe06da3e616a2e42889f568362030a7384c5ee63"
      def install
        bin.install "railwise"
      end
    end
  end
end
