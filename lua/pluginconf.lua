-- PLUGIN CONFIGURATION

require('bufferline').setup {}

require('cmp').setup {
  mapping = {
    ['<CR>'] = function(fallback)
      if require('cmp').visible() then
        require('cmp').confirm()
      else
        fallback()
      end
    end,
  },
}

local wk = require 'which-key'

wk.setup {
  -- your existing configuration options
}

wk.add {
  { '<leader>e', group = '[E]xplorer' },
  { '<leader>ec', '<cmd>NvimTreeCollapse<CR>', desc = 'Collapse file explorer' },
  { '<leader>ee', '<cmd>NvimTreeFocus<CR>', desc = 'Toggle file explorer' },
  { '<leader>ef', '<cmd>NvimTreeFindFileToggle<CR>', desc = 'Toggle file explorer on current file' },
  { '<leader>er', '<cmd>NvimTreeRefresh<CR>', desc = 'Refresh file explorer' },
  { '<leader>o', group = '[O]pen' },
  { '<leader>ot', '<cmd>terminal<CR>', desc = 'Open a terminal in a new buffer' },
}

--[[
wk.register({
  o = {
    name = '[O]pen',
    t = { '<cmd>ToggleFunction<CR>', 'Toggle Function' },
  },
  e = {
    e = { '<cmd>NvimTreeFocus<CR>', 'Toggle file explorer' }, -- toggle file explorer
    f = { '<cmd>NvimTreeFindFileToggle<CR>', 'Toggle file explorer on current file' }, -- toggle file explorer on current file
    c = { '<cmd>NvimTreeCollapse<CR>', 'Collapse file explorer' }, -- collapse file explorer
    r = { '<cmd>NvimTreeRefresh<CR>', 'Refresh file explorer' }, -- refresh file explorer
  },
}, { prefix = '<leader>' })
]]
