# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Cats < Formula
  desc "CATS is a REST APIs fuzzer and negative testing tool for OpenAPI endpoints. CATS automatically  generates, runs and reports tests with minimum configuration and no coding effort. Tests are self-healing and do not require maintenance."
  homepage "https://endava.github.io/cats/"

  if OS.mac?
      if Hardware::CPU.intel?
        url "https://github.com/Endava/cats/releases/download/cats-15.5.0/cats_macos_amd64_15.5.0.tar.gz"
        sha256 "1c448723ebcb5c23c7999db24adb3f69033176b7c620f6caee879ed470612c73"
      elsif Hardware::CPU.arm?
        url "https://github.com/Endava/cats/releases/download/cats-15.5.0/cats_macos_arm64_15.5.0.tar.gz"
        sha256 "c9946346de9163a40772ae1d926170e1acc3ef798d41333c1ad9193e4133b734"
      end
  elsif OS.linux?
      if Hardware::CPU.intel?
        url "https://github.com/Endava/cats/releases/download/cats-15.5.0/cats_linux_amd64_15.5.0.tar.gz"
        sha256 "a9fbfe80e6dee4b043c37265ce423b8d3ac74902a0ebf03753239cdd14a98dc2"
      elsif Hardware::CPU.arm?
        url "https://github.com/Endava/cats/releases/download/cats-15.5.0/cats_linux_arm64_15.5.0.tar.gz"
        sha256 "9140324e86477a37e605e430d9bea0c91e1df3c40329a5ab39fb52f97f10a406"
      end
  else
    odie "Please use the uberjar version: https://github.com/Endava/cats/releases/download/cats-15.5.0/cats_uberjar_15.5.0.tar.gz"
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
