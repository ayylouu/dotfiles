local options = {
	number = true,
	relativenumber = true,
	title = true,
	fileencoding = "utf-8",
	tabstop = 2,
	shiftwidth = 2,
	scrolloff = 12,
	hlsearch = false,
	backup = false,
	swapfile = false,
	splitright = true,
	updatetime = 200,
	termguicolors = true,
}

for k, v in pairs(options) do
	vim.opt[k] = v
end
