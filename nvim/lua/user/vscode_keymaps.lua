local opts = { noremap = true, silent = true }
local keymap = vim.keymap.set

-- set leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "
keymap("n", "<Space>", "", opts)

-- yank to system clipboard
keymap({"n", "v"}, "<leader>y", '"+y', opts)

-- paste from system clipboard
keymap({"n", "v"}, "<leader>p", '"+p', opts)

-- paste preserves primal yanked piece
keymap("v", "p", '"_dP', opts)

-- better indent handling
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- save
vim.keymap.set('n', '<leader>w', '<cmd> w <CR>', opts)

-- move text up and down
keymap("v", "J", ":m .+1<CR>==", opts)
keymap("v", "K", ":m .-2<CR>==", opts)
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)

-- repeat previous f, t, F or T movement
vim.keymap.set('n', '\'', ';')

-- paste without overwriting
vim.keymap.set('v', 'p', 'P')

-- redo
vim.keymap.set('n', 'U', '<C-r>')

 -- removes highlighting after escaping vim search
keymap("n", "<Esc>", "<Esc>:noh<CR>", opts)

-- sync system clipboard
vim.opt.clipboard = 'unnamedplus'

-- search ignoring case
vim.opt.ignorecase = true

-- disable "ignorecase" option if the search pattern contains upper case characters
vim.opt.smartcase = true

-- General Keymaps
keymap({"n", "v"}, "<leader>t", "<cmd>lua require('vscode').action('workbench.action.terminal.toggleTerminal')<CR>")
keymap({"n", "v"}, "<leader>p", "<cmd>lua require('vscode').action('workbench.action.quickOpen') <CR>")
keymap({"n", "v"}, "<leader>q", "<cmd>lua require('vscode').action('workbench.action.closeActiveEditor') <CR>")
keymap({"n", "v"}, "<leader>r", "<cmd>lua require('vscode').action('editor.action.startFindReplaceAction') <CR>")
keymap({"n", "v"}, "<leader>;", "<cmd>lua require('vscode').action('workbench.action.showCommands') <CR>")
keymap({"n", "v"}, "<leader>f", "<cmd>lua require('vscode').action('workbench.action.quickOpenPreviousRecentlyUsedEditorInGroup') <CR>")
keymap({"n", "v"}, "<leader>e", "<cmd>lua require('vscode').action('workbench.action.toggleSidebarVisibility') <CR>")
keymap({"n", "v"}, "<leader>1", "<cmd>lua require('vscode').action('workbench.action.openEditorAtIndex1') <CR>")
keymap({"n", "v"}, "<leader>2", "<cmd>lua require('vscode').action('workbench.action.openEditorAtIndex2') <CR>")
keymap({"n", "v"}, "<leader>3", "<cmd>lua require('vscode').action('workbench.action.openEditorAtIndex3') <CR>")
keymap({"n", "v"}, "<leader>4", "<cmd>lua require('vscode').action('workbench.action.openEditorAtIndex4') <CR>")


vim.api.nvim_set_keymap('n', '<C-j>', '<cmd>lua vscode_notify("workbench.action.navigateDown")<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('x', '<C-j>', '<cmd>lua vscode_notify("workbench.action.navigateDown")<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-k>', '<cmd>lua vscode_notify("workbench.action.navigateUp")<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('x', '<C-k>', '<cmd>lua vscode_notify("workbench.action.navigateUp")<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-h>', '<cmd>lua vscode_notify("workbench.action.navigateLeft")<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('x', '<C-h>', '<cmd>lua vscode_notify("workbench.action.navigateLeft")<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-l>', '<cmd>lua vscode_notify("workbench.action.navigateRight")<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('x', '<C-l>', '<cmd>lua vscode_notify("workbench.action.navigateRight")<CR>', {noremap = true, silent = true})

-- Project Manager
vim.keymap.set({"n", "v"}, "<leader>lw", "<cmd>lua require('vscode').action('projectManager.saveProject')<CR>")
vim.keymap.set({"n", "v"}, "<leader>la", "<cmd>lua require('vscode').action('projectManager.listProjectsNewWindow')<CR>")
vim.keymap.set({"n", "v"}, "<leader>le", "<cmd>lua require('vscode').action('projectManager.editProjects')<CR>")
