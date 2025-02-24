# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
require_relative "lib/custom_download_strategy"
class Testci < Formula
  desc "kkrt is CLI to operate EVM block proving"
  homepage "https://github.com/kkrt-labs/test-ci"
  version "0.3.9"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kkrt-labs/test-ci/releases/download/v0.3.9/test-ci_0.3.9_darwin_amd64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "af5a77447bd18b1233c7624bc73910e63e2873a28eb3b61e6adbf1c8f739dbbd"

      def install
        bin.install "testci"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/kkrt-labs/test-ci/releases/download/v0.3.9/test-ci_0.3.9_darwin_arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "4da2aa75006082418570884a4c1b154a183101e2a0f3d137b99fcdbb77626d45"

      def install
        bin.install "testci"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/kkrt-labs/test-ci/releases/download/v0.3.9/test-ci_0.3.9_linux_amd64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
        sha256 "ab889f371dd22fceda52e1c4eb1846881c7d99b668218a8f20cb232d973be963"

        def install
          bin.install "testci"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/kkrt-labs/test-ci/releases/download/v0.3.9/test-ci_0.3.9_linux_arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
        sha256 "f9d0780c7988c33bdda1136d3b70803cf3efb25ecc38f5cd2af8e414fc8a5476"

        def install
          bin.install "testci"
        end
      end
    end
  end
end
