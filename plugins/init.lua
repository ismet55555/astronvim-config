return {
  -- GitHub Copilot
  {
    "github/copilot.vim",
    lazy = false,
  },

  -- Colorscheme
  {"olimorris/onedarkpro.nvim"},

  -- Distraction free writing (Zen Mode)
  {
    "folke/zen-mode.nvim",
    config = function() require("zen-mode").setup {} end,
  },

  -- Git Diff viewer
  {
    "sindrets/diffview.nvim",
    requires = { "nvim-lua/plenary.nvim" },
    after = "plenary.nvim",
    -- event = "Uer AstroGitFile",
    lazy = false,
  },

  -- Cheat.sh Code Snippets and Answers (Open with :Cheat)
  {"RishabhRD/popfix"},
  {
    "RishabhRD/nvim-cheat.sh",
    lazy = false,
  },

  -- Keyboard shortcuts for common VIM operations
  {"tpope/vim-unimpaired"},

  -- Find and replace locally or globally
  {"windwp/nvim-spectre"},

  -- Smart code folding
  {"pseewald/vim-anyfold"},

  -- -- Easy and smart search and replace
  -- {"brooth/far.vim"},

  -- -- Move to specific position on screen fast
  -- ["phaazon/hop.nvim"] = {
  --   branch = "v2",
  --   config = function() require("hop").setup { keys = "etovxqpdygfblzhckisuran" } end,
  -- },

  -- -- Wild menu for commands and searches
  -- ["gelguy/wilder.nvim"] = {
  --     run = "UpdateRemotePlugins",
  --     config = function()
  --         local wilder = require "wilder"
  --         wilder.setup {
  --             modes = { ":" },
  --             next_key = "<leader>n",
  --             previous_key = "<leader>p"
  --         }
  --         wilder.set_option('renderer', wilder.wildmenu_renderer({
  --             highlighter = wilder.basic_highlighter(),
  --         }))
  --         wilder.set_option('renderer', wilder.popupmenu_renderer({
  --             pumblend = 20,
  --         }))
  --         wilder.set_option('renderer', wilder.popupmenu_renderer(
  --             wilder.popupmenu_border_theme({
  --                 highlights = {
  --                     border = 'Normal', -- highlight to use for the border
  --                 },
  --                 border = 'rounded',
  --             })
  --         ))
  --     end,
  -- },

}
