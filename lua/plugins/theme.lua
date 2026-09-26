-- Colorscheme
--
-- To switch themes, point `colorscheme` at one of the names below (or add a new
-- plugin spec to this file and use its name).
-- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.

-- local colorscheme = 'tokyonight-night'
-- local colorscheme = 'tokyonight-storm'
local colorscheme = 'tokyonight-moon'
-- local colorscheme = 'tokyonight-day'
-- local colorscheme = 'minicyan'
return {
  { -- You can easily change to a different colorscheme.
    -- Change the name of the colorscheme plugin below, and then
    -- change `colorscheme` above to whatever the name of that colorscheme is.
    'folke/tokyonight.nvim',
    priority = 1000, -- Make sure to load this before all the other start plugins.
    config = function()
      ---@diagnostic disable-next-line: missing-fields
      require('tokyonight').setup {
        styles = {
          comments = { italic = false }, -- Disable italics in comments
        },
      }

      -- Load the colorscheme here.
      vim.cmd.colorscheme(colorscheme)
    end,
  },
}

-- vim: ts=2 sts=2 sw=2 et
