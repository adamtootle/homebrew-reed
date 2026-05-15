class Reed < Formula
  desc "Edit markdown locally in your browser"
  homepage "https://github.com/adamtootle/reed"
  version "1.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/adamtootle/reed/releases/download/v1.2.0/reed-macos-arm64.zip"
      sha256 "889b7ccb4d3c7b61e04e6afe0263405937edc6d5eb9a1edd0aca66ec355b0d50"
    end

    on_intel do
      url "https://github.com/adamtootle/reed/releases/download/v1.2.0/reed-macos-x86_64.zip"
      sha256 "a353037080dcf68086fff8298d3dad80b6204a38de777b59343027c0b8a9913b"
    end
  end

  def install
    libexec.install "reed", "reed_reed.bundle"
    bin.write_exec_script libexec/"reed"
  end

  test do
    assert_match "reed", shell_output("#{bin}/reed --help")
  end
end
