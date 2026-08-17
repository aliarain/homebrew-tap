cask "cue" do
  version "0.1.0"
  sha256 "f0a0b2e17b2992b504059ae6c9235f5ae41fd1b76d66c06547db21598e848121"

  url "https://github.com/aliarain/cue/releases/download/v#{version}/cue_#{version}_aarch64.dmg"
  name "cue"
  desc "Unmissable full-screen reminders — your Mac won't let you forget"
  homepage "https://github.com/aliarain/cue"

  depends_on arch: :arm64

  app "cue.app"

  zap trash: [
    "~/Library/Application Support/com.aliarain.cue",
    "~/Library/Preferences/com.aliarain.cue.plist",
    "~/Library/WebKit/com.aliarain.cue",
  ]

  caveats <<~EOS
    cue is not yet signed/notarized with an Apple Developer ID.
    If macOS refuses to open it, trust this tap before installing:

      brew trust aliarain/tap

    or clear the quarantine flag after install:

      xattr -cr /Applications/cue.app

    On first launch, grant Calendar access so cue can see your events.
  EOS
end
