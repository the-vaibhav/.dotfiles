-- bootstrap lazy.nvim, LazyVim and your plugins
if vim.g.vscode then
    require "user.vscode_keymaps"
else
    require "config.lazy"
end

