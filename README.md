# nvchad

![image](https://github.com/tallestlegacy/nvchad/assets/71118951/29da8c8d-9b34-410e-bd36-9074e5ae190d)


### Installation

You need to close nvchad's implementation and then clone this repo into the lua folder

```sh 
# remove any existins configs
rm -rf ~/.config/nvim
rm -rs ~/.local/share/nvim 


# install nvchad
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 &&

# cd into the configs folder
cd ~/.config/nvim/lua

# clone my configs to a custom folder
git clone https://github.com/tallestlegacy/nvchad.git custom
```

### Features

1. Everything on [NvChad](https://nvchad.com/)
2. `null-ls` lspconfig for `js,ts,lua,go` and `rust`
3. starter `lsp-config`
