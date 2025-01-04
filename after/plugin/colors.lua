function Color(color)
  color = color or "catppuccin"
  vim.cmd.colorscheme(color)

  -- vim.g.nord_contrast = true
  -- vim.g.nord_borders = true
  -- vim.g.nord_disable_background = false
  -- vim.g.nord_italic = true
  -- vim.g.nord_uniform_diff_background = true
  -- vim.g.nord_bold = true


 --  vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
 --  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

require("catppuccin").setup({
  flavour = "frappe", -- latte, frappe, macchiato, mocha
})

Color()
