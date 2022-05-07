local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",


-- Normal Mode --
-- Better window navigation
keymap("n", "<leader>h", "<C-w>h", opts)
keymap("n", "<leader>j", "<C-w>j", opts)
keymap("n", "<leader>k", "<C-w>k", opts)
keymap("n", "<leader>l", "<C-w>l", opts)

-- Resize with + and -
keymap("n", "<leader>-", ":vertical resize -2<CR>", opts)
keymap("n", "<leader>=", ":vertical resize +2<CR>", opts)

-- Navigate between buffers
keymap("n", "<leader>bb", ":buffers<CR>", opts)
keymap("n", "<leader>bn", ":bn<CR>", opts)
keymap("n", "<leader>bp", ":bp<CR>", opts)

-- Telescope
keymap("n", "<leader>t", "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))<cr>", opts)
keymap("n", "<M-t>", "<cmd>Telescope live_grep<cr>", opts)

-- flutter
keymap("n", "<leader>ft", ":Telescope flutter commands <CR>", opts)
keymap("n", "<leader>fa", ":Lspsaga code_action<CR>", opts)
keymap("n", "<leader>fe", ":Lspsaga diagnostic_jump_next<CR>", opts)


-- Insert --
-- Press jk or kj fast to enter
keymap("i", "jk", "<ESC>", opts)
keymap("i", "kj", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts) -- move highlighted text to left
keymap("v", ">", ">gv", opts) -- move highlighted text to right

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)

-- Nvimtree
keymap("n", "<leader>n", ":NvimTreeToggle<cr>", opts)


-- onle for flutter but idk how to do this in lsp f me

keymap("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)
keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
keymap("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
keymap("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
keymap("n", "<C-k>", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opts)
keymap("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", opts)
keymap("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", opts)
keymap("n", "<M-.>", "<cmd>lua vim.lsp.buf.code_action()<CR>", opts)
keymap("x", "<M-.>", "<cmd>lua vim.lsp.buf.range_code_action()<CR>", opts)
keymap("n", "<leader>f", "<cmd>lua vim.diagnostic.open_float()<CR>", opts)
keymap("n", "<leader>ep", '<cmd>lua vim.diagnostic.goto_prev({ border = "rounded" })<CR>', opts)
keymap(
    "n",
    "es",
    '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics({ border = "rounded" })<CR>',
    opts
)
keymap("n", "<leader>en", '<cmd>lua vim.diagnostic.goto_next({ border = "rounded" })<CR>', opts)
keymap("n", "<leader>q", "<cmd>lua vim.diagnostic.setloclist()<CR>", opts)
vim.cmd [[ command! Format execute 'lua vim.lsp.buf.formatting()' ]]
