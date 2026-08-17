# Homebrew Tap

Personal tap for [aliarain](https://github.com/aliarain)'s apps.

```bash
brew tap aliarain/tap
brew trust aliarain/tap
```

(`brew trust` because these apps aren't notarized yet; without it macOS
Gatekeeper blocks the unsigned apps and you'd need `xattr -cr` after install.
On older Homebrew, pass `--no-quarantine` to `brew install` instead.)

## cue

⚡ [cue](https://github.com/aliarain/cue) — unmissable full-screen reminders for macOS.

```bash
brew install --cask cue
```

## Runway

[Runway](https://github.com/aliarain/runway-releases) — personal finance.

```bash
brew install --cask runway-finance
```
