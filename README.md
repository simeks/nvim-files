# nvim

## Prereq

### Windows

```
> choco install powershell-core
> choco install neovim
> choco install ripgrep
> choco install fd
> choco install firacodenf
```

#### Windows terminal

```json
    "profiles": 
    {
        "defaults": 
        {
            "font": 
            {
                "face": "FiraCode NF"
            },
            "opacity": 95,
            "startingDirectory": "C:\\projects",
            "useAcrylic": false
        }
    }
```

#### Treesitter

https://github.com/nvim-treesitter/nvim-treesitter/wiki/Windows-support

### glsl_analyzer

https://github.com/nolanderc/glsl_analyzer

install to path

## Keys

### Edit
| Cmd     |   | Desc
|---------|---|--------------
| `i`     | N | Insert before
| `a`     | N | Insert after (append)
| `c`     | V | Remove selection and insert


### Movement
| Cmd     |   | Desc
|---------|---|--------------
| `<C-y>` | N | Move screen up
| `<C-e>` | N | Move screen down
| `zz`    | N | Move screen to center cursor
| `zt`    | N | Move screen to put cursor on top

### Selection
| Cmd     |   | Desc
|---------|---|------------------
| `v`     | N | Select characters
| `V`     | N | Select lines
| `<C-q>` | N | Select block
| `gv`    | N | Reselect previous selection

### Modify selections
| Cmd     |   | Desc
|---------|---|------------------
| `I`     | V | Insert before selection (multi-line)
| `A`     | V | Insert after selection (multi-line)

### Cool

* `:CellularAutomaton make_it_rain`
* ` ts` switch between themes.

### Copilot

| Cmd     |   | Desc
|---------|---|------------------
| `<M-l>` | I | Accept suggestion
| `<M-]>` | I | Next suggestion
| `<M-[>` | I | Prev suggestion
| `<C-]>` | I | Dismiss suggestion

### cmp

| Cmd         |   | Desc
|-------------|---|------------------
| `<C-g>` | I | Complete
| `<C-e>`     | I | Abort (close window)
| `<C-n>`     | I | Select next item
| `<C-p>`     | I | Select prev item
| `<C-d>`     | I | Scroll docs(-4)
| `<C-f>`     | I | Scroll docs(4)



