# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Cats < Formula
  desc "CATS is a REST APIs fuzzer and negative testing tool for OpenAPI endpoints. CATS automatically  generates, runs and reports tests with minimum configuration and no coding effort. Tests are self-healing and do not require maintenance."
  homepage "https://endava.github.io/cats/"

  if OS.mac?
      if Hardware::CPU.intel?
        url "https://github.com/Endava/cats/releases/download/cats-10.3.0/cats_macos_amd64_10.3.0.tar.gz"
        sha256 ""
      elsif Hardware::CPU.arm?
        url "https://github.com/Endava/cats/releases/download/cats-10.3.0/cats_macos_arm64_10.3.0.tar.gz"
        sha256 "99b41781d9e27ea06b113b95e67775db6fa78c7dee72cfbe6f5b0a01dfc9eec5"
      end
  elsif OS.linux?
      if Hardware::CPU.intel?
        url "https://github.com/Endava/cats/releases/download/cats-10.3.0/cats_linux_amd64_10.3.0.tar.gz"
        sha256 "0ec2c6deaa3d1061af67218e4cd4cb489350d31fafdcf117da12405c3285303a"
      elsif Hardware::CPU.arm?
        url "https://github.com/Endava/cats/releases/download/cats-10.3.0/cats_linux_arm64_10.3.0.tar.gz"
        sha256 "88450a4bd473682cf799304a1de88939ef35bbac8128f03da37ec2e3978758ff"
      end
  else
    odie "Please use the uberjar version: https://github.com/Endava/cats/releases/download/cats-10.3.0/cats_uberjar_10.3.0.tar.gz"
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
