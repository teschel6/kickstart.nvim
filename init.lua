--[[

  Neovim configuration entry point.

  Originally a single-file kickstart.nvim config, now split into modules:

    init.lua               -- leader key, globals, loads everything below
    lua/core/options.lua   -- vim.o / vim.opt settings
    lua/core/keymaps.lua   -- non plugin specific keymaps
    lua/core/autocmds.lua  -- autocommands
    lua/core/lazy.lua      -- bootstraps lazy.nvim, imports lua/plugins/*
    lua/plugins/*.lua      -- one file per plugin (or closely related group),
                              each returning a lazy.nvim spec
    lua/kickstart/plugins/ -- optional plugins from kickstart, enabled in
                              lua/plugins/kickstart.lua

  To add a plugin, drop a new file in `lua/plugins/` that returns its spec --
  nothing else needs editing.

  The original kickstart guide is still available with `:Tutor` and
  `:help kickstart`.

--]]

-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Set to true if you have a Nerd Font installed and selected in the terminal
vim.g.have_nerd_font = false

require 'core.options'
require 'core.keymaps'
require 'core.autocmds'

-- Installs lazy.nvim if needed, then loads every spec in `lua/plugins/`
require 'core.lazy'

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
