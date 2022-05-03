local status_ok, flutter_tools = pcall(require, "flutter-tools")
if not status_ok then
    vim.notify("flutter-tools not found")
    return
end

local status_ok, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
if not status_ok then
    vim.notify("cmp_nvim_lsp not found")
    return
end

require("telescope").load_extension("flutter")

-- alternatively you can override the default configs
flutter_tools.setup {
    ui = {
        border = "rounded",
    },
    decorations = {
        statusline = {
            app_version = false,
            device = true,
        }
    },
    widget_guides = {
        enabled = true,
    },
    lsp = {
        color = {
            enabled = true,
            background = true, -- highlight the background
            foreground = true, -- highlight the foreground
        },
        capabilities = cmp_nvim_lsp.update_capabilities(vim.lsp.protocol.make_client_capabilities())
    }
}
