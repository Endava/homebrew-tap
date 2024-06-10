# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Cats < Formula
  desc "CATS is a REST APIs fuzzer and negative testing tool for OpenAPI endpoints. CATS automatically  generates, runs and reports tests with minimum configuration and no coding effort. Tests are self-healing and do not require maintenance."
  homepage "https://endava.github.io/cats/"

  if OS.mac?
      if Hardware::CPU.intel?
        url "https://github.com/Endava/cats/releases/download/cats-11.7.1/cats_macos_amd64_11.7.1.tar.gz"
        sha256 "63003e6c7adbf3e24c4a7396178d1a1b7037c25890647dfb55a947ee403def05"
      elsif Hardware::CPU.arm?
        url "https://github.com/Endava/cats/releases/download/cats-11.7.1/cats_macos_arm64_11.7.1.tar.gz"
        sha256 "ac90589877f7d6933b1a2589a25b7b5c1043c3622a13d636d659ea80e68d2932"
      end
  elsif OS.linux?
      if Hardware::CPU.intel?
        url "https://github.com/Endava/cats/releases/download/cats-11.7.1/cats_linux_amd64_11.7.1.tar.gz"
        sha256 "64dcccd14bbb38f5414c28047c98e673e8230cc39e34f9289071d1db2d1c3f3b"
      elsif Hardware::CPU.arm?
        url "https://github.com/Endava/cats/releases/download/cats-11.7.1/cats_linux_arm64_11.7.1.tar.gz"
        sha256 "4e515cd58fa32743081aefffc46304a0d8f0f14d5be2beabc0e3df108c86827d"
      end
  else
    odie "Please use the uberjar version: https://github.com/Endava/cats/releases/download/cats-11.7.1/cats_uberjar_11.7.1.tar.gz"
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
