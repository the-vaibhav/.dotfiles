-- <leader> key
vim.g.mapleader = ' '

-- save
vim.cmd('nmap <leader>w :w<cr>')
-- quite editor
vim.cmd('nmap <leader>q :q<cr>')

-- repeat previous f, t, F or T movement
vim.keymap.set('n', '\'', ';')

-- open file in vscode

-- -- paste without overwriting
vim.keymap.set('v', 'p', 'P')

-- redo
vim.keymap.set('n', 'U', '<C-r>')
 
-- clear search highlighting
vim.keymap.set('n', '<Esc>', ':nohlsearch<cr>')

--[[ -- skip folds (down, up)
vim.cmd('nmap k gj')
vim.cmd('nmap l gk')
 ]]
-- sync system clipboard
vim.opt.clipboard = 'unnamedplus'

-- search ignoring case
vim.opt.ignorecase = true

-- disable "ignorecase" option if the search pattern contains upper case characters
vim.opt.smartcase = true

-- vs-code specific keybinds ===>
vim.keymap.set("n", "<leader>p", function() vim.fn.VSCodeNotify("workbench.action.quickOpen") end)
vim.keymap.set("n", "<leader>f",function() vim.fn.VSCodeNotify("editor.action.startFindReplaceAction") end)
vim.keymap.set("n", "<leader>;", function() vim.fn.VSCodeNotify("workbench.action.showCommands") end)
vim.keymap.set("n", "<leader>j", function() vim.fn.VSCodeNotify("workbench.action.quickOpenPreviousRecentlyUsedEditorInGroup") end)
vim.keymap.set("n", "<leader>t", function() vim.fn.VSCodeNotify("workbench.action.terminal.focus") end)
vim.keymap.set("n", "<leader>e", function() vim.fn.VSCodeNotify("workbench.view.explorer") end)