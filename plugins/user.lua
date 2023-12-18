-- TODO: Teste
return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
    event = "User AstroFile",
    cmd = { "TodoQuickFix" },
    keys = {
      { "<leader>T", "<cmd>TodoTelescope<cr>", desc = "Open TODOs in Telescope" },
    },
  },
  {
    "mkropat/vim-ezguifont",
    opts = {
      font = "FiraCode Nerd Font Mono",
      min = 10,
      default = 14,
      max = 24,
      step = 1,
    },
    keys = {
      { "<C-+>", "<cmd>IncreaseFont<cr>", desc = "Increase Font Size" },
      { "<C-->", "<cmd>DecreaseFont<cr>", desc = "Descrease Font Size" },
    },
  },
}
