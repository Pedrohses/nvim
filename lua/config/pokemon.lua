local M = {}

M.setup = function()
  local pokemon = require('pokemon')
  pokemon.setup({
    number = 'random',
    size = 'auto',
  })
end

return M
