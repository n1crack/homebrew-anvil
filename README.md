# Homebrew tap for Anvil

[Anvil](https://anvil.tr) is a local development environment for web projects.
It runs on macOS (Apple Silicon); Linux and Windows are in development.

Add the tap once:

```sh
brew tap n1crack/anvil
```

Then install the app, which carries the `anvil` CLI:

```sh
brew install --cask anvil
```

Or only the CLI:

```sh
brew install anvil
```

Pick one: both put `anvil` on PATH. Without the tap step, use the full names:
`brew install --cask n1crack/anvil/anvil` or `brew install n1crack/anvil/anvil`.
The app updates itself; `brew upgrade` updates the CLI.

The files here are updated by the [anvil](https://github.com/n1crack/anvil)
release workflow.
