# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Lr < Formula
  desc "LoginRadius CLI to support LoginRadius API's and workflow!"
  homepage "https://github.com/loginradius/lr-cli"
  version "0.3.2"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/LoginRadius/lr-cli/releases/download/v0.3.2/lr_0.3.2_macOS_amd64.tar.gz"
    sha256 "b3088ceaa7be6c5e0f57ab17155958f6e9b75fd7576e53c9a8e2c605d4f43bcf"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/LoginRadius/lr-cli/releases/download/v0.3.2/lr_0.3.2_linux_amd64.tar.gz"
    sha256 "e6466f40b64b01175de729520cb5f8f08367942658aafbbdc71bfd152ef0e8db"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/LoginRadius/lr-cli/releases/download/v0.3.2/lr_0.3.2_linux_armv6.tar.gz"
    sha256 "7a7dd0111efe35d99349c151b14e33bff44cd4ca57b322800f33dda6adadf25a"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/LoginRadius/lr-cli/releases/download/v0.3.2/lr_0.3.2_linux_arm64.tar.gz"
    sha256 "bcd4b47f62354739f9aa3cb192578ee8e5f4e1060c00b20b432f618eaad95ea6"
  end

  def install
    bin.install "lr"
  end

  test do
    system "lr --help"
  end
end
