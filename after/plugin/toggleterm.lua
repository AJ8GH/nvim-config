require('toggleterm').setup()

function _G.set_terminal_keymaps()
  local opts = {buffer = 0}
  -- vim.keymap.set('t', '<C-a>', [[<C-\><C-n><:ToggleTerm><CR>]], opts)
end

-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')

-- vim.keymap.set('n', '<C-a>', '<:ToggleTerm><CR>')
