cask "runway-finance" do
  version "0.1.0"
  sha256 "e94020280d0291cf660b560c32b3e6b9c5d5d4d78ed89248c2f9f9535ff9f938"

  url "https://github.com/aliarain/runway-releases/releases/download/v#{version}/Runway_#{version}_universal.dmg"
  name "Runway"
  desc "Local-first personal finance command center"
  homepage "https://github.com/aliarain/runway-releases"

  app "Runway.app"

  caveats <<~EOS
    Runway is not notarized yet. Install with:
      brew install --cask runway-finance --no-quarantine
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
