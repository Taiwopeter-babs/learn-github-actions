# Learn Github Actions
This repository contains a workflow and a github javascript action

## The Action

The action prints `Hello Person` or "Hello" + the name of a person to greet to the log.

## Inputs

### `who-to-greet`

**Required** The name of the person to greet. Default is `"Person"`.

### Outputs

### `time`

The time we greeted you.

## Exanple usage

```yaml
uses: actions/learn-github-actions@@e76147da8e5c81eaf017dede5645551d4b94427b
with:
    who-to-greet: 'Taiwo the octocat'
```
