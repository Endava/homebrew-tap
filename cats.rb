# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Cats < Formula
  desc "CATS is a REST APIs fuzzer and negative testing tool for OpenAPI endpoints. CATS automatically  generates, runs and reports tests with minimum configuration and no coding effort. Tests are self-healing and do not require maintenance."
  homepage "https://endava.github.io/cats/"

  if OS.mac?
      if Hardware::CPU.intel?
        url "https://github.com/Endava/cats/releases/download/cats-13.4.5/cats_macos-15_amd64_13.4.5.tar.gz"
        sha256 "d0ed2040690ceb5acd7c549c41849d3b05a726ac5bcf8165ed897c6affab748f"
      elsif Hardware::CPU.arm?
        url "https://github.com/Endava/cats/releases/download/cats-13.4.5/cats_macos_arm64_13.4.5.tar.gz"
        sha256 "dda70e35cba5226bb0bfdbce1bf708163507110c45b9da555816dc50a10cabf8"
      end
  elsif OS.linux?
      if Hardware::CPU.intel?
        url "https://github.com/Endava/cats/releases/download/cats-13.4.5/cats_linux_amd64_13.4.5.tar.gz"
        sha256 "a080502ce43aafe6992faa578ad934dc28d029dcef0461a9c3b92fa7090069f2"
      elsif Hardware::CPU.arm?
        url "https://github.com/Endava/cats/releases/download/cats-13.4.5/cats_linux_arm64_13.4.5.tar.gz"
        sha256 "482dd9f7879cb5618dc74943dc2b38853ee9fff559a5d7e8302c5d74f61d7f57"
      end
  else
    odie "Please use the uberjar version: https://github.com/Endava/cats/releases/download/cats-13.4.5/cats_uberjar_13.4.5.tar.gz"
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
