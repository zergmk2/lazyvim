-- file explorer
return {
  "nvim-neo-tree/neo-tree.nvim",
  keys = {
    {
      "<leader>fc",
      function()
        require("neo-tree.command").execute({ toggle = true, dir = vim.fn.expand("%:p:h") })
      end,
      desc = "Explorer NeoTree (current file)",
    },
  },
  config = function(_, _)
    require("neo-tree").setup({
      source_selector = {
        winbar = true,
        statusline = false,
      },
    })
  end,
}
