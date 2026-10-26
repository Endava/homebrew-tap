# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Cats < Formula
  desc "CATS is a REST APIs fuzzer and negative testing tool for OpenAPI endpoints. CATS automatically  generates, runs and reports tests with minimum configuration and no coding effort. Tests are self-healing and do not require maintenance."
  homepage "https://endava.github.io/cats/"

  if OS.mac?
      if Hardware::CPU.intel?
        url "https://github.com/Endava/cats/releases/download/cats-15.1.1/cats_macos_amd64_15.1.1.tar.gz"
        sha256 "16b0d3db85d180f409fd48fc38e1bc613eadbcce2726db8e0b23dd28a3a42f93"
      elsif Hardware::CPU.arm?
        url "https://github.com/Endava/cats/releases/download/cats-15.1.1/cats_macos_arm64_15.1.1.tar.gz"
        sha256 "1726771e462a97af30a96776fcb026bf54a79d5f93de6b5a9c36a80aeccc1f51"
      end
  elsif OS.linux?
      if Hardware::CPU.intel?
        url "https://github.com/Endava/cats/releases/download/cats-15.1.1/cats_linux_amd64_15.1.1.tar.gz"
        sha256 "a426018c581a0b147b2de748eb72a9a7467abd99d17a73193acaa302939c097b"
      elsif Hardware::CPU.arm?
        url "https://github.com/Endava/cats/releases/download/cats-15.1.1/cats_linux_arm64_15.1.1.tar.gz"
        sha256 "c2d6f11e8ef7a612aae8de3ff231e9f4250f224746367a87fb3afa6b55063c20"
      end
  else
    odie "Please use the uberjar version: https://github.com/Endava/cats/releases/download/cats-15.1.1/cats_uberjar_15.1.1.tar.gz"
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
