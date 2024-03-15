# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Cats < Formula
  desc "CATS is a REST APIs fuzzer and negative testing tool for OpenAPI endpoints. CATS automatically  generates, runs and reports tests with minimum configuration and no coding effort. Tests are self-healing and do not require maintenance."
  homepage "https://endava.github.io/cats/"

  if OS.mac?
      if Hardware::CPU.intel?
        url "https://github.com/Endava/cats/releases/download/cats-11.3.0/cats_macos_amd64_11.3.0.tar.gz"
        sha256 ""
      elsif Hardware::CPU.arm?
        url "https://github.com/Endava/cats/releases/download/cats-11.3.0/cats_macos_arm64_11.3.0.tar.gz"
        sha256 "00f0df33f8a4685791f6e6cc02ed4598e9699de827324b28877b1ae419b95522"
      end
  elsif OS.linux?
      if Hardware::CPU.intel?
        url "https://github.com/Endava/cats/releases/download/cats-11.3.0/cats_linux_amd64_11.3.0.tar.gz"
        sha256 "69a8dcab6f99a742715f6e0abd57ee70e85f913bc666527259544b80dd725407"
      elsif Hardware::CPU.arm?
        url "https://github.com/Endava/cats/releases/download/cats-11.3.0/cats_linux_arm64_11.3.0.tar.gz"
        sha256 "9c22ad4ea517c1cdc0de4c538cc88582071a4206e9aa6cc2bfa5644873ceb6df"
      end
  else
    odie "Please use the uberjar version: https://github.com/Endava/cats/releases/download/cats-11.3.0/cats_uberjar_11.3.0.tar.gz"
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
