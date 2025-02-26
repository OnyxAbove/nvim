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
