local cmp_status_ok, treesitter = pcall(require, "treesitter")
if not cmp_status_ok then
    vim.notify("treesitter not found")
    return
end

treesitter.setup {
    ensure_installed = "maintained",
    sync_install = false,
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = true
    }
}
