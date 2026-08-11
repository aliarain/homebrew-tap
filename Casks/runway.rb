cask "runway" do
  version "0.1.0"
  sha256 "12438a60b3a941684c49f157aff4a969d12c7cd8a9bd04a8d845642a7039dbe5"

  url "https://github.com/aliarain/runway-releases/releases/download/v#{version}/Runway_#{version}_aarch64.dmg"
  name "Runway"
  desc "Local-first personal finance command center"
  homepage "https://github.com/aliarain/runway-releases"

  depends_on arch: :arm64

  app "Runway.app"

  caveats <<~EOS
    Runway is not notarized yet. Install with:
      brew install --cask runway --no-quarantine
    or, after macOS blocks the first launch, allow it via
    System Settings → Privacy & Security → "Open Anyway".

    Your data lives in ~/.runway-fin and is never touched by
    install or uninstall (only by `brew uninstall --zap`).
  EOS

  zap trash: [
    "~/.runway-fin",
    "~/Library/Application Support/com.runway.money",
  ]
end
