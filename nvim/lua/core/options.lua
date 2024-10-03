-- others 
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

vim.o.clipboard = "unnamedplus" -- sync with system clipboard
vim.o.wrap = false -- do not wrap lines
vim.o.linebreak = true -- wrap lines at convenient points
vim.o.number = true -- show line numbers
vim.o.relativenumber = true -- show relative line numbers
vim.o.mouse = 'a' -- enable mouse support
vim.o.ignorecase = true -- ignore case when searching
vim.o.smartcase = true -- ignore case if search pattern is all lowercase