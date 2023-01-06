# OSC52

## Description

A script to forward information from stdin to system clipboard using the [ANSI OSC52](https://invisible-island.net/xterm/ctlseqs/ctlseqs.html#h3-Operating-System-Commands) sequence.

## Installation

```bash
cabal install
```

It can be also installed by nix.

## Example

`echo -n 11111 | osc52` will send 11111 to your clipboard.

## Credits

- [vim-ocsyank](https://github.com/ojroques/vim-oscyank)
- [osc52 (implemented by go)](https://github.com/theimpostor/osc52)
