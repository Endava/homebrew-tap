# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Cats < Formula
  desc "CATS is a REST APIs fuzzer and negative testing tool for OpenAPI endpoints. CATS automatically  generates, runs and reports tests with minimum configuration and no coding effort. Tests are self-healing and do not require maintenance."
  homepage "https://endava.github.io/cats/"

  if OS.mac?
      if Hardware::CPU.intel?
        url "https://github.com/Endava/cats/releases/download/cats-10.1.0/cats_macos_amd64_10.1.0.tar.gz"
        sha256 ""
      elsif Hardware::CPU.arm?
        url "https://github.com/Endava/cats/releases/download/cats-10.1.0/cats_macos_arm64_10.1.0.tar.gz"
        sha256 "f98cf724e315efc71814bf26299d86749eeec8808e8669c5cacf9ef9f88cded1"
      end
  elsif OS.linux?
      if Hardware::CPU.intel?
        url "https://github.com/Endava/cats/releases/download/cats-10.1.0/cats_linux_amd64_10.1.0.tar.gz"
        sha256 "dcbcfe170a953bcf9d12c395bb170840f7947d6fb66835df6e4d8c7f18bead22"
      elsif Hardware::CPU.arm?
        url "https://github.com/Endava/cats/releases/download/cats-10.1.0/cats_linux_arm64_10.1.0.tar.gz"
        sha256 "07fe669c2b98dc2b02f78f699d6976f3c3324957df0c753de8ad4565ff43ab10"
      end
  else
    odie "Please use the uberjar version: https://github.com/Endava/cats/releases/download/cats-10.1.0/cats_uberjar_10.1.0.tar.gz"
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
