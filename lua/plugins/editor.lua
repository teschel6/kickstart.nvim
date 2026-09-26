-- Small quality-of-life plugins that don't need a file of their own.

return {
  'NMAC427/guess-indent.nvim', -- Detect tabstop and shiftwidth automatically

  -- Highlight todo, notes, etc in comments
  { 'folke/todo-comments.nvim', event = 'VimEnter', dependencies = { 'nvim-lua/plenary.nvim' }, opts = { signs = false } },
}

-- vim: ts=2 sts=2 sw=2 et
