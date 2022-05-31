local M = {}

vim.api.nvim_set_hl(0, 'WinBarPath', { bg = '#282828', fg = '#a89984' })
vim.api.nvim_set_hl(0, 'WinBarModified', { bg = '#282828', fg = '#a89984' })

function M.eval()
    local file_path = vim.api.nvim_eval_statusline('%t', {}).str
    local modified = vim.api.nvim_eval_statusline('%M', {}).str == '+' and ' + ' or ''

    -- file_path = file_path:gsub('/', ' ➤ ')
    return '%#WinBarPath#'
     .. file_path
     .. '%*'
     .. '%#WinBarModified#'
     .. modified
     .. '%*'

end

return M
