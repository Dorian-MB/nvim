# Usage 
This is a personal nvim config, everything already install.


# Credit 
- [ NvChad distribution ](https://github.com/NvChad/NvChad.git)
- [Dream Of Code set-up](https://github.com/dreamsofcode-io/neovim-python)


# Installation

## Make a backup of your current Neovim files:
```bash
# required
mv ~/.config/nvim{,.bak}

# optional but recommended
mv ~/.local/share/nvim{,.bak}
mv ~/.local/state/nvim{,.bak}
mv ~/.cache/nvim{,.bak}
```

## Or - Uninstall current Neovim config :
``` bash
rm -rf ~/.config/nvim
rm -rf ~/.local/share/nvim
rm -rf ~/.local/state/nvim
rm -rf ~/.cache/nvim
```

## Install in one commande
```bash
git clone https://github.com/Dorian-MB/nvim.git ~/.config/nvim
```

Then open up neovim and let everything install.

if you need to re-install / update you can use `:MasonInstallAll` (then U to update if needed)

### Install treesitter syntax
Restart Neovim and install the treesitter syntax <br>
Exemple :
```
:TSInstall python
```

## Some Mapping :

- `<leader>` = space

- `p` - dont copy replaced text
- `<leader>p` - does

- `<leader>R` - find and replace current word

- `J`&`K` - move down/up the selected line

- `<leader>bp` - break point
- `<leader>db` - run dubug






