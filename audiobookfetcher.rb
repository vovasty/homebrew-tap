class Audiobookfetcher < Formula
  desc "Retrieves audio books from akniga.org"
  homepage "https://github.com/vovasty/AudioBookFetcher"
  url "https://github.com/vovasty/AudioBookFetcher.git",
    tag:      "0.4.7",
    revision: "e6b8bab3ef0e5c29f6d7355148ccd3099845e4b9"
  license "MIT"
  version "0.4.7"
  sha256 "a06d809e67846d9d33df12658b82adf53a1395ede3ad6e7588764b6b49e23d5e"

  depends_on xcode: ["15.0", :build]
  depends_on "ffmpeg"

  def install
    system "swift", "build", "--disable-sandbox", "-c", "release"
    bin.install ".build/release/abookfetcher"
    doc.install "README.md"
  end
end
