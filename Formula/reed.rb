class Reed < Formula
  desc "Edit markdown locally in your browser"
  homepage "https://github.com/adamtootle/reed"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/adamtootle/reed/releases/download/v1.0.0/reed-macos-arm64.zip"
      sha256 "8eaa98e9d4da43a674c4c0d59a5ef18abd46e36b992c26e710a0d94211c97dbc"
    end

    on_intel do
      url "https://github.com/adamtootle/reed/releases/download/v1.0.0/reed-macos-x86_64.zip"
      sha256 "71df282c6d69f88a17770ff29e6cbe8f0e1a3418444200bd0493f0a3e26db8ea"
    end
  end

  def install
    bin.install "reed"
  end

  test do
    assert_match "reed", shell_output("#{bin}/reed --help")
  end
end
