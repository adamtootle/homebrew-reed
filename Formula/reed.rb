class Reed < Formula
  desc "Edit markdown locally in your browser"
  homepage "https://github.com/adamtootle/reed"
  version "1.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/adamtootle/reed/releases/download/v1.1.0/reed-macos-arm64.zip"
      sha256 "17219470fb90a039d6f081027eedbd72c7ce5ef491c144405726e9676ca1fd3a"
    end

    on_intel do
      url "https://github.com/adamtootle/reed/releases/download/v1.1.0/reed-macos-x86_64.zip"
      sha256 "1af292de90d2adc5b5c08a090657d912f1ee5eba21c9df829dd529781cedb3e8"
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
