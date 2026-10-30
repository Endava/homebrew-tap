# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Cats < Formula
  desc "CATS is a REST APIs fuzzer and negative testing tool for OpenAPI endpoints. CATS automatically  generates, runs and reports tests with minimum configuration and no coding effort. Tests are self-healing and do not require maintenance."
  homepage "https://endava.github.io/cats/"

  if OS.mac?
      if Hardware::CPU.intel?
        url "https://github.com/Endava/cats/releases/download/cats-15.3.0/cats_macos_amd64_15.3.0.tar.gz"
        sha256 "8cb45bb1db639533351d1856336bd7b1bfa15a4e41149c5c86f8806999268ff8"
      elsif Hardware::CPU.arm?
        url "https://github.com/Endava/cats/releases/download/cats-15.3.0/cats_macos_arm64_15.3.0.tar.gz"
        sha256 "bef870a9b1afd09a6ad8a6d99401402ce98379d016f10ac1a371d053a6a72ec6"
      end
  elsif OS.linux?
      if Hardware::CPU.intel?
        url "https://github.com/Endava/cats/releases/download/cats-15.3.0/cats_linux_amd64_15.3.0.tar.gz"
        sha256 "087bfd72ba26fad311f15d9d2e70b4efdb6bb7cb9b9ba62d6eec3a73afd43e24"
      elsif Hardware::CPU.arm?
        url "https://github.com/Endava/cats/releases/download/cats-15.3.0/cats_linux_arm64_15.3.0.tar.gz"
        sha256 "ec85780ce4f343cc46675dcc66d013c2eb74dd4fe151771d6f12f05d16625875"
      end
  else
    odie "Please use the uberjar version: https://github.com/Endava/cats/releases/download/cats-15.3.0/cats_uberjar_15.3.0.tar.gz"
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
