return {
  {
    "ojroques/nvim-osc52",
    config = function()
      local osc52 = require("osc52")
      osc52.setup({})

      vim.api.nvim_create_autocmd("TextYankPost", {
        callback = function()
          if vim.v.event.operator ~= "y" then
            return
          end

          if vim.v.event.regname == "" then
            osc52.copy_register('"')
          elseif vim.v.event.regname == "+" then
            osc52.copy_register("+")
          end
        end,
      })
    end,
  },
}
