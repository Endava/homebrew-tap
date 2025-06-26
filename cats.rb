# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Cats < Formula
  desc "CATS is a REST APIs fuzzer and negative testing tool for OpenAPI endpoints. CATS automatically  generates, runs and reports tests with minimum configuration and no coding effort. Tests are self-healing and do not require maintenance."
  homepage "https://endava.github.io/cats/"

  if OS.mac?
      if Hardware::CPU.intel?
        url "https://github.com/Endava/cats/releases/download/cats-13.3.2/cats_macos_amd64_13.3.2.tar.gz"
        sha256 "79ef552c9656fa4134a79592568722cdbcb5b2cf4b2d28e3f3a9d2acbb7cc1e4"
      elsif Hardware::CPU.arm?
        url "https://github.com/Endava/cats/releases/download/cats-13.3.2/cats_macos_arm64_13.3.2.tar.gz"
        sha256 "ddf7b4a9ba85e46b1680a2359bd22ee9248966078c49a1ff049ad12b809e8be1"
      end
  elsif OS.linux?
      if Hardware::CPU.intel?
        url "https://github.com/Endava/cats/releases/download/cats-13.3.2/cats_linux_amd64_13.3.2.tar.gz"
        sha256 "bfd0486acff52fcc6f25d2bbeb3b5f4e4429f6871a4aff1133aa843727b154ee"
      elsif Hardware::CPU.arm?
        url "https://github.com/Endava/cats/releases/download/cats-13.3.2/cats_linux_arm64_13.3.2.tar.gz"
        sha256 "99a794ebf41c1646195dab191e96a69d775e6513f27a03f4316a143b011f0f7e"
      end
  else
    odie "Please use the uberjar version: https://github.com/Endava/cats/releases/download/cats-13.3.2/cats_uberjar_13.3.2.tar.gz"
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
