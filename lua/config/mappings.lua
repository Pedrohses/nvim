local map = vim.keymap.set

local mappings = {
  e = { '<cmd>NvimTreeToggle<cr>', 'File Explorer'},
  f = { '<cmd>NvimTreeFocus<cr>', 'Focus Explorer' },
  F = { '<cmd>Telescope find_files<cr>', 'Fuzzy Finder' },
  q = { '<cmd>quit<cr>', 'Quit'},
  Q = { '<cmd>quitall<cr>', 'Exit'},
  w = { '<cmd>update<cr>', 'Save'},
  s = {
    name = 'Search',
    f = { '<cmd>Telescope find_files<cr>', 'Files' },
    w = { '<cmd>Telescope live_grep<cr>', 'Words' },
    k = { '<cmd>Telescope keymaps<cr>', 'Keymaps' },
    h = { '<cmd>Telescope help_tags<cr>', 'Help Tags' },
    c = { '<cmd>Telescope commands<cr>', 'Commands' },
  },
  p = {
    name = 'Package manager',
    p = { '<cmd>Mason<cr>', 'Open Package Manager' },
    u = { '<cmd>MasonUpdate<cr>', 'Update Packages' },
    d = { '<cmd>MasonUninstallAll<cr>', 'Uninstall All Packages' }
  },
  t = {
    name = 'Terminal',
    o = { '<cmd>ToggleTerm 1 direction=horizontal<cr>', 'Open Terminal 1' },
    s = { '<cmd>ToggleTerm 2 direction=horizontal<cr>', 'Open Terminal 2' },
    t = { '<cmd>ToggleTerm 3 direction=horizontal<cr>', 'Open Terminal 3' },
  }
}
map('n', 'ss', '<cmd>split<cr>')
map('n', 'sv', '<cmd>vsplit<cr>')

return mappings
