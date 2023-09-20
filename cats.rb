# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Cats < Formula
  desc "CATS is a REST APIs fuzzer and negative testing tool for OpenAPI endpoints. CATS automatically  generates, runs and reports tests with minimum configuration and no coding effort. Tests are self-healing and do not require maintenance."
  homepage "https://endava.github.io/cats/"

  if OS.mac?
      if Hardware::CPU.intel?
        url "https://github.com/Endava/cats/releases/download/cats-9.0.2/cats_macos_amd64_9.0.2.tar.gz"
        sha256 "a98aef7fa08f0defcb663d90793b9d74c9f509820f8a797a384044ef8fc1ded5"
      elsif Hardware::CPU.arm?
        url "https://github.com/Endava/cats/releases/download/cats-9.0.2/cats_macos_arm64_9.0.2.tar.gz"
        sha256 "1e830fa28b8717e78da11dd0400cb7be4e007b2a27dea67e594444bedea2f16e"
      end
  elsif OS.linux?
      if Hardware::CPU.intel?
        url "https://github.com/Endava/cats/releases/download/cats-9.0.2/cats_linux_amd64_9.0.2.tar.gz"
        sha256 "d62581aa51f62f76afdcda25108d4a1bf4ef0c0ec8c9a60bcc71ada655d81401"
      elsif Hardware::CPU.arm?
        url "https://github.com/Endava/cats/releases/download/cats-9.0.2/cats_linux_arm64_9.0.2.tar.gz"
        sha256 "7a553ce0761e65c73042828efd38771e24f0d52a7a70fb17ee8e3a924317c7c7"
      end
  else
    odie "Please use the uberjar version: https://github.com/Endava/cats/releases/download/cats-9.0.2/cats_uberjar_9.0.2.tar.gz"
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
