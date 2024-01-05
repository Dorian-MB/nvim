# Credit 
- [ NvChad distribution ](https://github.com/NvChad/NvChad.git)
- [Dream Of Code set-up](https://github.com/dreamsofcode-io/neovim-python)


# Instalation

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
```

## Install in one commande
```bash
git clone https://github.com/Dorian-MB/nvim.git ~/.config/nvim
```

Then open up neovim and let everything install.

Restart Neovim and install the treesitter syntax

```
:TSInstall python
```
