# Wes Hargrove Photography

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
