class Reed < Formula
  desc "Edit markdown locally in your browser"
  homepage "https://github.com/adamtootle/reed"
  version "1.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/adamtootle/reed/releases/download/v1.0.1/reed-macos-arm64.zip"
      sha256 "e4c92bce805c30bc6e369c808a676ee596e6d8a88a3e730eac178b6cd95a1091"
    end

    on_intel do
      url "https://github.com/adamtootle/reed/releases/download/v1.0.1/reed-macos-x86_64.zip"
      sha256 "153307f6862cf912336aaf59d63c626d0471274b9bcffeae3ac40dd216c37131"
    end
  end

  def install
    bin.install "reed"
  end

  test do
    assert_match "reed", shell_output("#{bin}/reed --help")
  end
end
