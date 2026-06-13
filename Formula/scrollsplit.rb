class Scrollsplit < Formula
  desc "Separate natural scrolling settings for a mouse and trackpad on macOS"
  homepage "https://github.com/knothhe/scroll-split"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/knothhe/scroll-split/releases/download/v0.1.0/scrollsplit-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "984b9a168aae5c781d16e177e76bb6436878714f88119d90a11a90be8198e2ab"
    else
      url "https://github.com/knothhe/scroll-split/releases/download/v0.1.0/scrollsplit-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "cb59ff6dea44f9a42be68f6da9c562e21b27b096ae97426ef3572980248cdc6b"
    end
  end

  def install
    bin.install "scrollsplit"
  end

  service do
    run [opt_bin/"scrollsplit", "run"]
    keep_alive true
    process_type :interactive
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/scrollsplit --version")
  end
end
