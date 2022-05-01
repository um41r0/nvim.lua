local options = {
    syntax = "on",
    number = true,
    relativenumber = true,
    hidden = true,
    backup = false,
    smartcase = true,
    expandtab = true,
    tabstop = 4,
    shiftwidth = 4,
    incsearch = true,
    hlsearch = false,
    swapfile = false,
    showmode = false,
    ignorecase = true,
    cursorline = true,
    undofile = false,
    scrolloff = 8,
    termguicolors = true,
    completeopt = { "menuone", "noselect" },
}

vim.opt.shortmess:append "c"

for k, v in pairs(options) do
    vim.opt[k] = v
end
