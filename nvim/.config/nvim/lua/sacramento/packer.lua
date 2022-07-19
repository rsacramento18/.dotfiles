vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost packer.lua source <afile> | PackerSync
  augroup end
]]

return require("packer").startup(function()
  use("wbthomason/packer.nvim")

  --use("sbdchd/neoformat")

  -- Git
  use("TimUntersberger/neogit")
  --use("lewis6991/gitsigns.nvim")

  -- Telescope
  use("nvim-lua/plenary.nvim")
  use("nvim-lua/popup.nvim")
  use("nvim-telescope/telescope.nvim")

  -- Lsp
  --use("neovim/nvim-lspconfig")
  --use("hrsh7th/cmp-nvim-lsp")
  --use("hrsh7th/cmp-buffer")
  --use("hrsh7th/nvim-cmp")
  --use("onsails/lspkind-nvim")
  --use("ray-x/lsp_signature.nvim")
  --use("tjdevries/lsp_extensions.nvim")

  --use {
  --  "folke/lsp-trouble.nvim",
  --  cmd = "Trouble",
  --  config = function()
  --    -- Can use P to toggle auto movement
  --    require("trouble").setup {
  --      auto_preview = false,
  --      auto_fold = true,
  --    }
  --  end,
  -- }

  -- Colorschemes
  use("tjdevries/express_line.nvim")
  use("gruvbox-community/gruvbox")
  -- use("tjdevries/colorbuddy.vim")
  -- use("tjdevries/gruvbuddy.nvim")

  -- Misc
  use("norcalli/nvim-colorizer.lua")
  use("mbbill/undotree")
  use("mg979/vim-visual-multi")
  use("tpope/vim-commentary")
  use("lukas-reineke/indent-blankline.nvim")
  use("j-hui/fidget.nvim")
  -- use("nvim-neorg/neorg")

  -- Debug
  -- use("mfussenegger/nvim-dap")
  -- use("rcarriga/nvim-dap-ui")
  -- use("theHamsta/nvim-dap-virtual-text")
  -- use("szw/vim-maximizer")

  -- Icons
  use("kyazdani42/nvim-web-devicons")
  use("yamatsum/nvim-nonicons")
  
  -- Treesitter
  use("nvim-treesitter/nvim-treesitter", {
      run = ":TSUpdate"
  })

end)
