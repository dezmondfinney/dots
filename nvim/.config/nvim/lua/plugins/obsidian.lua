return {
  "obsidian-nvim/obsidian.nvim",
  version = "*",
  lazy = true,
  ft = "markdown",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  keys = {
    { "<leader>os", "<cmd>Obsidian search<cr>", desc = "Obsidian Search" },
    { "<leader>oq", "<cmd>Obsidian quick_switch<cr>", desc = "Obsidian Quick Switch" },
    { "<leader>on", "<cmd>Obsidian new<cr>", desc = "Obsidian New Note" },
    { "<leader>ot", "<cmd>Obsidian today<cr>", desc = "Obsidian Today" },
    { "<leader>od", "<cmd>Obsidian dailies<cr>", desc = "Obsidian Dailies" },
    { "<leader>ob", "<cmd>Obsidian backlinks<cr>", desc = "Obsidian Backlinks" },
    { "<leader>ol", "<cmd>Obsidian links<cr>", desc = "Obsidian Links" },
    { "<leader>or", "<cmd>Obsidian rename<cr>", desc = "Obsidian Rename" },
    { "<leader>oi", "<cmd>Obsidian template<cr>", desc = "Obsidian Template" },
    { "<leader>oe", "<cmd>Obsidian extract_note<cr>", mode = "v", desc = "Obsidian Extract Note" },
    { "<leader>op", "<cmd>Obsidian paste_img<cr>", desc = "Obsidian Paste Image" },
  },
  opts = {
    legacy_commands = false,
    picker = {
      name = "snacks.picker",
    },
    workspaces = {
      {
        name = "Blacklands",
        path = "/Users/dezmondfinney/Library/Mobile Documents/iCloud~md~obsidian/Documents/Blacklands",
      },
    },
    daily_notes = {
      folder = "Journal",
      date_format = "%Y-%m-%d",
    },
    templates = {
      folder = "Templates",
    },
    note_id_func = function(title)
      return require("obsidian.builtin").title_id(title)
    end,
  },
}
