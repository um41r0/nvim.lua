local null_ls_status_ok, null_ls = pcall(require, "null-ls")
if not null_ls_status_ok then
    vim.notify("null_ls not found")
    return
end

local formatting = null_ls.builtins.formatting

local diagnostics = null_ls.builtins.diagnostics

null_ls.setup {
    debug = true,
    sources = {
        formatting.prettier.with { extra_args = { "--no-semi", "--single-quote", "--jsx-single-quote" } },
        formatting.black.with { extra_args = { "--fast" } },
        formatting.stylua,
        -- F841 , F823 are for local variable
        -- F821 , F822 are for undefined name
        -- F831 is for duplicate argument
        -- F401 is for imported
        diagnostics.flake8.with { extra_args = { "--ignore=F821,F822,F831,F841,F823" } },
    },
}
