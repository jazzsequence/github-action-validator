# GitHub Action Validator

[![GitHub License](https://img.shields.io/github/license/jazzsequence/github-action-validator)](https://github.com/jazzsequence/github-action-validator/blob/main/LICENSE)
[![Validate and Test](https://github.com/jazzsequence/github-action-validator/actions/workflows/test.yml/badge.svg)](https://github.com/jazzsequence/github-action-validator/actions/workflows/test.yml)

An action that validates your actions.

![Yo dawg, I heard you like actions](/assets/yo-dawg.jpg)

## What is this?

This action uses [Matt Palmer](https://github.com/mpalmer)'s [`action-validator`](https://github.com/mpalmer/action-validator) tool that validates GitHub actions. Weirdly, there's not a GitHub action that validates actions, and the suggested usage is local in a pre-commit hook. But I like using actions for everything, so I created an action that validates actions when you're running actions. 😁

`action-validator` uses Rust and, therefore the output is very Rust-y. This is cool when you're actually using Rust, but in a GitHub actions context, it's not _super_ friendly to get a bunch of Rust output in the GitHub workflow output. So, there's a Rust script that parses the Rust output wrapped in a bash script that which returns the results of the validation. (Yo dawg, I used Rust to Rust the Rust...)

## Usage
```yaml
name: Validate GitHub Actions Workflows

on:
  pull_request:
    paths:
      - '.github/workflows/*.yml'

jobs:
  validate:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout code
        uses: actions/checkout@v4

      - name: Validate GitHub Actions
        uses: jazzsequence/github-action-validator@v1
```

### Inputs

This action doesn't really need very many inputs. It will scan the default workflows directory by default so it works really without much need for config. If you _do_ want to modify anything, there are a couple things you can tweak:

#### `path-to-workflows`

If you want to check any directory that _does not match_ `.github/workflows/*.yml`, you can specify that path by adding this to your config. 

**Example:**
```yaml
	- name: Validate GitHub Actions
	  uses: jazzsequence/github-action-validator@v1
	  with:
	    path-to-workflows: '.github/actions/*.yaml'
```

#### `show-ascii-art`

By default, the validator will output some super cool Xzibit ASCII art. Don't want that in your workflow? You can turn it off.

**Example:**
```yaml
	- name: Validate GitHub Actions
	  uses: jazzsequence/github-action-validator@v1
	  with:
	    show-ascii-art: false
```