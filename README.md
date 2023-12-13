# nvim

Uses https://www.lazyvim.org/

## Prereq

### Windows

```
> choco install powershell-core neovim ripgrep fd firacodenf
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
https://github.com/rebelot/kanagawa.nvim/blob/master/extras/windows_terminal.json

#### Treesitter

https://github.com/nvim-treesitter/nvim-treesitter/wiki/Windows-support

Run from prompt with vcvars.bat applied to get access to cl.exe.
