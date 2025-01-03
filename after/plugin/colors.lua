function ColorMyPencils(color)
  color = color or "catppuccin"
  vim.cmd.colorscheme(color)

  require("catppuccin").setup({
    flavour = "mocha", -- latte, frappe, macchiato, mocha
  })

  --  vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  --  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

ColorMyPencils()
