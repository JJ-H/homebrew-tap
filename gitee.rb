# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Gitee < Formula
  desc "Gitee CLI is a tool which interact with gitee server seamlessly via terminal"
  homepage "https://github.com/JJ-H/gitee_cli"
  version "0.0.4"

  # depends_on "cmake" => :build

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/JJ-H/gitee_cli/releases/download/v0.0.4/gitee_amd64.tar.gz"
      sha256 "c94194ff98e2df6e2ebf31fb6c3e20bf41c4527c4597e9b5b96c4a8cd28d8892"

      def install
        bin.install "gitee"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/JJ-H/gitee_cli/releases/download/v0.0.4/gitee_arm64.tar.gz"
      sha256 "106d5d670b5e3627ce9d1a6bf2f89a633f75689fe1a7b455b2561e3524f35fe3"

      def install
        bin.install "gitee"
      end
    end
  end
end

