require("nvim-treesitter.install").command_extra_args = {
    curl = { "-k" }
}

return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    automatic_installation = true,
    ensure_installed = {
        "bash",
        "c",
        "dockerfile",
        "gitignore",
        "go",
        "javascript",
        "json",
        "lua",
        "markdown",
        "python",
        "query",
        "rust",
        "toml",
        "vim",
        "yaml"
    },
  }
}
