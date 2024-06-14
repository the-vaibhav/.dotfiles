-- <leader> key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- save
vim.cmd('nmap <leader>w :w<cr>')

-- quite editor
vim.cmd('nmap <leader>q :q<cr>')

-- set 'jj' to exit insert mode
vim.keymap.set('i', 'jj', '<Esc>')

-- repeat previous f, t, F or T movement
vim.keymap.set('n', '\'', ';')

-- -- paste without overwriting
vim.keymap.set('v', 'p', 'P')

-- redo
vim.keymap.set('n', 'U', '<C-r>')
 
-- clear search highlighting
vim.keymap.set('n', '<Esc>', ':nohlsearch<cr>')

-- sync system clipboard
vim.opt.clipboard = 'unnamedplus'

-- search ignoring case
vim.opt.ignorecase = true

-- disable "ignorecase" option if the search pattern contains upper case characters
vim.opt.smartcase = true

-- open file in vscode
vim.keymap.set("n", "<leader>p", function() vim.fn.VSCodeNotify("workbench.action.quickOpen") end)
vim.keymap.set("n", "<leader>r", function() vim.fn.VSCodeNotify("editor.action.startFindReplaceAction") end)
vim.keymap.set("n", "<leader>;", function() vim.fn.VSCodeNotify("workbench.action.showCommands") end)
vim.keymap.set("n", "<leader>f", function() vim.fn.VSCodeNotify("workbench.action.quickOpenPreviousRecentlyUsedEditorInGroup") end)
vim.keymap.set("n", "<leader>t", function() vim.fn.VSCodeNotify("workbench.action.terminal.focus") end)
vim.keymap.set("n", "<leader>e", function() vim.fn.VSCodeNotify("workbench.view.explorer") end)
vim.keymap.set("n", "<leader>1", function() vim.fn.VSCodeNotify("workbench.action.openEditorAtIndex1") end)
vim.keymap.set("n", "<leader>2", function() vim.fn.VSCodeNotify("workbench.action.openEditorAtIndex2") end)
vim.keymap.set("n", "<leader>3", function() vim.fn.VSCodeNotify("workbench.action.openEditorAtIndex3") end)
vim.keymap.set("n", "<leader>4", function() vim.fn.VSCodeNotify("workbench.action.openEditorAtIndex4") end)

local function vscode_notify(action)
    vim.fn.VSCodeNotify(action)
end

vim.api.nvim_set_keymap('n', '<C-j>', '<cmd>lua vscode_notify("workbench.action.navigateDown")<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('x', '<C-j>', '<cmd>lua vscode_notify("workbench.action.navigateDown")<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-k>', '<cmd>lua vscode_notify("workbench.action.navigateUp")<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('x', '<C-k>', '<cmd>lua vscode_notify("workbench.action.navigateUp")<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-h>', '<cmd>lua vscode_notify("workbench.action.navigateLeft")<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('x', '<C-h>', '<cmd>lua vscode_notify("workbench.action.navigateLeft")<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-l>', '<cmd>lua vscode_notify("workbench.action.navigateRight")<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('x', '<C-l>', '<cmd>lua vscode_notify("workbench.action.navigateRight")<CR>', {noremap = true, silent = true})