local colors = require("antonised.colors")

return {
	normal = {
		a = { bg = colors.black, fg = colors.blue, gui = "bold" },
		b = { bg = colors.black, fg = colors.white },
		c = { bg = colors.black, fg = colors.grey2 },
	},
	insert = {
		a = { bg = colors.black, fg = colors.green, gui = "bold" },
		b = { bg = colors.black, fg = colors.white },
		c = { bg = colors.black, fg = colors.grey2 },
	},
	visual = {
		a = { bg = colors.black, fg = colors.magenta, gui = "bold" },
		b = { bg = colors.black, fg = colors.white },
		c = { b = colors.black, fg = colors.grey2 },
	},
	replace = {
		a = { bg = colors.black, fg = colors.red, gui = "bold" },
		b = { bg = colors.black, fg = colors.white },
		c = { bg = colors.black, fg = colors.grey2 },
	},
	command = {
		a = { bg = colors.black, fg = colors.orange, gui = "bold" },
		b = { bg = colors.black, fg = colors.white },
		c = { bg = colors.black, fg = colors.grey2 },
	},
	inactive = {
		a = { bg = colors.black, fg = colors.grey2 },
		b = { bg = colors.black, fg = colors.grey2 },
		c = { bg = colors.black, fg = colors.grey2 },
	},
}
