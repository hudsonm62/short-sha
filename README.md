# Get Short SHA Action

![CI](https://github.com/hudsonm62/short-sha/actions/workflows/ci.yml/badge.svg)

This action prints the Short SHA to the output for use in later actions.

## Usage

Here's an example of how to use this action:

```yaml
name: Example Workflow
on:
jobs:
  test:
    name: Test Workflow
    runs-on: ubuntu-latest
    steps:
      - id: short
        uses: hudsonm62/short-sha@v1

      - name: Print Output
        run: echo "${{ steps.short.outputs.sha }}"
```

## Inputs

| Input        | Default             | Description                     |
| ------------ | ------------------- | ------------------------------- |
| `commit-sha` | `${{ github.sha }}` | Full length, 40 character SHA-1 |

## Outputs

| Output | Description   |
| ------ | ------------- |
| `sha`  | The short SHA |
