return {
  {
    "petertriho/nvim-scrollbar",
    config = function()
      local function set_scrollbar_hl()
        vim.api.nvim_set_hl(0, "ScrollbarHandle", { bg = "#5f5f87" })
        vim.api.nvim_set_hl(0, "ScrollbarCursorHandle", { bg = "#87afff" })

        vim.api.nvim_set_hl(0, "ScrollbarSearch", { fg = "#ffd75f", bg = "#ffd75f" })
        vim.api.nvim_set_hl(0, "ScrollbarError", { fg = "#ff5f5f", bg = "#ff5f5f" })
        vim.api.nvim_set_hl(0, "ScrollbarWarn", { fg = "#ffaf00", bg = "#ffaf00" })
        vim.api.nvim_set_hl(0, "ScrollbarInfo", { fg = "#5fd7ff", bg = "#5fd7ff" })
        vim.api.nvim_set_hl(0, "ScrollbarHint", { fg = "#5fff87", bg = "#5fff87" })
      end

      set_scrollbar_hl()

      vim.api.nvim_create_autocmd("ColorScheme", {
        callback = set_scrollbar_hl,
      })

      require("scrollbar").setup({
        show = true,
        handle = {
          text = " ",
          highlight = "ScrollbarHandle",
        },
        marks = {
          Search = { priority = 0, highlight = "ScrollbarSearch" },
          Error = { priority = 1, highlight = "ScrollbarError" },
          Warn = { priority = 2, highlight = "ScrollbarWarn" },
          Info = { priority = 3, highlight = "ScrollbarInfo" },
          Hint = { priority = 4, highlight = "ScrollbarHint" },
        },
        excluded_filetypes = { "prompt", "TelescopePrompt", "noice" },
      })
    end,
  },
}
