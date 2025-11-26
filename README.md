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

## Uso

En neovim ya viene un tutorial integrado y es bastante recomendado, se consigue escribiendo `:Tutor`. Sigan el tutorial y las partes más avanzadas una vez termines el básico.

## Configuración

Para configurar neovim hemos de crear un archivo lua en nuestra dirección de configuración propia de neovim, que suele ser (y la cual se recomienda) es `~/.config/nvim`. Como principal archivo de configuración tenemos `init.lua`.  
Un ejemplo de archivo de configuración sería esto:
```lua
vim.opt.number = true -- Activa los números de linea
vim.opt.relativenumber = true -- Activa los números relativos de linea, la linea superior y la inferior al cursor serán 1, las que estén a 2, tendrán 2 y así
vim.opt.scrolloff = 10 -- Cuando se sube o baja se deja un margen de 10 lineas
vim.opt.undofile = true -- Preserva el historial de cambios del archivo
vim.opt.smartintendet = true -- Se encarga el editor de preservar la identación de la linea en la que trabajemos
```

## Extensiones

Este es uno de los puntos fuertes de Neovim, su capacidad de ser extensible y tener tantas funcionalidades como nosotros deseemos.
Una de las formas más recomendadas para ello es con un gestor de extensiones como podría ser Lazy.nvim.  
Para instalarlo basta con poner el siguiente código en `init.lua`.
```lua
require("config.lazy")
```
y en el la dirección `~/.config/nvim/lua/config/lazy.lua` ponemos esto:
```lua
-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Setup lazy.nvim
require("lazy").setup({
  spec = {
    -- import your plugins
    { import = "plugins" },
  },
  -- Configure any other settings here. See the documentation for more details.
  -- colorscheme that will be used when installing plugins.
  install = { colorscheme = { "habamax" } },
  -- automatically check for plugin updates
  checker = { enabled = true },
})
```

Y con esto tenemos ya al gestor de extensiones.

### Primera extensión
Una de las extensiones más útiles disponibles para neovim es Telescope, que básicamente es una extensión que nos sirve para buscar archivos o textos dentro de archivos de una manera más comoda.

Podemos buscarlo en Dotfyle y ahí nos especificarían cómo instalarlo. En este caso, es tan sencillo que en la carpeta `~/.config/nvim/lua/plugins`, creamos un archivo lua con cualquier nombre (recordad que ha de terminar con `.lua`) y escribimos lo siguiente.
```lua
return {
     'nvim-telescope/telescope.nvim', tag = 'v0.1.9',
     dependencies = { 'nvim-lua/plenary.nvim' }
}
```
Y con esto tenemos  listo, reiniciamos neovim y veremos que se estará instalando Telescope. Podemos escribir `:Telescope find_files` para comprobar si funciona.

Pero aquí hay posiblemente muchas preguntas, ¿qué ha pasado? ¿por qué he de hacer esto así? ¿para qué? Así que respondamos esto poco a poco.
Este documento se hace sobre la versión 0.11 de neovim y la mejor forma de hacer lo que hemos de hacer es olvidandonos de gestionar las extensiones manualmente, para ello usamos Lazy.
Todo esto está sobre Lua, que es un lenguaje de programación que fácilita la vida de los desarrolladores y por lo cual pueden desarrollar adecuadamente las extensiones,
algo que no pasaba antes con Vim, ya que usaba su propio lenguaje de programación, siendo este bastante anticuado para tareas como hacer extensiones más complejas.

Pero dejemos de contexto, centremonos en qué ha pasado. Lo que pasó es que Lazy revisa en la dirección `plugins` qué hay ahí y ejecuta todas las extensiones, que han de ser 

## Enlaces de Neovim
[Home](https://neovim.io/)

## Plugins
[Lazy.nvim](https://lazy.folke.io/)  
[Dotfyle](https://dotfyle.com/)
[mason-lspconfig.nvim](https://github.com/mason-org/mason-lspconfig.nvim)  
[nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter/tree/main)  
[blink.cmp](https://cmp.saghen.dev/)  
[nvim-autopairs](https://github.com/windwp/nvim-autopairs)  
[Comment.nvim](https://github.com/numToStr/Comment.nvim)  
