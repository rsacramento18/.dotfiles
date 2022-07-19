if not pcall(require, "nvim-treesitter") then
  return
end

require("nvim-treesitter.configs").setup { 
  ensure_installed = { 
    "c",
    "javascript",
    "typescript",
    "json",
    "lua",
  },
  sync_install = true,
  indent = { enable = true },
  highlight = { enable = true},
  incremental_selection = { enable = true },
  textobjects = { enable = true }
}
