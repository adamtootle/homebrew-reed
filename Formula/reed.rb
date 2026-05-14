class Reed < Formula
  desc "Edit markdown locally in your browser"
  homepage "https://github.com/adamtootle/reed"
  version "1.0.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/adamtootle/reed/releases/download/v1.0.3/reed-macos-arm64.zip"
      sha256 "5a8be58fae0e2095de9f6a046281e3597ca18721b1714ea875b192db2b57cd35"
    end

    on_intel do
      url "https://github.com/adamtootle/reed/releases/download/v1.0.3/reed-macos-x86_64.zip"
      sha256 "c69fbd9d57bd7c5a591201173e7c701a0190bbd0f1b9ced74020e142c2652df3"
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
