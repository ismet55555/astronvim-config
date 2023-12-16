------------------------------------------------------------------------------
-- This function is run last and is a good place to configuring
-- augroups/autocommands and custom filetypes also this just pure lua so
-- anything that doesn't fit in the normal config locations above can go here
------------------------------------------------------------------------------

return function()
  vim.api.nvim_create_augroup("buf_check", { clear = true })
  -- vim.api.nvim_create_autocmd({ "BufReadPost", "BufNewFile" }, {
  --     desc = "Enable code folding",
  --     group = "buf_check",
  --     pattern = "*",
  --     command = "AnyFoldActivate",
  -- })
  vim.api.nvim_create_autocmd({ "TextYankPost" }, {
      desc = "Highlight yanked/copied text",
      group = "buf_check",
      pattern = "*",
      callback = function() vim.highlight.on_yank { timeout = 500 } end,
  })

  -- Set up custom filetypes
  vim.filetype.add {
      -- extension = {
      --   foo = "fooscript",
      -- },
      filename = {
        ["Gearsfile"] = "yaml",
        ["Bogiefile"] = "yaml",
        ["Jenkinsfile"] = "groovy",
      },
      pattern = {
          ["credentials"] = "toml",
          [".*Gearsfile.*"] = "yaml",
          [".*Bogiefile.*"] = "yaml",
          [".*Jenkinsfile.*"] = "groovy",
          [".*.kv"] = "yaml",
      },
  }
end
