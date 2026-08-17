# homebrew-tap

Homebrew tap for [aliarain](https://github.com/aliarain)'s apps.

## Install cue

⚡ [cue](https://github.com/aliarain/cue) — unmissable full-screen reminders for macOS.

```bash
brew tap aliarain/tap
brew install --cask --no-quarantine cue
```

(`--no-quarantine` because cue isn't notarized yet; without it macOS Gatekeeper
will block the unsigned app and you'd need `xattr -cr /Applications/cue.app`.)
