local alpha = require('alpha')
local dashboard = require('alpha.themes.dashboard')

local M = {}

M.setup = function()
  -- Configuração do Pokemon
  local pokemon = require('pokemon')
  pokemon.setup({
    number = 'random',
    size = 'auto',
  })

  -- Definindo o cabeçalho do dashboard
  dashboard.section.header.val = pokemon.header()

  -- Configuração do Alpha
  alpha.setup(dashboard.config)
end

return M
