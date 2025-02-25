-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here--
vim.g.mapleader = " "
-- Copy to clipboard
vim.keymap.set("v", "<C-c>", [["+y]])
-- Select all
vim.keymap.set("n", "<C-a>", "gg<S-v>G")
-- Paste from clipboard
vim.keymap.set({ "n", "v" }, "<C-v>", [["+p]])
-- Undo
vim.keymap.set("n", "<C-z>", "u", { desc = "Undo" })
-- Redo
vim.keymap.set("n", "<C-y>", "<C-r>", { desc = "Redo" })
--delete a line
vim.keymap.set("n", "dd", "dd", { noremap = true, silent = true })

-- Increment/decrement
vim.keymap.set("n", "+", "<C-a>")
vim.keymap.set("n", "-", "<C-x>")
-- Movement
vim.keymap.set("n", "<leader>h", "<Cmd>wincmd h<CR>", { desc = "Move cursor to left window" })
vim.keymap.set("n", "<leader>j", "<Cmd>wincmd j<CR>", { desc = "Move cursor to bottomw window" })
vim.keymap.set("n", "<leader>k", "<Cmd>wincmd k<CR>", { desc = "Move cursor to top window" })
vim.keymap.set("n", "<leader>l", "<Cmd>wincmd l<CR>", { desc = "Move cursor to right window" })
vim.keymap.set("n", "<S-h>", "b", { desc = "Move backward by a word" })
vim.keymap.set("n", "<S-l>", "w", { desc = "Move forward by a word" })
--split window
vim.keymap.set("n", "sj", ":split<Return>")
vim.keymap.set("n", "sl", ":vsplit<Return>")
-- Tabs
vim.keymap.set("n", "<leader>q", "<Cmd>bprevious<CR>", { desc = "Go to previous buffer" })
vim.keymap.set("n", "<leader>p", "<Cmd>bnext<CR>", { desc = "Go to next buffer" })
vim.keymap.set("n", "<leader>w", "<Cmd>bdelete<CR>", { desc = "Delete buffer" })
vim.keymap.set("n", "<C-S>", "<Cmd>write<CR>", { desc = "Save buffer" })
-- Diagnostics
vim.keymap.set("n", "<C-j>", function()
  vim.diagnostic.goto_next()
end)

vim.keymap.set("n", "<leader>r", function()
  require("craftzdog.hsl").replaceHexWithHSL()
end)

vim.keymap.set("n", "<leader>i", function()
  require("craftzdog.lsp").toggleInlayHints()
end)

-- File tree operations
vim.keymap.set("n", "d", ":Neotree action=delete<CR>", { desc = "Delete file in file tree" })
vim.keymap.set("n", "r", ":Neotree action=rename<CR>", { desc = "Rename file in file tree" })
vim.keymap.set("n", "?", ":Neotree show_help<CR>", { desc = "Neo-tree Help", silent = true })

-- Tmux-sessionizer
vim.keymap.set("n", "<Esc>f", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
-- utils.key_mapper('n', '<leader>dn', ':lua vim.diagnostic.goto_next({float={border="rounded"}})<CR>')
-- utils.key_mapper('n', '<leader>dp', ':lua vim.diagnostic.goto_prev({float={border="rounded"}})<CR>')
-- utils.key_mapper('n', '<leader>ds', ':lua vim.diagnostic.open_float({ focusable = false, border="rounded" })<CR>')

--primagen's keybindings

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- greatest remap ever
vim.keymap.set("x", "<leader>v", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
