-- Name: antonised

return {
	load = function()
		local colors = require("antonised.colors")
		local groups = require("antonised.groups")

		vim.cmd.highlight("clear")
		vim.g.colors_name = "antonised"

		local hi = function(name, value)
			-- Force links.
			value.force = true
			-- Prevent 'cterm' being populated from 'gui'.
			value.cterm = value.cterm or {}
			-- Apply global highlight.
			vim.api.nvim_set_hl(0, name, value)
		end

		for group, value in pairs(groups) do
			hi(group, value)
		end
	end,

	setup = function() end,
}
