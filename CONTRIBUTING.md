# Contributing

## Updating this tap (for developers)

First ensure that you have the tap added with `brew tap i-am-bee/beeai`. Then update formulae with:

### `beeai`

First, make sure that `beeai-cli` and its dependencies are released to PyPI. Then copy the latest release URL and hash from PyPI interface into the formula and create a new PR. **⚠️ Do not merge the PR** -- instead, tag the PR with `pr-pull`, and the Action will automatically merge it, ensuring that the correct bottles are referenced.
