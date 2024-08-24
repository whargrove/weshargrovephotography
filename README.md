# Wes Hargrove Photography

[![Build Status](https://whargrove.visualstudio.com/Wes%20Hargrove%20Photography/_apis/build/status%2FWes%20Hargrove%20Photography?branchName=master)](https://whargrove.visualstudio.com/Wes%20Hargrove%20Photography/_build/latest?definitionId=1&branchName=master)

## How to Build

```zsh
make serve
```

## Adding a New Photo

1. Upload photo to blob storage
2. Create photo content

    `% hugo new photos/name.md -k photo`

3. Edit template

## Deploy

```zsh
make deploy
```

## Misc

Rename files from STDIN with bash.

Forces (for case insensitive filesystems 🛎) rename and replaces ' with empty char and space with hyphen.

```bash
rename -f -c -S "'" "" -S " " "-"
```
