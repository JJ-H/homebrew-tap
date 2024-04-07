# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Gitee < Formula
  desc "Gitee CLI is a tool which interact with gitee server seamlessly via terminal"
  homepage "https://github.com/JJ-H/gitee_cli"
  version "0.0.2"

  # depends_on "cmake" => :build

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/JJ-H/gitee_cli/releases/download/v0.0.2/gitee_amd64.tar.gz"
      sha256 "bb859a9d61cd7bb22b6e49b8c0e7b664dcb65f8526d73ef05660f658bbec3388"

      def install
        bin.install "gitee"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/JJ-H/gitee_cli/releases/download/v0.0.2/gitee_arm64.tar.gz"
      sha256 "23af7ab7988cde8fd7fb0c05b4f155df0c848de17602e2a4910dca77339fe5ae"

      def install
        bin.install "gitee"
      end
    end
  end
end

