return {
  "folke/zen-mode.nvim",
  opts = {
    window = {
      backdrop = 1,
      height = 0.8,
      options = {
        signcolumn = "no",
        number = true
      }
    }
  },
  keys = {
    {
      "<leader>z",
      function() vim.cmd('ZenMode') end,
      desc = "Find Plugin File",
    },
  },
}
