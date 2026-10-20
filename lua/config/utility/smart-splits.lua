local ss = require('smart-splits')
local wk = require('which-key')

wk.add({
	-- Resize Splits
	{ '<A-h>', ss.resize_left,  desc = "Resize Left" },
	{ '<A-j>', ss.resize_down,  desc = "Resize Up" },
	{ '<A-k>', ss.resize_up,    desc = "Resize Down" },
	{ '<A-l>', ss.resize_right, desc = "Resize Right" },
	-- Move Between Splits
	{ '<C-h>', ss.move_cursor_left,    desc = "Move Left" },
	{ '<C-j>', ss.move_cursor_down,    desc = "Move Up" },
	{ '<C-k>', ss.move_cursor_up,      desc = "Move Down" },
	{ '<C-l>', ss.move_cursor_right,   desc = "Move Right" },
})
