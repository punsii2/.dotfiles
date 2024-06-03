require "nvchad.mappings"

local map = vim.keymap.set

map({ "n" }, "<leader>fk", "<cmd> Telescope keymaps <CR>", { desc = "Find keymaps" })

map({ "n" }, "<leader>gd", function()
  if next(require("diffview.lib").views) == nil then
    vim.cmd "DiffviewOpen"
  else
    vim.cmd "DiffviewClose"
  end
end, { desc = "Goto Definition" })

map({ "n" }, "<leader>sh", function()
  require("gitsigns").stage_hunk()
end, { desc = "Stage hunk" })
map({ "n" }, "<leader>uh", function()
  require("gitsigns").undo_stage_hunk()
end, { desc = "Unstage hunk" })

map({ "v" }, "<leader>sh", function()
  require("gitsigns").stage_hunk { vim.fn.line ".", vim.fn.line "v" }
end, { desc = "Stage hunk" })
map({ "v" }, "<leader>uh", function()
  require("gitsigns").undo_stage_hunk()
end, { desc = "Unstage hunk" })
--XXX how is the plugin setting used after 2.5?
--M.dap = {
--	plugin = true,
--	n = {
--		["<leader>db"] = { "<cmd> DapToggleBreakpoint <CR>", "Run Python Tests" },
--	},
--}
--
--XXX how is the plugin setting used after 2.5?
--M.dap_python = {
--	plugin = true,
--	n = {
--		["<leader>dpr"] = {
--			function()
--				require("dap-python").test_method()
--			end,
--			"Run Python Tests",
--		},
--	},
--}
-- XXX Overwrites the default mapping
-- M.general = {
-- 	n = {
-- 		["<leader>fm"] = {
-- 			function()
-- 				vim.lsp.buf.format({
-- 					async = true,
-- 					filter = function(client)
-- 						return client.name == "null-ls"
-- 					end,
-- 				})
-- 			end,
-- 			"LSP formatting",
-- 		},
-- 	},
map({ "n" }, "<leader>tt", function()
  require("base46").toggle_theme()
end, { desc = "Toggle Theme" })

--map("i", "<C-k>", "<Up>", { desc = "Move up" })
--
---- multiple modes
--map({ "i", "n" }, "<C-k>", "<Up>", { desc = "Move down" })
--
--map("n", "<leader>ff", ":Telescope <cr>")
--
---- mapping with a lua function
--map("n", "<A-i>", function()
--  require("nvchad.term").toggle({ pos = "sp", id ='abc' })
--end, { desc = "Terminal toggle floating" })
--
--
---- Disable mappings
--local nomap = vim.keymap.del
--
--nomap("i", "<C-k>")
--nomap("n", "<C-k>")
