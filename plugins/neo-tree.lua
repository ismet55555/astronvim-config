return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    enable_diagnostics = false,
    window = {
        width = 30,
    },
    filesystem = {
        filtered_items = {
            hide_dotfiles = false,
            hide_gitignored = true,
        },
    },
  },
}
