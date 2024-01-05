-- file explorer
return {
  "nvim-neo-tree/neo-tree.nvim",
  keys = {
    {
      "<leader>fa",
      function()
        require("neo-tree.command").execute({ toggle = true, dir = vim.fn.expand("%:p:h") })
      end,
      desc = "Explorer NeoTree (current file)",
    },
  },
  config = function(_, _)
    require("neo-tree").setup({
      filesystem = {
        filtered_items = {
          visible = true,
          show_hidden_count = true,
          hide_dotfiles = false,
          hide_by_name = {
            -- '.git',
            -- '.DS_Store',
            -- 'thumbs.db',
          },
          never_show = {},
        },
      },
      source_selector = {
        winbar = true,
        statusline = false,
      },
    })
  end,
}
