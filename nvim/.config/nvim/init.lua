-- Change the leader key to space
vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })


-- Install lazy.nvim if it's not installed
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    lazypath,
  })
end

local opts = vim.opt

opts.rtp:prepend(lazypath)

-- Use spaces instead of tabs
opts.expandtab = true

-- Number of spaces a <Tab> inserts
opts.tabstop = 4

-- Number of spaces for autoindent, >>, <<, etc.
opts.shiftwidth = 4

-- Number of spaces for <Tab> in insert mode
opts.softtabstop = 4

-- show the actual line number for the current line
opts.number = true        

-- show relative numbers for all other lines
opts.relativenumber = true 

opts.signcolumn = "yes:1"

local map = vim.keymap.set

map("n", "<leader>e", ":Neotree toggle<CR>", { desc = "Toggle Neo-tree" })

-- Load plugins from lua/plugins/
require("lazy").setup("plugins")

