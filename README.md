# Homebrew Tap

Personal tap for [aliarain](https://github.com/aliarain)'s apps.

```bash
brew tap aliarain/tap
```

## cue

⚡ [cue](https://github.com/aliarain/cue) — unmissable full-screen reminders for macOS.

```bash
brew install --cask --no-quarantine cue
```

(`--no-quarantine` because cue isn't notarized yet; without it macOS Gatekeeper
will block the unsigned app and you'd need `xattr -cr /Applications/cue.app`.)

## Runway

[Runway](https://github.com/aliarain/runway-releases) — personal finance.

```bash
brew install --cask --no-quarantine runway-finance
```
