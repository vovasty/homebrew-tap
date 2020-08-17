class Audiobookfetcher < Formula
  desc "Retrieves audiobooks from akniga.org"
  homepage "https://github.com/vovasty/AudioBookFetcher"
  url "https://github.com/vovasty/AudioBookFetcher.git",
    tag:      "0.2",
    revision: "22715a53502ad2b2e5388e84f3c6ff188626d3d3"
  license "MIT"
  version "0.2"
  sha256 "e06d809e67846d9d33df11658b82adf53a1395ede3ad6e7588764b6b49e23d5b"

  depends_on xcode: ["12.0", :build]

  def install
    system "swift", "build", "--disable-sandbox", "-c", "release"
    bin.install ".build/release/abookfetcher"
    doc.install "README.md"
  end
end