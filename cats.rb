# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Cats < Formula
  desc "CATS is a REST APIs fuzzer and negative testing tool for OpenAPI endpoints. CATS automatically  generates, runs and reports tests with minimum configuration and no coding effort. Tests are self-healing and do not require maintenance."
  homepage "https://endava.github.io/cats/"

  if OS.mac?
      if Hardware::CPU.intel?
        url "https://github.com/Endava/cats/releases/download/cats-10.4.0/cats_macos_amd64_10.4.0.tar.gz"
        sha256 "661a82b68ffafb4cfd908445400c624cbcd6d3dcd0ec27be00f228fb9bb61cf1"
      elsif Hardware::CPU.arm?
        url "https://github.com/Endava/cats/releases/download/cats-10.4.0/cats_macos_arm64_10.4.0.tar.gz"
        sha256 "11fb5ad47e9fe2ec93789b87bf7e9b3b8bb55bf2d0e4b732e8defc11ab13c7e1"
      end
  elsif OS.linux?
      if Hardware::CPU.intel?
        url "https://github.com/Endava/cats/releases/download/cats-10.4.0/cats_linux_amd64_10.4.0.tar.gz"
        sha256 "614ff543126f7e1837edf5c60d6dcd53229d98bb14989b1086284e437398bf50"
      elsif Hardware::CPU.arm?
        url "https://github.com/Endava/cats/releases/download/cats-10.4.0/cats_linux_arm64_10.4.0.tar.gz"
        sha256 "4bf26baaecc430e28ddc3180cc479160b7e40cdc1b76c3f076df7193bbce44d7"
      end
  else
    odie "Please use the uberjar version: https://github.com/Endava/cats/releases/download/cats-10.4.0/cats_uberjar_10.4.0.tar.gz"
  end

  license "Apache-2.0"

  # depends_on "cmake" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure
    # https://rubydoc.brew.sh/Formula.html#std_configure_args-instance_method
    # system "./configure", *std_configure_args, "--disable-silent-rules"
    # system "cmake", "-S", ".", "-B", "build", *std_cmake_args
    bin.install 'cats'
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test cats`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
