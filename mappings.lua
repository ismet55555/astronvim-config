------------------------------------------------------------------------------
-- Mapping data with "desc" stored directly by vim.keymap.set().
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
--
-- C - control
-- S - shift
-- A - alt
-- M - meta (mac: cmd, win: win, linux: super)
-- CR or cr - Return/Enter
------------------------------------------------------------------------------
return {
  -- first key is the mode
  i = {
      -- INSERT
      ["<A-cr>"] = { "copilot#Accept(<Tab>)", silent = true, expr = true, script = true, desc = "Coplilot accept suggestion"},
      -- ["<A-n"] = { "copilot#CycleNext(<Tab>)", silent = true, expr = true, script = true, desc = "Coplilot next suggestion"},

  },
  n = {
      -- NORMAL
      -- Move text up and down
      ["<A-j>"] = { "<Esc>:m .+1<CR>==gi", desc = "Move single line up" },
      ["<A-k>"] = { "<Esc>:m .-2<CR>==gi", desc = "Move single line down" },

      -- Select all in current file
      ["<leader>a"] = { "ggVG", desc = "Select all text in file" },

      -- Enter blank line without leaving NORMAL mode
      ["<CR>"] = { "o<Esc>", desc = "Return down in normal mode" },

      -- second key is the lefthand side of the map
      -- mappings seen under group name "Buffer"
      ["<leader>bb"] = { "<cmd>tabnew<cr>", desc = "New tab" },
      ["<leader>bc"] = { "<cmd>BufferLinePickClose<cr>", desc = "Pick to close" },
      ["<leader>bj"] = { "<cmd>BufferLinePick<cr>", desc = "Pick to jump" },
      ["<leader>bt"] = { "<cmd>BufferLineSortByTabs<cr>", desc = "Sort by tabs" },

      -- Buffer Navigation and Control
      ["<S-l>"] = { "<cmd>bnext<cr>", desc = "Next buffer" },
      ["<S-h>"] = { "<cmd>bprevious<cr>", desc = "Previous buffer" },
      ["<S-I>"] = { "<cmd>tabmove +1<cr>", desc = "TEST buffer" },

      -- Quick save - Not needed in AstroNvim
      -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command

      -- Diffview for Git
      ["<leader>do"] = { "<cmd>DiffviewOpen<CR>", desc = "Git DiffView open" },
      ["<leader>dc"] = { "<cmd>DiffviewClose<CR>", desc = "Git DiffView close" },

      -- Cheat.sh
      ["<leader>ch"] = { "<cmd>Cheat<CR>", desc = "Open Cheat.sh input" },

      -- Copilot Panel
      ["<leader>cc"] = { "<cmd>Copilot panel<CR>", desc = "Copilot suggestion panel" },

      -- hop.nvim
      -- ["s"] = { "<cmd>HopChar1<CR>", desc = "Hop to specific character" },

      -- Spectre - Search and Replace
      ["<leader>rg"] = { "<cmd>lua require('spectre').open()<CR>", desc = "Search/Replace in Workspace" },
      ["<leader>rf"] = { "<cmd>lua require('spectre').open_file_search()<CR>", desc = "Search/Replace in File" },

      -- Rename
      ["<leader>rn"] = { "<cmd>lua vim.lsp.buf.rename()<CR>", desc = "Search/Replace in LSP Workspace" },
  },
  v = {
      -- VISUAL
  },
  x = {
      -- VISUAL BLOCK
      ["<A-j>"] = { ":move '>+1<CR>gv-gv", desc = "Move lines down" },
      ["<A-k>"] = { ":move '<-2<CR>gv-gv", desc = "Move lines up" },
  },
  t = {
      -- TERMINAL
  },
  c = {
      -- COMMAND
  },
}
