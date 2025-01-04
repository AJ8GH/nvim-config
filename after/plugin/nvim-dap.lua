require('dap-python').setup()
require("dapui").setup()
require('dap-go').setup()

local dap = require "dap"
local dap_go = require "dap-go"
local ui = require "dapui"

vim.keymap.set("n", "<space>?", function()
  require("dapui").eval(nil, { enter = true })
end)

vim.keymap.set("n", "<C-]>", dap.step_over)
vim.keymap.set("n", "<C-[>", dap.continue)
vim.keymap.set("n", "<leader>br", dap.toggle_breakpoint)
vim.keymap.set("n", "<C-=>", dap.toggle_breakpoint)
vim.keymap.set("n", "<C-'>", dap_go.debug_test)
vim.keymap.set("n", "<leader>dr", dap.restart)
vim.keymap.set("n", "<C-;>", dap.disconnect)
vim.keymap.set("n", "<leader>ds,", dap.disconnect)

-- vim.keymap.set("n", "<leader>di", dap.step_into)
-- vim.keymap.set("n", "<leader>ou", dap.step_out)
-- vim.keymap.set("n", "<leader>ba", dap.step_back)
-- vim.keymap.set("n", "<leader>dc,", ui.close)
-- vim.keymap.set("n", "<leader>do,", ui.open)
-- vim.keymap.set("n", "<leader>dt,", ui.toggle)
-- vim.keymap.set("n", "<C-\\>dt,", ui.toggle)

dap.listeners.before.attach.dapui_config = function()
  ui.open()
end
dap.listeners.before.launch.dapui_config = function()
  ui.open()
end
dap.listeners.before.event_terminated.dapui_config = function()
  ui.close()
end
dap.listeners.before.event_exited.dapui_config = function()
  ui.close()
end

