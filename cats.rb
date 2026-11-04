# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Cats < Formula
  desc "CATS is a REST APIs fuzzer and negative testing tool for OpenAPI endpoints. CATS automatically  generates, runs and reports tests with minimum configuration and no coding effort. Tests are self-healing and do not require maintenance."
  homepage "https://endava.github.io/cats/"

  if OS.mac?
      if Hardware::CPU.intel?
        url "https://github.com/Endava/cats/releases/download/cats-15.4.0/cats_macos_amd64_15.4.0.tar.gz"
        sha256 "5fe6662d15e29dadc8cd80bb5054136dd752c39d04f7912fa93c33e373bef182"
      elsif Hardware::CPU.arm?
        url "https://github.com/Endava/cats/releases/download/cats-15.4.0/cats_macos_arm64_15.4.0.tar.gz"
        sha256 "bb94161950427bd209424425e620c89fa667df56fc5cf9e7645d7c310363edd0"
      end
  elsif OS.linux?
      if Hardware::CPU.intel?
        url "https://github.com/Endava/cats/releases/download/cats-15.4.0/cats_linux_amd64_15.4.0.tar.gz"
        sha256 "ef6ee7670235aa63ef56293d91b8995c3858fb9f08b66f496d0d1d11eb7e7c7a"
      elsif Hardware::CPU.arm?
        url "https://github.com/Endava/cats/releases/download/cats-15.4.0/cats_linux_arm64_15.4.0.tar.gz"
        sha256 "6719e668c6fdef44c7af0fb106828efa73bae868a40ae758c009723551621a36"
      end
  else
    odie "Please use the uberjar version: https://github.com/Endava/cats/releases/download/cats-15.4.0/cats_uberjar_15.4.0.tar.gz"
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
