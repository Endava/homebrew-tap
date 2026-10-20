# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Cats < Formula
  desc "CATS is a REST APIs fuzzer and negative testing tool for OpenAPI endpoints. CATS automatically  generates, runs and reports tests with minimum configuration and no coding effort. Tests are self-healing and do not require maintenance."
  homepage "https://endava.github.io/cats/"

  if OS.mac?
      if Hardware::CPU.intel?
        url "https://github.com/Endava/cats/releases/download/cats-15.0.1/cats_macos_amd64_15.0.1.tar.gz"
        sha256 "61d0ac598f4dd7530be4ff37c86101c4d7e7eef880fe38bdf79e004dbb74fb37"
      elsif Hardware::CPU.arm?
        url "https://github.com/Endava/cats/releases/download/cats-15.0.1/cats_macos_arm64_15.0.1.tar.gz"
        sha256 "688c4906efccb83ec2bce09867a9f599f3e558756635c22ea29424d5193e1a1e"
      end
  elsif OS.linux?
      if Hardware::CPU.intel?
        url "https://github.com/Endava/cats/releases/download/cats-15.0.1/cats_linux_amd64_15.0.1.tar.gz"
        sha256 "de579d32d5770aaced226c765cade6465dc5f4c943514cf6013a7a85c36fa338"
      elsif Hardware::CPU.arm?
        url "https://github.com/Endava/cats/releases/download/cats-15.0.1/cats_linux_arm64_15.0.1.tar.gz"
        sha256 "01bd07ec600fe12127cc3423fd424163476d019f985654c894ea52db9ceabfa3"
      end
  else
    odie "Please use the uberjar version: https://github.com/Endava/cats/releases/download/cats-15.0.1/cats_uberjar_15.0.1.tar.gz"
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
