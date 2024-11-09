# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Cats < Formula
  desc "CATS is a REST APIs fuzzer and negative testing tool for OpenAPI endpoints. CATS automatically  generates, runs and reports tests with minimum configuration and no coding effort. Tests are self-healing and do not require maintenance."
  homepage "https://endava.github.io/cats/"

  if OS.mac?
      if Hardware::CPU.intel?
        url "https://github.com/Endava/cats/releases/download/cats-13.0.0/cats_macos_amd64_13.0.0.tar.gz"
        sha256 "3af239ee1f409f245ecbb30eb80a272322ead6c3357b90d32faf9daeafa625e7"
      elsif Hardware::CPU.arm?
        url "https://github.com/Endava/cats/releases/download/cats-13.0.0/cats_macos_arm64_13.0.0.tar.gz"
        sha256 "9fb2eaa957519da84c8e6940b05b57be533ee323813b51c9659440a866e47cf1"
      end
  elsif OS.linux?
      if Hardware::CPU.intel?
        url "https://github.com/Endava/cats/releases/download/cats-13.0.0/cats_linux_amd64_13.0.0.tar.gz"
        sha256 "3a7a60fc34e42794e64c9e7beb7f60de4099032bc1d7c1b10f88163e8bcfc2bb"
      elsif Hardware::CPU.arm?
        url "https://github.com/Endava/cats/releases/download/cats-13.0.0/cats_linux_arm64_13.0.0.tar.gz"
        sha256 "1c7a7ad44760d4cd30ebfce2b7cc48a9a265fa6173410df5e2818257df7105ec"
      end
  else
    odie "Please use the uberjar version: https://github.com/Endava/cats/releases/download/cats-13.0.0/cats_uberjar_13.0.0.tar.gz"
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
