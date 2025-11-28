vim.opt.number = true -- Activa los números de linea
vim.opt.relativenumber = true -- Activa los números relativos de linea, la linea superior y la inferior al cursor serán 1, las que estén a 2, tendrán 2 y así
vim.opt.scrolloff = 10 -- Cuando se sube o baja se deja un margen de 10 lineas
vim.opt.undofile = true -- Preserva el historial de cambios del archivo
vim.opt.smartintendet = true -- Se encarga el editor de preservar la identación de la linea en la que trabajemos

require("config.lazy") -- Añadimos Lazy
