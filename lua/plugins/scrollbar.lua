return {
  {
    "petertriho/nvim-scrollbar",
    config = function()
      require("scrollbar").setup({
        show = true,
        handle = {
          text = " ",
          highlight = "CursorColumn",
        },
        marks = {
          Search = { priority = 0 },
          Error = { priority = 1 },
          Warn = { priority = 2 },
          Info = { priority = 3 },
          Hint = { priority = 4 },
        },
        excluded_filetypes = { "prompt", "TelescopePrompt", "noice" },
      })
    end,
  },
}
