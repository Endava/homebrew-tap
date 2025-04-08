# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Cats < Formula
  desc "CATS is a REST APIs fuzzer and negative testing tool for OpenAPI endpoints. CATS automatically  generates, runs and reports tests with minimum configuration and no coding effort. Tests are self-healing and do not require maintenance."
  homepage "https://endava.github.io/cats/"

  if OS.mac?
      if Hardware::CPU.intel?
        url "https://github.com/Endava/cats/releases/download/cats-13.1.2/cats_macos_amd64_13.1.2.tar.gz"
        sha256 "f36332a99d4ee609e0fcb836ed6a1ab3a9548d5a1ac1fc0e2cdda2e47a4d76a2"
      elsif Hardware::CPU.arm?
        url "https://github.com/Endava/cats/releases/download/cats-13.1.2/cats_macos_arm64_13.1.2.tar.gz"
        sha256 "6820e79500570685b06ef966ef82e7d1fb721fab22bf52ad329c38b54b4bc966"
      end
  elsif OS.linux?
      if Hardware::CPU.intel?
        url "https://github.com/Endava/cats/releases/download/cats-13.1.2/cats_linux_amd64_13.1.2.tar.gz"
        sha256 "b9fe6a9f8d014491ee4bcb7a7552657786eae85e4762049f002c039241d87d45"
      elsif Hardware::CPU.arm?
        url "https://github.com/Endava/cats/releases/download/cats-13.1.2/cats_linux_arm64_13.1.2.tar.gz"
        sha256 "a790a290549cbbe2a8e3e8ccb2d994598ff51bd6d2ebfba196921d12a452c612"
      end
  else
    odie "Please use the uberjar version: https://github.com/Endava/cats/releases/download/cats-13.1.2/cats_uberjar_13.1.2.tar.gz"
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
