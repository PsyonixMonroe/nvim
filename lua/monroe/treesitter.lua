local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
    return
end

configs.setup {
    ensure_installed = { "help", "javascript", "typescript", "html", "c", "cpp", "lua", "rust", "yaml", "go", "gomod", "gosum", "bash", "c_sharp", "cmake", "css", "dockerfile", "git_config", "gitignore", "git_rebase", "html", "ini", "java", "json", "make", "markdown", "nix", "php", "python", "rust", "terraform", "vim", "zig"},
    sync_install = false,
    ignore_install = { "phpdoc" },
    autopairs = {
        enable = true,
    },
    highlight = {
        enable = true,
        disable = { "" },
        additional_vim_regex_highlighting = true,
    },
    indent = {enable = true, disable = { "yaml" } },
    rainbow = {
        enable = true,
        extended_mode = true,
        max_file_lines = nil,
    }
}
