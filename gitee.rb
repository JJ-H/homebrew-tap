# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Gitee < Formula
  desc "Gitee CLI is a tool which interact with gitee server seamlessly via terminal"
  homepage "https://github.com/JJ-H/gitee_cli"
  version "0.0.5"

  # depends_on "cmake" => :build

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/JJ-H/gitee_cli/releases/download/v0.0.5/gitee-v0.0.5-darwin-amd64.tar.gz"
      sha256 "a60b6fbac11159aff14c95a2e2fe0be88ad2360a68c32372007c7445356c5564"

      def install
        bin.install "gitee"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/JJ-H/gitee_cli/releases/download/v0.0.5/gitee-v0.0.5-darwin-arm64.tar.gz"
      sha256 "97c0320ac5399560640afeff1b7153e37ffc0863d413cc00bacbb20d2017068e"

      def install
        bin.install "gitee"
      end
    end
  end
end

