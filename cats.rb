# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Cats < Formula
  desc "CATS is a REST APIs fuzzer and negative testing tool for OpenAPI endpoints. CATS automatically  generates, runs and reports tests with minimum configuration and no coding effort. Tests are self-healing and do not require maintenance."
  homepage "https://endava.github.io/cats/"

  if OS.mac?
      if Hardware::CPU.intel?
        url "https://github.com/Endava/cats/releases/download/cats-10.5.0/cats_macos_amd64_10.5.0.tar.gz"
        sha256 ""
      elsif Hardware::CPU.arm?
        url "https://github.com/Endava/cats/releases/download/cats-10.5.0/cats_macos_arm64_10.5.0.tar.gz"
        sha256 "b47cd72514be22db53d04123035aa6d3dde882b589d9f3a66eda3b13114f176f"
      end
  elsif OS.linux?
      if Hardware::CPU.intel?
        url "https://github.com/Endava/cats/releases/download/cats-10.5.0/cats_linux_amd64_10.5.0.tar.gz"
        sha256 "9b50d07a016d3c1bae6876f9f4221a8b44bfa324210bee01e9976fd8de7ca8e1"
      elsif Hardware::CPU.arm?
        url "https://github.com/Endava/cats/releases/download/cats-10.5.0/cats_linux_arm64_10.5.0.tar.gz"
        sha256 "3cab2015b8caf8fc4ed1f1bd26f9c21b8d599b0b6499adac6603d21570289fb5"
      end
  else
    odie "Please use the uberjar version: https://github.com/Endava/cats/releases/download/cats-10.5.0/cats_uberjar_10.5.0.tar.gz"
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
