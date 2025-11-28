return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  branch = 'main',
  build = ':TSUpdate',
  config = function()
     require('nvim-treesitter').install({ 'lua', 'html', 'css', 'javascript', 'typescript', 'angular', 'php', 'java', 'properties', 'dockerfile', 'bash', 'markdown'}) -- Lista de lenguajes de nuestro interes
  end
}
