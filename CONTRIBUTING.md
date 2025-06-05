# Contributing (for developers of this tap)

## Updating `beeai` version

Pre-requisites: `brew`, `git`, `mise`.

1. Publish `beeai-cli` to PyPI (see main repo)
2.
```bash
# tap the tap
brew tap i-am-bee/beeai

# cd into the repo
cd $(brew --repo i-am-bee/beeai)

# optional: change Git URL to SSH (it will be HTTP by default)
git remote set-url origin git@github.com:i-am-bee/homebrew-beeai.git

# create a PR using GitHub CLI
mise pr-update
```
3. **⚠️ Do not merge the PR** -- instead, tag the PR with `pr-pull`, and the Action will automatically merge it, ensuring that the correct bottles are referenced.
