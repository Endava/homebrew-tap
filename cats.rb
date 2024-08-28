# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Cats < Formula
  desc "CATS is a REST APIs fuzzer and negative testing tool for OpenAPI endpoints. CATS automatically  generates, runs and reports tests with minimum configuration and no coding effort. Tests are self-healing and do not require maintenance."
  homepage "https://endava.github.io/cats/"

  if OS.mac?
      if Hardware::CPU.intel?
        url "https://github.com/Endava/cats/releases/download/cats-12.0.0/cats_macos_amd64_12.0.0.tar.gz"
        sha256 "e6985afabc213dd224a2e9a45ddf16326f2107afcde139160266d069a92be9d3"
      elsif Hardware::CPU.arm?
        url "https://github.com/Endava/cats/releases/download/cats-12.0.0/cats_macos_arm64_12.0.0.tar.gz"
        sha256 "59844da949be2a0455286dcaef9a343d61166b7ac146dab5d8f0c150c7a3744c"
      end
  elsif OS.linux?
      if Hardware::CPU.intel?
        url "https://github.com/Endava/cats/releases/download/cats-12.0.0/cats_linux_amd64_12.0.0.tar.gz"
        sha256 "b92afc7046c0f87fb62dfe547d4f3a80eca1d58c465155353f5e3db0cafaafc6"
      elsif Hardware::CPU.arm?
        url "https://github.com/Endava/cats/releases/download/cats-12.0.0/cats_linux_arm64_12.0.0.tar.gz"
        sha256 "ef7630388d9093d1be2391b9bd6b4cbc737f91d4724f3fcff07d10cb8bfaa414"
      end
  else
    odie "Please use the uberjar version: https://github.com/Endava/cats/releases/download/cats-12.0.0/cats_uberjar_12.0.0.tar.gz"
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
