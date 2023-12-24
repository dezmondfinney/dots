return {
{
	"Pocco81/true-zen.nvim",
	config = function()
		 require("true-zen").setup {
			-- your config goes here
			-- or just leave it empty :)
      integrations = {
          twilight = true,
          lualine = true
        }
		 }
	end,
  keys = {
    { "<leader>Zn", "<cmd>TZNarrow<CR>", desc = "Zen Narrow" },
    { "<leader>Zf", "<cmd>TZFocus<CR>", desc = "Zen Focus" },
    { "<leader>Zm", "<cmd>TZMinimalist<CR>", desc = "Zen Minimal" },
    { "<leader>Za", "<cmd>TZAtaraxis<CR>", desc = "Zen Full" },
  }
},
}
