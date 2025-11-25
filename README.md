# Neovim

Neovim es un editor de texto de terminal basado en Vim y este a su vez se inspiró en Vi. Es conocido por su gran soporte de extensiones gracias a la incorporación del lenguage de programación Lua y su comunidad activa.  

## Instalación 

Neovim es multiplataforma, es decir, se puede instalar en cualquier sistema operativo que se desee.
<!-- Hay muchas distros y desconozco qué usa cada uno, pero he aquí una lista de las que entiendo o de las más populares que hay entre desarrolladores.
     Esas son derivadas de Debian, derivadas de RHEL, derivadas de Arch, OpenSUSE, Gentoo, NixOS, Alpine y Void. En caso de que no se use una de esas,
     se pueden usar alternativas como compilar el programa, usar Flatpak, Homebrew o Nix. Para otros sistemas se ofrece modo para Windows, MacOS y FreBSD-->
### Linux
En orden alfabetico:
- Alpine
```sh
sudo apk add neovim
```
- Arch-based distros (Manjaro, CachyOS...)
```sh
sudo pacman -S neovim
```
- Debian-based distros (Ubuntu, Mint...)
```sh
sudo apt install neovim
```
- Fedora
```sh
sudo dnf install -y neovim python3-neovim
```
- Gentoo
```sh
sudo emerge app-editors/neovim
```
- OpenSUSE
```sh
sudo zypper in neovim
```
- Void
```sh
sudo xbps-install -S neovim
```
### Otros sistemas UNIX
- FreeBSD
```sh
pkg install neovim
```
- Homebrew (Tanto disponible en Linux como MacOS)
```sh
brew install neovim
```
### Windows
```sh
winget install Neovim.Neovim
```

## Enlaces de Neovim
[Home](https://neovim.io/)

## Plugins
[Lazy.nvim](https://lazy.folke.io/)  
[mason-lspconfig.nvim](https://github.com/mason-org/mason-lspconfig.nvim)  
[nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter/tree/main)  
[blink.cmp](https://cmp.saghen.dev/)  
[nvim-autopairs](https://github.com/windwp/nvim-autopairs)  
[Comment.nvim](https://github.com/numToStr/Comment.nvim)  
