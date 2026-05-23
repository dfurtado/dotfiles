return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons", "catppuccin"},
  config = function()
    require("lualine").setup({
      options = {
        theme = "catppuccin",        
        icons_enabled = true,

        -- Straight separators instead of powerline arrows
        -- component_separators = { left = "|", right = "|" },
        -- section_separators = { left = "", right = "" },
      },
    })
  end,
}
