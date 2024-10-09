# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Cats < Formula
  desc "CATS is a REST APIs fuzzer and negative testing tool for OpenAPI endpoints. CATS automatically  generates, runs and reports tests with minimum configuration and no coding effort. Tests are self-healing and do not require maintenance."
  homepage "https://endava.github.io/cats/"

  if OS.mac?
      if Hardware::CPU.intel?
        url "https://github.com/Endava/cats/releases/download/cats-12.1.0/cats_macos_amd64_12.1.0.tar.gz"
        sha256 "f8b9d635d1879f87e0e9fcc3681abf91ce6be572df9caa8567cc84e4737eb613"
      elsif Hardware::CPU.arm?
        url "https://github.com/Endava/cats/releases/download/cats-12.1.0/cats_macos_arm64_12.1.0.tar.gz"
        sha256 "473ae6ed32d31fa4004dc94a55fcd44c99ea0101ff5296eb71e734b462edc512"
      end
  elsif OS.linux?
      if Hardware::CPU.intel?
        url "https://github.com/Endava/cats/releases/download/cats-12.1.0/cats_linux_amd64_12.1.0.tar.gz"
        sha256 "4dbbb4f58e3cadc16b6a486b0a0b987242b252e3df73aa79762464c7872824a1"
      elsif Hardware::CPU.arm?
        url "https://github.com/Endava/cats/releases/download/cats-12.1.0/cats_linux_arm64_12.1.0.tar.gz"
        sha256 "03f10dec480a395f05c881ad2c11eb57b2ccdfa2fd088eb14431db9bf65cbf25"
      end
  else
    odie "Please use the uberjar version: https://github.com/Endava/cats/releases/download/cats-12.1.0/cats_uberjar_12.1.0.tar.gz"
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
