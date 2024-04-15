# Get Short SHA Action

![CI](https://github.com/hudsonm62/short-sha/actions/workflows/ci.yml/badge.svg)
![Lint](https://github.com/hudsonm62/short-sha/actions/workflows/lint.yml/badge.svg)
![License](https://img.shields.io/github/license/hudsonm62/short-sha)
![Code Style](https://img.shields.io/badge/code%20style-prettier-F7B93E?logo=Prettier)

A dead-simple GitHub Action to quickly get the Short SHA in your workflow.

## Usage

```yaml
name: Example Workflow
on: push
jobs:
  test:
    runs-on: ubuntu-latest
    steps:
      - id: short-sha
        uses: hudsonm62/short-sha@v2
      - run: echo "${{ steps.short-sha.outputs.sha }}"
```

## Inputs

| Input        | Default             | Description                     |
| ------------ | ------------------- | ------------------------------- |
| `commit-sha` | `${{ github.sha }}` | Full length, 40 character SHA-1 |
| `length`     | `7`                 | Length of the SHA to cut        |

## Outputs

| Output | Description   |
| ------ | ------------- |
| `sha`  | The short SHA |
