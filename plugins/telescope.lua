return {
  "nvim-telescope/telescope.nvim",
  opts = {
    pickers = {
      find_files = {
          file_ignore_patterns = {"%.git/*"},
          find_command = {
              "rg",
              "--files",
              "--hidden",
              "--iglob",
              "!.git|!.env|!.venv",
          },
          hidden = true,
      },
    },
  }
}
