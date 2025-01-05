require('lualine').setup{
  icons_enabled = true,
  theme = 'auto',
  options = {
    section_separators = { left = '', right = '' },
    component_separators = { left = '', right = '' }
  },
  disabled_filetypes = {
    statusline = {},
    winbar = {},
  },
  ignore_focus = {},
  always_divide_middle = true,
  always_show_tabline = true,
  globalstatus = false,
  refresh = {
    statusline = 100,
    tabline = 100,
    winbar = 100,
  },
  sections = {
    lualine_a = {
      {
        separator = {left = ''},
        'mode',
      },
    },
    lualine_b = {{'branch', 'diff', 'diagnostics'},},
    lualine_c = {{'filename'},},
    lualine_x = {{'encoding', 'fileformat', 'filetype'},},
    lualine_y = {{'progress'},},
    lualine_z = {
      {
        separator = {right = ''},
        'location',
      },
    },
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}
