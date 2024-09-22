return {
  "nvim-tree/nvim-web-devicons",
  {
    "nvim-tree/nvim-tree.lua",
    opt = {
      animation = false
    },
    config = function()
      require("nvim-tree").setup()
    end
  },
  {
    "romgrk/barbar.nvim",
    config = function ()
     require("barbar").setup()
    end
  },
  {
    "nvim-lualine/lualine.nvim",
    config = function()
      require("lualine").setup()
    end
  }
}

