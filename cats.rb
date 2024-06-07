# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Cats < Formula
  desc "CATS is a REST APIs fuzzer and negative testing tool for OpenAPI endpoints. CATS automatically  generates, runs and reports tests with minimum configuration and no coding effort. Tests are self-healing and do not require maintenance."
  homepage "https://endava.github.io/cats/"

  if OS.mac?
      if Hardware::CPU.intel?
        url "https://github.com/Endava/cats/releases/download/cats-11.7.0/cats_macos_amd64_11.7.0.tar.gz"
        sha256 "58a6daac4cb59f10e43225629b3222730eee22fe51a4d7f948561716d600263b"
      elsif Hardware::CPU.arm?
        url "https://github.com/Endava/cats/releases/download/cats-11.7.0/cats_macos_arm64_11.7.0.tar.gz"
        sha256 "ee7374758505d64b7388626a8c83c6262c56c9fa017bf7debc040895f03ec80a"
      end
  elsif OS.linux?
      if Hardware::CPU.intel?
        url "https://github.com/Endava/cats/releases/download/cats-11.7.0/cats_linux_amd64_11.7.0.tar.gz"
        sha256 "9781f67db3036e2c3e519aa2a693dfb1194b5842ec5ab4c78336a0efdaa34981"
      elsif Hardware::CPU.arm?
        url "https://github.com/Endava/cats/releases/download/cats-11.7.0/cats_linux_arm64_11.7.0.tar.gz"
        sha256 "adf07098a405255c8ffc7380b01f1be01a0f724cfd192c4dfc570e7493dc7b08"
      end
  else
    odie "Please use the uberjar version: https://github.com/Endava/cats/releases/download/cats-11.7.0/cats_uberjar_11.7.0.tar.gz"
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
