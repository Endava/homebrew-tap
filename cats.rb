# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Cats < Formula
  desc "CATS is a REST APIs fuzzer and negative testing tool for OpenAPI endpoints. CATS automatically  generates, runs and reports tests with minimum configuration and no coding effort. Tests are self-healing and do not require maintenance."
  homepage "https://endava.github.io/cats/"

  if OS.mac?
      if Hardware::CPU.intel?
        url "https://github.com/Endava/cats/releases/download/cats-9.0.4/cats_macos_amd64_9.0.4.tar.gz"
        sha256 ""
      elsif Hardware::CPU.arm?
        url "https://github.com/Endava/cats/releases/download/cats-9.0.4/cats_macos_arm64_9.0.4.tar.gz"
        sha256 "ecc301c966e905e04bc91d0c2b0b7f6b1f6f74228912dfb3414d8c7a018af4f5"
      end
  elsif OS.linux?
      if Hardware::CPU.intel?
        url "https://github.com/Endava/cats/releases/download/cats-9.0.4/cats_linux_amd64_9.0.4.tar.gz"
        sha256 "eb998674b1a8c639cfa86967893c540954272f7cc6b0fe7dfaeb593f58b0e723"
      elsif Hardware::CPU.arm?
        url "https://github.com/Endava/cats/releases/download/cats-9.0.4/cats_linux_arm64_9.0.4.tar.gz"
        sha256 "4d580d3da54039fc4fdace04870d5bab2c7de66268f9c03c3e7fc8176b080742"
      end
  else
    odie "Please use the uberjar version: https://github.com/Endava/cats/releases/download/cats-9.0.4/cats_uberjar_9.0.4.tar.gz"
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
# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Cats < Formula
  desc "CATS is a REST APIs fuzzer and negative testing tool for OpenAPI endpoints. CATS automatically  generates, runs and reports tests with minimum configuration and no coding effort. Tests are self-healing and do not require maintenance."
  homepage "https://endava.github.io/cats/"

  if OS.mac?
      if Hardware::CPU.intel?
        url "https://github.com/Endava/cats/releases/download/cats-9.0.4/cats_macos_amd64_9.0.4.tar.gz"
        sha256 ""
      elsif Hardware::CPU.arm?
        url "https://github.com/Endava/cats/releases/download/cats-9.0.4/cats_macos_arm64_9.0.4.tar.gz"
        sha256 "ecc301c966e905e04bc91d0c2b0b7f6b1f6f74228912dfb3414d8c7a018af4f5"
      end
  elsif OS.linux?
      if Hardware::CPU.intel?
        url "https://github.com/Endava/cats/releases/download/cats-9.0.4/cats_linux_amd64_9.0.4.tar.gz"
        sha256 "eb998674b1a8c639cfa86967893c540954272f7cc6b0fe7dfaeb593f58b0e723"
      elsif Hardware::CPU.arm?
        url "https://github.com/Endava/cats/releases/download/cats-9.0.4/cats_linux_arm64_9.0.4.tar.gz"
        sha256 "4d580d3da54039fc4fdace04870d5bab2c7de66268f9c03c3e7fc8176b080742"
      end
  else
    odie "Please use the uberjar version: https://github.com/Endava/cats/releases/download/cats-9.0.4/cats_uberjar_9.0.4.tar.gz"
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
# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Cats < Formula
  desc "CATS is a REST APIs fuzzer and negative testing tool for OpenAPI endpoints. CATS automatically  generates, runs and reports tests with minimum configuration and no coding effort. Tests are self-healing and do not require maintenance."
  homepage "https://endava.github.io/cats/"

  if OS.mac?
      if Hardware::CPU.intel?
        url "https://github.com/Endava/cats/releases/download/cats-9.0.4/cats_macos_amd64_9.0.4.tar.gz"
        sha256 ""
      elsif Hardware::CPU.arm?
        url "https://github.com/Endava/cats/releases/download/cats-9.0.4/cats_macos_arm64_9.0.4.tar.gz"
        sha256 "ecc301c966e905e04bc91d0c2b0b7f6b1f6f74228912dfb3414d8c7a018af4f5"
      end
  elsif OS.linux?
      if Hardware::CPU.intel?
        url "https://github.com/Endava/cats/releases/download/cats-9.0.4/cats_linux_amd64_9.0.4.tar.gz"
        sha256 "eb998674b1a8c639cfa86967893c540954272f7cc6b0fe7dfaeb593f58b0e723"
      elsif Hardware::CPU.arm?
        url "https://github.com/Endava/cats/releases/download/cats-9.0.4/cats_linux_arm64_9.0.4.tar.gz"
        sha256 "4d580d3da54039fc4fdace04870d5bab2c7de66268f9c03c3e7fc8176b080742"
      end
  else
    odie "Please use the uberjar version: https://github.com/Endava/cats/releases/download/cats-9.0.4/cats_uberjar_9.0.4.tar.gz"
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
