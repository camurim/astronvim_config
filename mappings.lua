-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)

return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map

    -- navigate buffer tabs with `H` and `L`
    L = {
      function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
      desc = "Next buffer",
    },
    H = {
      function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
      desc = "Previous buffer",
    },

    -- mappings seen under group name "Buffer"
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    ["<F3>"] = { ":Telescope buffers<cr>" },
    ["<F4>"] = { ":Neotree source=last action=focus toggle=true<cr>" },
    ["<C-t>"] = {
      function() require("astronvim.utils").toggle_term_cmd "bash -ic gobang" end,
      desc = "Gobang",
    },
    ["<C-.>"] = {
      function()
        local today = os.date "%Y-%m-%d"
        vim.cmd("e ~/google-drive/obsidian_vaults/principal/00 - Daily Notes/" .. today .. ".md")
      end,
      desc = "Today Note",
    },
    ["<C-,>"] = {
      function() vim.cmd "e ~/google-drive/obsidian_vaults/principal/03 - Others/Quicknote.md" end,
      desc = "Quicknote",
    },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
    -- ["<leader>a"] = {"<cmd>echo 'Hello world!'<cr>", desc="Say hello world!"},
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
