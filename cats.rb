# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Cats < Formula
  desc "CATS is a REST APIs fuzzer and negative testing tool for OpenAPI endpoints. CATS automatically  generates, runs and reports tests with minimum configuration and no coding effort. Tests are self-healing and do not require maintenance."
  homepage "https://endava.github.io/cats/"

  if OS.mac?
      if Hardware::CPU.intel?
        url "https://github.com/Endava/cats/releases/download/cats-13.6.0/cats_macos-15_amd64_13.6.0.tar.gz"
        sha256 "a6561f45d13828d8854353ec224cb964ca653deab5a31c9e6c0472528227c158"
      elsif Hardware::CPU.arm?
        url "https://github.com/Endava/cats/releases/download/cats-13.6.0/cats_macos_arm64_13.6.0.tar.gz"
        sha256 "95cb0ce256d26d1c0970b319926e59e9e36cffabcc02dc44d49fcbe5882ff928"
      end
  elsif OS.linux?
      if Hardware::CPU.intel?
        url "https://github.com/Endava/cats/releases/download/cats-13.6.0/cats_linux_amd64_13.6.0.tar.gz"
        sha256 "15bc89a3bbffc37f8c1794cdcbcd91551c20396124b9f915953557e8b7bcbd24"
      elsif Hardware::CPU.arm?
        url "https://github.com/Endava/cats/releases/download/cats-13.6.0/cats_linux_arm64_13.6.0.tar.gz"
        sha256 "d08dba761eaf886582ba90f83043fe6a3d455efc094c2b79055843d6d4941f65"
      end
  else
    odie "Please use the uberjar version: https://github.com/Endava/cats/releases/download/cats-13.6.0/cats_uberjar_13.6.0.tar.gz"
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
