-- require("neo-tree").setup({
--   window = {
--     mappings = {
--       ["P"] = {
--         "toggle_preview",
--         config = {
--           use_float = true,
--           use_image_nvim = true,
--         }
--       },
--     }
--   }
-- })


-- optionally enable 24-bit colour
vim.opt.termguicolors = true

-- Toggle tree
vim.keymap.set("n", "<leader>x", "<cmd>Neotree toggle<CR>", { silent = true })
vim.keymap.set("n", "<leader>t", "<cmd>Neotree focus<CR>", { silent = true })
vim.keymap.set("n", "<leader>r", "<cmd>Neotree reveal<CR>", { silent = true })
