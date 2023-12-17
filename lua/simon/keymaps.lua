local opts = { noremap = true, silent = true }

vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.keymap.set('i', '<C-j>', '<esc>')
vim.keymap.set('v', '<C-j>', '<esc>')

-- window
vim.keymap.set("n", "<leader>ww", "<C-W>p", { desc = "Other window" })
vim.keymap.set("n", "<leader>wd", "<C-W>c", { desc = "Delete window" })
vim.keymap.set("n", "<leader>w-", "<C-W>s", { desc = "Split window below" })
vim.keymap.set("n", "<leader>w|", "<C-W>v", { desc = "Split window right" })
vim.keymap.set("n", "<leader>-", "<C-W>s", { desc = "Split window below" })
vim.keymap.set("n", "<leader>|", "<C-W>v", { desc = "Split window right" })

vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Go to left window" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Go to lower window" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Go to upper window" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Go to right window" })

-- tabs
vim.keymap.set("n", "<leader><tab>l", "<cmd>tablast<cr>", { desc = "Last Tab" })
vim.keymap.set("n", "<leader><tab>f", "<cmd>tabfirst<cr>", { desc = "First Tab" })
vim.keymap.set("n", "<leader><tab><tab>", "<cmd>tabnew<cr>", { desc = "New Tab" })
vim.keymap.set("n", "<leader><tab>]", "<cmd>tabnext<cr>", { desc = "Next Tab" })
vim.keymap.set("n", "<leader><tab>d", "<cmd>tabclose<cr>", { desc = "Close Tab" })
vim.keymap.set("n", "<leader><tab>[", "<cmd>tabprevious<cr>", { desc = "Previous Tab" })


-- lsp
vim.keymap.set('n', '<leader>d<space>', vim.diagnostic.open_float, { desc = "Open float" })
vim.keymap.set('n', '<leader>dp', vim.diagnostic.goto_prev, { desc = "Goto prev" })
vim.keymap.set('n', '<leader>dn', vim.diagnostic.goto_next, { desc = "Goto next" })
vim.keymap.set('n', '<leader>dq', vim.diagnostic.setloclist, { desc = "Show list" })
vim.keymap.set('n', '<leader>bf', vim.lsp.buf.format, { desc = "Format" })

-- autocomplete (set in cmp.lua)
-- ["<C-Space>"] = cmp.mapping.complete(),
-- ["<CR>"] = 
--   behavior = cmp.ConfirmBehavior.Replace,
--   select = true,
-- ["<Tab>"] = cmp.select_next_item()
-- ["<S-Tab>"] = cmp.select_prev_item()
  

-- file

local ts_builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>f ", ts_builtin.oldfiles, { desc = "Recent files" })
vim.keymap.set("n", "<leader>fb", ts_builtin.buffers, { desc = "Buffers" })
vim.keymap.set('n', '<leader>ff', function()
    ts_builtin.current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
      winblend = 10,
      previewer = false,
    })
  end, { desc = 'Fuzzily search in current buffer' })
vim.keymap.set("n", "<leader>fg", ts_builtin.git_files, { desc = "Git files" })
vim.keymap.set("n", "<leader>fs", ts_builtin.find_files, { desc = "File search" })

-- project

vim.keymap.set("n", "<leader>pv", function() 
    vim.cmd("Neotree")
end, { desc = "Project view" })



