class Reed < Formula
  desc "Edit markdown locally in your browser"
  homepage "https://github.com/adamtootle/reed"
  version "1.0.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/adamtootle/reed/releases/download/v1.0.2/reed-macos-arm64.zip"
      sha256 "ae1cd70487b61d9e3d8d55a2a865b89c1e8f3146260fde03fa535e9d4dd8dd58"
    end

    on_intel do
      url "https://github.com/adamtootle/reed/releases/download/v1.0.2/reed-macos-x86_64.zip"
      sha256 "c3ce0704f0096fbec28fb6cb536ab7648b8ec333bf6e35e6e914b9046900e69f"
    end
  end

  def install
    bin.install "reed", "reed_reed.bundle"
  end

  test do
    assert_match "reed", shell_output("#{bin}/reed --help")
  end
end
