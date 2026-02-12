class Audiobookfetcher < Formula
  desc "Retrieves audio books from akniga.org"
  homepage "https://github.com/vovasty/AudioBookFetcher"
  url "https://github.com/vovasty/AudioBookFetcher.git",
    tag:      "0.5.3",
    revision: "5355ae8b9d634796a1653ad511a89fbfd9dc1990"
  license "MIT"
  version "0.5.3"
  sha256 "ba06e809d67846d9d33df12658b82adf53a1395ede3ad6e7588764b6b49e23d1e"

  depends_on xcode: ["15.0", :build]
  depends_on "ffmpeg"

  def install
    system "swift", "build", "--disable-sandbox", "-c", "release"
    bin.install ".build/release/abookfetcher"
    doc.install "README.md"
  end
end
