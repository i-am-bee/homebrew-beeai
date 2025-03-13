# Contributing

## Updating this tap (for developers)

First ensure that you have the tap added with `brew tap i-am-bee/beeai`. Then update formulae with:

### `beeai`

First, make sure that `beeai-cli` and its dependencies are released to PyPI. Then use `brew bump-formula-pr i-am-bee/beeai/beeai --python-exclude-packages gnureadline,setuptools,certifi --version ...` to create a PR updating the version and dependency versions. Wait for the checks to complete -- this make take up to one hour. **⚠️ Do not merge the PR** -- instead, tag the PR with `pr-pull`, and the Action will automatically merge it, ensuring that the correct bottles are referenced.

### `otelcol-contrib`

Check the latest version at [the releases page](https://github.com/open-telemetry/opentelemetry-collector-releases/releases). Then use `brew bump-formula-pr i-am-bee/beeai/otelcol-contrib --version ...` to create a PR updating the version and dependency versions. Wait for the checks to complete -- this make take up to one hour. **⚠️ Do not merge the PR** -- instead, tag the PR with `pr-pull`, and the Action will automatically merge it, ensuring that the correct bottles are referenced.

### `arize-phoenix`

Check the latest version at [the releases page](https://github.com/Arize-ai/phoenix/releases). Open the file `Formula/arize-phoenix.rb`, look for `resource "sqlean-py"` and cut (CTRL+X) that resource block. Then use `brew bump-formula-pr i-am-bee/beeai/arize-phoenix --python-exclude-packages certifi,cffi,cryptography,numpy,scipy,six --write-only --version ...` to update the versions. Next, replace the newly created `resource "sqlean-py"` block with the old one (in your clipboard). Manually create a new PR. Wait for the checks to complete -- this make take up to one hour. **⚠️ Do not merge the PR** -- instead, tag the PR with `pr-pull`, and the Action will automatically merge it, ensuring that the correct bottles are referenced.

> Why the contrived way? Homebrew can only automatically update formulae where all of the resources are from PyPI. Sadly `sqlean-py` is broken on PyPI and we have to install it from GitHub. The easiest way is thus to temporarily remove it when updating the formula, and place it back afterwards.

### Update multiple formulae at once

By using `brew bump-formula-pr` with `--write-only`, you can update several formulae before creating your PR.
