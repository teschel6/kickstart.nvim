-- Optional plugins that ship with kickstart.nvim.
--
-- The specs live in `lua/kickstart/plugins/` (unmodified upstream files);
-- uncomment a line here to enable one, and restart nvim.

return {
  -- require 'kickstart.plugins.debug',
  -- require 'kickstart.plugins.indent_line',
  -- require 'kickstart.plugins.lint',
  -- require 'kickstart.plugins.autopairs',
  require 'kickstart.plugins.neo-tree',
  -- require 'kickstart.plugins.gitsigns', -- adds gitsigns recommend keymaps
}

-- vim: ts=2 sts=2 sw=2 et
