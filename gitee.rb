# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Gitee < Formula
  desc "Gitee CLI is a tool which interact with gitee server seamlessly via terminal"
  homepage "https://github.com/JJ-H/gitee_cli"
  version "0.0.3"

  # depends_on "cmake" => :build

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/JJ-H/gitee_cli/releases/download/v0.0.3/gitee_amd64.tar.gz"
      sha256 "c5c8d44270fd49036803fb7a61d470d04d6aabfd381c569524d4256e77a37eb1"

      def install
        bin.install "gitee"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/JJ-H/gitee_cli/releases/download/v0.0.3/gitee_arm64.tar.gz"
      sha256 "0ed781b874c4f2d4e55b948b81e320329b3412c7781639d295331c20de5e780e"

      def install
        bin.install "gitee"
      end
    end
  end
end

