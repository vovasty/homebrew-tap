class Audiobookfetcher < Formula
  desc "Retrieves audio books from akniga.org"
  homepage "https://github.com/vovasty/AudioBookFetcher"
  url "https://github.com/vovasty/AudioBookFetcher.git",
    tag:      "0.5.0",
    revision: "3691a48029239b872e6a8a4fde71a09f7ab40f10"
  license "MIT"
  version "0.4.7"
  sha256 "a06d809e67846d9d33df12658b82adf53a1395ede3ad6e7588764b6b49e23d1e"

  depends_on xcode: ["15.0", :build]
  depends_on "ffmpeg"

  def install
    system "swift", "build", "--disable-sandbox", "-c", "release"
    bin.install ".build/release/abookfetcher"
    doc.install "README.md"
  end
end
