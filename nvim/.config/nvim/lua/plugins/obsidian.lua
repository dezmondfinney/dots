return {
  "epwalsh/obsidian.nvim",
  version = "*",
  lazy = true,
  ft = "markdown",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  opts = {
    workspaces = {
      {
        name = "BlackLands",
        path = "~/Blacklands",
      },
    },
    -- Optional: nice-to-have settings
    notes_subdir = "notes",
    daily_notes = {
      folder = "dailies",
      date_format = "%Y-%m-%d",
    },
  },
}
