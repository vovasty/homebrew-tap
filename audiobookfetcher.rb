class Audiobookfetcher < Formula
  desc "Retrieves audio books from akniga.org"
  homepage "https://github.com/vovasty/AudioBookFetcher"
  url "https://github.com/vovasty/AudioBookFetcher.git",
    tag:      "0.4",
    revision: "d989555a900c09d2eb7abd452cc5b73461ae96ee"
  license "MIT"
  version "0.4"
  sha256 "e06d809e67846d9d33df11658b82adf53a1395ede3ad6e7588764b6b49e23d5c"

  depends_on xcode: ["15.0", :build]
  depends_on "ffmpeg"

  def install
    system "swift", "build", "--disable-sandbox", "-c", "release"
    bin.install ".build/release/abookfetcher"
    doc.install "README.md"
  end
end
