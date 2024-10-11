if vim.g.vscode then
    require "vs-code.vscode_keymaps"
else
    require "config.lazy"
end
