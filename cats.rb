# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Cats < Formula
  desc "CATS is a REST APIs fuzzer and negative testing tool for OpenAPI endpoints. CATS automatically  generates, runs and reports tests with minimum configuration and no coding effort. Tests are self-healing and do not require maintenance."
  homepage "https://endava.github.io/cats/"

  if OS.mac?
      if Hardware::CPU.intel?
        url "https://github.com/Endava/cats/releases/download/cats-11.0.0/cats_macos_amd64_11.0.0.tar.gz"
        sha256 ""
      elsif Hardware::CPU.arm?
        url "https://github.com/Endava/cats/releases/download/cats-11.0.0/cats_macos_arm64_11.0.0.tar.gz"
        sha256 "79d1742fae1ba3d0eec2b840de149f447a2f89e1d4d0ad9570c3070a344b8f2b"
      end
  elsif OS.linux?
      if Hardware::CPU.intel?
        url "https://github.com/Endava/cats/releases/download/cats-11.0.0/cats_linux_amd64_11.0.0.tar.gz"
        sha256 "da7b188e84ff56417d67141a5dc97b41aeac9c9f28c51b9f9f7678a923beab19"
      elsif Hardware::CPU.arm?
        url "https://github.com/Endava/cats/releases/download/cats-11.0.0/cats_linux_arm64_11.0.0.tar.gz"
        sha256 "16a60418b74543364456a560d06b696655eea4f4e8d20bac0e5f5f68b665e3ae"
      end
  else
    odie "Please use the uberjar version: https://github.com/Endava/cats/releases/download/cats-11.0.0/cats_uberjar_11.0.0.tar.gz"
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
