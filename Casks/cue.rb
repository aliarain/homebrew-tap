cask "cue" do
  version "0.1.0"
  sha256 "fa899f3faef81b7f13e5edc2598e620c5bdac027a6257601a2b5bc9df223a20f"

  url "https://github.com/aliarain/cue/releases/download/v#{version}/cue_#{version}_aarch64.dmg"
  name "cue"
  desc "Unmissable full-screen reminders — your Mac won't let you forget"
  homepage "https://github.com/aliarain/cue"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "cue.app"

  zap trash: [
    "~/Library/Application Support/com.aliarain.cue",
    "~/Library/Preferences/com.aliarain.cue.plist",
    "~/Library/WebKit/com.aliarain.cue",
  ]

  caveats <<~EOS
    cue is not yet signed/notarized with an Apple Developer ID.
    If macOS refuses to open it, either install without quarantine:

      brew install --cask --no-quarantine aliarain/tap/cue

    or clear the quarantine flag after install:

      xattr -cr /Applications/cue.app

    On first launch, grant Calendar access so cue can see your events.
  EOS
end
