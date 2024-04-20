# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Gitee < Formula
  desc "Gitee CLI is a tool which interact with gitee server seamlessly via terminal"
  homepage "https://github.com/JJ-H/gitee_cli"
  version "0.0.6"

  # depends_on "cmake" => :build

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/JJ-H/gitee_cli/releases/download/v0.0.6/gitee-v0.0.6-darwin-amd64.tar.gz"
      sha256 "99c021fbd1f8b495dab3889714db9ff93b2c2910ab2b2502f6cfd1be13df1a56"

      def install
        bin.install "gitee"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/JJ-H/gitee_cli/releases/download/v0.0.6/gitee-v0.0.6-darwin-arm64.tar.gz"
      sha256 "cfbe160c86cca694462e621d93ede06b6efd412173e869539ce96072eaf9f96a"

      def install
        bin.install "gitee"
      end
    end
  end
end

