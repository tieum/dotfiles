return {
  {
    "ellisonleao/gruvbox.nvim",
    opts = {
      contrast = "soft",
      transparent_mode = false,
    },
    config = function(_, opts)
      require("gruvbox").setup(opts)
    end,
  },
  {
    "LazyVim/LazyVim",
    -- opts = {
    -- colorscheme = "catppuccin-mocha",
    --},
    opts = {
      colorscheme = function()
        require("gruvbox").load()
      end,
    },
  },
}
