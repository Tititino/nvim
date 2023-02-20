-------------------------------------
--  File         : base.lua
--  Description  : base colors palette 
--  Author       : Tino 
-------------------------------------

local colors = require('colors.tino.colors')

-- options (light mode by default)
local bg0 = colors.light0
local bg1 = colors.light1
local bg2 = colors.light2
local bg3 = colors.light3
local bg4 = colors.light4

local fg0 = colors.dark0
local fg1 = colors.dark1
local fg2 = colors.dark2
local fg3 = colors.dark3
local fg4 = colors.dark4

local red = colors.neutral_red
local green = colors.neutral_green
local yellow = colors.neutral_yellow
local blue = colors.neutral_blue
local purple = colors.neutral_purple
local aqua = colors.neutral_aqua
local orange = colors.neutral_orange
local gray = colors.gray

local bg = vim.opt.background:get()
if bg == nil then
	bg = 'light'
	vim.o.background = bg
end

-- extending colors table with basic names for easy customization in g:k_theme_* options
colors.bg0 = bg0
colors.bg1 = bg1
colors.bg2 = bg2
colors.bg3 = bg3
colors.bg4 = bg4
colors.fg0 = fg0
colors.fg1 = fg1
colors.fg2 = fg2
colors.fg3 = fg3
colors.fg4 = fg4
colors.red = red
colors.green = green
colors.yellow = yellow
colors.blue = blue
colors.purple = purple
colors.aqua = aqua
colors.orange = orange

-- neovim terminal mode colors
vim.g.terminal_color_0 = bg0
vim.g.terminal_color_8 = gray
vim.g.terminal_color_1 = colors.neutral_red
vim.g.terminal_color_9 = red
vim.g.terminal_color_2 = colors.neutral_green
vim.g.terminal_color_10 = green
vim.g.terminal_color_3 = colors.neutral_yellow
vim.g.terminal_color_11 = yellow
vim.g.terminal_color_4 = colors.neutral_blue
vim.g.terminal_color_12 = blue
vim.g.terminal_color_5 = colors.neutral_purple
vim.g.terminal_color_13 = purple
vim.g.terminal_color_6 = colors.neutral_aqua
vim.g.terminal_color_14 = aqua
vim.g.terminal_color_7 = fg4
vim.g.terminal_color_15 = fg1

vim.g.colors_name = 'tino'

local base_group = {

	-- Modes
	Normal = { fg = black, bg = white },
	Visual = { reverse = true },

	-- Selection Not-Owned by Vim
	VisualNOS = { fg = '#244E7A' },

	WinSeparator = { fg = '#3D3D40' },

	ModeMsg = {},
	MoreMsg = {},
	MsgArea = { fg = '#626262' },

	colorColumn = { bg = gray },

	-- Cursor
	Cursor = { reverse = true },
	LineNr = { fg = black, bg = bg1 },
	Cursorline = { bg = bg1 },
	CursorLineNr = { fg = red, bg = bg2, bold = true },
	lCursor = { fg = red },
	iCursor = { fg = aqua },
	vCursor = { link = 'Cursor' },
	CursorIM = { link = 'Cursor' },
	CursorColumn = { link = 'CursorLine' },

	TextYankPost = { reverse = true },

	-- Split
	VertSplit = { bg = bg0, fg = fg0 },

	-- Folding
	Folded = { bg = bg1, fg = fg1 },
	FoldColumn = { link = 'Comment' },
	Conceal = { fg = blue },

	-- Search
	IncSearch = { fg = '#3a3a3a', bg = green, bold = true },
	Search = { reverse = true },
	QuickFixLine = { reverse = true },

	-- Debugging
	Debug = { fg = red },

	-- StatusLine
	StatusLine = { fg = bg0, bg = fg1 },
	StatusLineNC = { fg = '#868686'},
	StatusLineTerm = { fg = '#626262', bg = '#1c1c1c' },
	StatusLineTermNC = { fg = '#A9A9A9', bg = '#2c2c2c' },
	StatusLineMode = { fg = '#158C8A' },
	StatusLineGit = { fg = '#af8700', bg = '#2c2c2c' },
	StatusLineFileName = { fg = bg0, bg = fg1 },
  	StatusLineFileEncoding = { fg = '#86868B', bg = '#2c2c2c' },
  	StatusLineFileType = { fg = '#158C8A', bg = '#2c2c2c' },
  	StatusLineFileFormat = { fg = '#86868B', bg = '#2c2c2c' },
  	StatusLineLocation = { fg = '#86868B', bg = '#2c2c2c' },
  	StatusLineGpsDiagnostic = { fg = '#3c3c3c', bg = '#1c1c1c' },
  	StatusLineEmptyspace = { fg = '#2c2c2c', bg = '#1c1c1c' },

	-- TabLine
	TabLineSel = { link = 'Normal' },
	--[[ TabLineSel = { fg = '#606060', bg = '#303030' }, ]]
	TabLine = { fg = '#A9A9A9', bg = '#606060' },
	TabLine_modified_visible = { fg = '#00afff', bg = '#303030' },
	TabLine_modified_selected = { fg = '#A9A9A9', bg = '#303030' },
	TabLine_indicator_selected = { fg = '#A9A9A9', bg = '#303030' },
	TabLineFill = { fg = '#ff0000', bg = '#606060'  },

  	-- Nvim Modes
	Nmode = { fg = '#158C8A' },
	Vmode = { fg = 'Gold1' },
	Imode = { fg = '#00afff' },
	Cmode = { fg = '#af0000' },
	Tmode = { fg = '#FF5573' },
	ShellMode = { fg = '#ffff87' },

  	-- Syntax
	Title = { fg = black, bold = true },
	Statement = { fg = black, bold = true },
	Directory = { fg = black },

	String = { fg = black, italic = true },
	Number = { fg = black },
	Comment = { fg = fg3, italic = true },
	Constant = { fg = black },
	Boolean = { fg = black, italic = true },
	Label = { fg = black },
	Conditional = { fg = black, bold = true },
	Identifier = { fg = black },
	Include = { fg = black, bold = true },
	Operator = { fg = black },
	Define = { fg = black, bold = true },
	Type = { fg = fg1 },
	Function = { fg = black },
	Structure = { fg = black, bold = true },
	Keyword = { fg = black, bold = true },
	Exception = { fg = black },
	Repeat = { fg = black, bold = true },
	Underlined = { fg = black, underline = true },
	Question = { fg = black },
	SpecialKey = { fg = black },
	Special = { fg = black },
	SpecialChar = { fg = black },
	Macro = { fg = black },
	PreProc = { fg = black },
	PreCondit = { fg = black },
	Tag = { fg = black },
	Delimiter = { fg = black },
	SpecialComment = { fg = fg3 },
	Todo = { bg = red, fg = black, bold = true  },
	Character = { fg = black, italic = true },
	Float = { fg = black },
	StorageClass = { fg = black },
	Typedef = { fg = black, bold = true },

  	-- Font enhance
	Bold = { bold = true },
	Italic = { italic = true },
	Underline = { underline = true },

	-- End of buffer and non-text
	NonText = { fg = '#626262', bg = bg0 },
	EndOfBuffer = { fg = bg0, bg = bg0 },

	Ignore = { fg = '#5f5faf', bold = true },

	-- Menu
	WildMenu = { fg = '#161616', bg = '#808000' },

	-- Diff
	MatchParen = { fg = '#09ddd0' },
	DiffAdd = { fg = '#005fff' },
	DiffChange = { fg = '#808000' },
	DiffDelete = { fg = '#d70000' },
	DiffText = { fg = '#ff00ff' },
	diffAdded = { fg = green },
	diffRemoved = { fg = red },
	diffChanged = { fg = aqua },
	diffFile = { fg = orange },
	diffNewFile = { fg = yellow },
	diffLine = { fg = blue },
	SignColumn = { fg = '#626262', bg = bg0 },

	-- Errors
	Error = { fg = '#DC2626', underline = true },
	ErrorMsg = { fg = '#DC2626' },
	SpellErrors = { fg = '#ff005f', undercurl = true },
	WarningMsg = { fg = '#ff5f00' },

	-- Popup Menu
	Pmenu = { fg = '#A1A1A1', bg = '#303030' },
	PmenuSel = { fg = '#F1F1F1', bg = '#015A60' },
	PmenuSbar = { bg = '#262626' },
	PmenuThumb = { bg = '#3D3D40' },


  	-- Spell
	SpellRare = { fg = purple, underline = true },
	SpellBad = { fg = red, underline = true },
	SpellLocal = { fg = aqua, underline = true },
	SpellCap = vim.g.k_theme_improved_warnings and {
		fg = green,
		bold = true,
		italic = true,
	} or { fg = blue, underline = true },

	-- signature
	SignatureMarkText = { link = 'k_themeBlueSign' },
	SignatureMarkerText = { link = 'k_themePurpleSign' },

	-- gitcommit
	gitcommitSelectedFile = { fg = green },
	gitcommitDiscardedFile = { fg = red },

	-- checkhealth
	healthError = { fg = bg0, bg = red },
	healthSuccess = { fg = bg0, bg = green },
	healthWarning = { fg = bg0, bg = yellow },
}

return base_group
