# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Cats < Formula
  desc "CATS is a REST APIs fuzzer and negative testing tool for OpenAPI endpoints. CATS automatically  generates, runs and reports tests with minimum configuration and no coding effort. Tests are self-healing and do not require maintenance."
  homepage "https://endava.github.io/cats/"

  if OS.mac?
      if Hardware::CPU.intel?
        url "https://github.com/Endava/cats/releases/download/cats-11.6.0/cats_macos_amd64_11.6.0.tar.gz"
        sha256 "1c4d61cfd36463c917eaf16b0e81e2bc44a3803890821c2fc2abda5dcd87cda8"
      elsif Hardware::CPU.arm?
        url "https://github.com/Endava/cats/releases/download/cats-11.6.0/cats_macos_arm64_11.6.0.tar.gz"
        sha256 "36a99e523f44ba86a5ade98c03c8c5ceb745ee9dae127e2a275808a5880a2e4b"
      end
  elsif OS.linux?
      if Hardware::CPU.intel?
        url "https://github.com/Endava/cats/releases/download/cats-11.6.0/cats_linux_amd64_11.6.0.tar.gz"
        sha256 "76ac3c20894fa8faa816ec5373da2eed057a69ed9a3653f166e9ac3121e9e58c"
      elsif Hardware::CPU.arm?
        url "https://github.com/Endava/cats/releases/download/cats-11.6.0/cats_linux_arm64_11.6.0.tar.gz"
        sha256 "51c81d1f5ab11e2835bd95d41dfef8cfaf1abeaea175ecc3a9e8a237b20a08e7"
      end
  else
    odie "Please use the uberjar version: https://github.com/Endava/cats/releases/download/cats-11.6.0/cats_uberjar_11.6.0.tar.gz"
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
