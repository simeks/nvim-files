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
| `==`    | N | Autoindent


### Movement
| Cmd     |   | Desc
|---------|---|--------------
| `w`     | N | Next word
| `e`     | N | Next end of word
| `b`     | N | Prev word
| `<C-u>` | N | Move half page up
| `<C-d>` | N | Move half page down
| `<C-y>` | N | Move screen up
| `<C-e>` | N | Move screen down
| `zz`    | N | Move screen to center cursor
| `zt`    | N | Move screen to put cursor on top
| `%`     | N | Move to matching pair
| `[m`    | N | Prev method start (`M` end)
| `]m`    | N | Next method start (`M` end)
| `;`     | N | Repeat motion
| `,`     | N | Repeat motion backwards
| `{`     | N | Prev empty line
| `}`     | N | Next empty line

#### Horizontal
| `F*`    | N | Prev *
| `f*`    | N | Next *
| `T*`    | N | (char before) Prev *
| `t*`    | N | (char before) Next *


### Selection
| Cmd     |    | Desc
|---------|----|------------------
| ` y`    | NV | Yank to OS clipboard
| `v`     | N  | Select characters
| `V`     | N  | Select lines
| `<C-q>` | N  | Select block
| `O`     | V  | Swap end
| `gv`    | N  | Reselect previous selection
| `vf,`   | N  | Select up to ,
| `vi(`   | N  | Select inside ()
| `va(`   | N  | Select around ()
| `yi(`   | N  | Yank inside ()
| `ya(`   | N  | Yank around ()
| `di(`   | N  | Delete inside ()
| `da(`   | N  | Delete around ()
| `ci(`   | N  | Replace inside ()
| `ca(`   | N  | Replace around ()


### Modify selections
| Cmd     |   | Desc
|---------|---|------------------
| `I`     | V | Insert before selection (multi-line)
| `A`     | V | Insert after selection (multi-line)

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
| `<C-g>`     | I | Complete
| `<C-e>`     | I | Abort (close window)
| `<C-n>`     | I | Select next item
| `<C-p>`     | I | Select prev item
| `<C-d>`     | I | Scroll docs(-4)
| `<C-f>`     | I | Scroll docs(4)

### Cool

* `:CellularAutomaton make_it_rain`
* ` ts` switch between themes.


