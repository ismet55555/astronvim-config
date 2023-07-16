------------------------------------------------------------------------------
-- set vim options here (vim.<first_key>.<second_key> = value)
------------------------------------------------------------------------------

return {
  -- set vim options here (vim.<first_key>.<second_key> =  value)
  opt = {
      -- set to true or false etc.
      relativenumber = false, -- sets vim.opt.relativenumber
      number = true, -- sets vim.opt.number
      spell = false, -- sets vim.opt.spell
      signcolumn = "auto", -- sets vim.opt.signcolumn to auto
      wrap = false, -- sets vim.opt.wrap
      colorcolumn = { 100 }, -- Add visible column barrier
      foldenable = true, -- Enable code folding
      foldlevel = 99, -- Ensure all folds are open
      ruler = true, -- Show line and column number of the cursor on right side of statusline
      timeoutlen = 400, -- Length of time to wait for a mapped sequence
      visualbell = true, -- Blink cursor on error instead of beeping
      ttyfast = true, -- Fast scrolling
      list = false, -- Show whitespace characters
      showbreak = "﬌ ", -- Show break character
  },
  g = {
      mapleader = " ", -- sets vim.g.mapleader
      autoformat_enabled = false, -- enable or disable auto formatting at start (lsp.formatting.format_on_save must be enabled)
      cmp_enabled = true, -- enable completion at start
      autopairs_enabled = true, -- enable autopairs at start
      diagnostics_enabled = true, -- enable diagnostics at start
      status_diagnostics_enabled = true, -- enable diagnostics in statusline
      icons_enabled = true, -- disable icons in the UI (disable if no nerd font is available, requires :PackerSync after changing)
      ui_notifications_enabled = true, -- disable notifications when toggling UI elements
      heirline_bufferline = false, -- enable new heirline based bufferline (requires :PackerSync after changing)
      copilot_no_tab_map = true,
      copilot_assume_mapped = true,
      copilot_tab_fallback = "",
  },
}
