local M = {}

M.load = function(opts, colors)
	local colorsheme_name = "danger_" .. opts.style
	local set = require("danger.utils").set_highlight

	if opts.style == "dark" then
		vim.cmd("set background=dark")
	else
		vim.cmd("set background=light")
	end

	if vim.g.colors_name ~= colorsheme_name then
		vim.cmd("hi clear")

		vim.g.colors_name = colorsheme_name
	end

	-- neovim terminal colors
	vim.g.terminal_color_0 = colors.comment
	vim.g.terminal_color_1 = colors.warning
	vim.g.terminal_color_2 = colors.builtin
	vim.g.terminal_color_3 = colors.const
	vim.g.terminal_color_4 = colors.type
	vim.g.terminal_color_5 = colors.builtin
	vim.g.terminal_color_6 = colors.fg3
	vim.g.terminal_color_7 = colors.str
	vim.g.terminal_color_8 = colors.keyword
	vim.g.terminal_color_9 = colors.error
	vim.g.terminal_color_10 = colors.fg2
	vim.g.terminal_color_11 = colors.var
	vim.g.terminal_color_12 = colors.const
	vim.g.terminal_color_13 = colors.type
	vim.g.terminal_color_14 = colors.fg4
	vim.g.terminal_color_15 = colors.success

	-- core highlight groups
	set("Normal", { fg = colors.fg, bg = colors.bg })
	set("Visual", { fg = colors.fg, bg = colors.bg4 })
	set("Cursor", { bg = colors.type })
	set("CursorLine", { bg = colors.bg2 })
	set("CursorLineNr", { fg = colors.keyword2, bg = colors.bg2 })
	set("CursorColumn", { fg = colors.type, bg = colors.bg2 })
	set("ColorColumn", { bg = colors.bg2 })
	set("LineNr", { fg = colors.fg5, bg = colors.bg })
	set("VertSplit", { fg = colors.keyword2, bg = colors.bg })
	set("StatusLine", { fg = colors.fg4, bg = colors.bg })
	set("StatusLineNC", { fg = colors.bg, bg = colors.fg2, bold = true })
	set("Pmenu", { fg = colors.fg2, bg = colors.bg2 })
	set("PmenuSel", { fg = colors.type, bg = colors.bg4, bold = true })
	set("Directory", { fg = colors.const })
	set("Folded", { fg = colors.fg4, bg = colors.bg })
	set("WildMenu", { fg = colors.str, bg = colors.bg })
	set("TabLine", { fg = colors.bg4, bg = "none" })
	set("TabLineSel", { fg = colors.bg, bg = colors.keyword2 })
	set("TabLineFill", { fg = colors.bg, bg = "none" })
	set("Quote", { fg = colors.fg, bg = colors.bg })
	set("Folded", { fg = colors.fg, bg = colors.bg })
	set("FoldColumn", { fg = colors.fg, bg = colors.bg })
	set("SignColumn", { fg = colors.fg, bg = colors.bg })
	set("MatchParen", { fg = colors.type3, bg = "none", bold = true })
	set("Search", { fg = "none", bg = "none", bold = true, reverse = true })
	set("IncSearch", { fg = "none", bg = "none", bold = true, reverse = true })
	set("Boolean", { fg = colors.const })
	set("Character", { fg = colors.const })
	set("Comment", { fg = colors.comment })
	set("Conditional", { fg = colors.keyword })
	set("Constant", { fg = colors.const })
	set("Define", { fg = colors.keyword })
	set("Error", { fg = colors.error, special = colors.error, undercurl = true })
	set("DiffAdd", { fg = colors.bg, bg = colors.builtin })
	set("DiffDelete", { fg = colors.bg, bg = colors.error })
	set("DiffChange", { fg = colors.bg, bg = colors.const })
	set("DiffText", { fg = colors.fg, bg = colors.warning, bold = true })
	set("ErrorMsg", { fg = colors.warning, bg = colors.bg2, bold = true })
	set("WarningMsg", { fg = colors.fg, bg = colors.warning })
	set("Float", { fg = colors.const })
	set("NormalFloat", { bg = colors.bg })
	set("FloatBorder", { fg = colors.keyword2 })
	set("Function", { fg = colors.func })
	set("Identifier", { fg = colors.var })
	set("Keyword", { fg = colors.keyword, bold = true })
	set("Label", { fg = colors.var })
	set("NonText", { fg = colors.bg4, bg = colors.bg })
	set("Number", { fg = colors.const })
	set("Operator", { fg = colors.keyword })
	set("PreProc", { fg = colors.keyword })
	set("Special", { fg = colors.fg })
	set("SpecialKey", { fg = colors.fg2 })
	set("Statement", { fg = colors.keyword })
	set("StorageClass", { fg = colors.type })
	set("String", { fg = colors.str })
	set("Tag", { fg = colors.keyword })
	set("Title", { fg = colors.keyword, bold = true })
	set("Type", { fg = colors.type })
	set("Underlined", { underline = true })
	set("SpellBad", { fg = colors.fg, bg = colors.error, undercurl = true, special = colors.error })
	set("SpellCap", { fg = colors.fg, bg = colors.keyword, undercurl = true, special = colors.warning })
	set("SpellLocal", { fg = colors.fg, bg = colors.keyword, undercurl = true, special = colors.warning })
	set("SpellRare", { fg = colors.fg, bg = colors.keyword, undercurl = true, special = colors.warning })
	set("cParen", { fg = colors.var })
	set("cCustomParen", { fg = colors.var })

	-- plugins' ui
	set("pythonBuiltinFunc", { fg = colors.builtin })
	set("pythonBuiltinObj", { fg = colors.builtin })
	set("pythonImport", { fg = colors.warning })
	set("pythonStatement", { fg = colors.warning })
	set("pythonStrFormat", { fg = colors.var })
	set("pythonClassVar", { fg = colors.type2, italic = true })
	set("pythonRepeat", { fg = colors.warning })
	set("pythonOperator", { fg = colors.warning })
	set("pythonDottedName", { fg = colors.builtin, italic = true })
	set("pythonDecorator", { fg = colors.builtin, italic = true })
	set("pythonException", { fg = colors.keyword })
	set("pythonExClass", { fg = colors.keyword, bold = true })
	set("pythonRun", { fg = colors.comment, italic = true })
	set("pythonFString", { fg = colors.str })
	set("pythonStrInterpRegion", { fg = colors.fg })
	set("djangoFilter", { fg = colors.func })
	set("djangoStatement", { fg = colors.type })
	set("djangoVarBlock", { fg = colors.var })

	set("dartConstant", { fg = colors.const })

	set("nimBuiltin", { fg = colors.builtin })

	set("DiagnosticError", { fg = colors.error })
	set("DiagnosticWarning", { fg = colors.warning })
	set("DiagnosticInformation", { fg = colors.comment })
	set("DiagnosticHint", { fg = colors.fg5 })
	set("DiagnosticUnderlineError", { fg = colors.error })
	set("DiagnosticUnderlineWarning", { fg = colors.warning })
	set("DiagnosticUnderlineInformation", { fg = colors.comment })
	set("DiagnosticUnderlineHint", { fg = colors.fg5 })
	set("DiagnosticSignInfo", { fg = colors.keyword2 })
	set("LspCodeLens", { fg = colors.bg3, italic = true })
	set("LspCodeLensSeparator", { fg = colors.bg3, italic = true })
	set("LspInfoBorder", { fg = colors.keyword2, bg = colors.bg })

	set("TelescopeBorder", { fg = colors.keyword2, bg = colors.bg })

	set("GitSignsAdd", { fg = colors.success })
	set("GitSignsChange", { fg = colors.warning })
	set("GitSignsDelete", { fg = colors.error })
	set("GitSignsAddNr", { fg = colors.success })
	set("GitSignsChangeNr", { fg = colors.warning })
	set("GitSignsDeleteNr", { fg = colors.error })
	set("GitSignsAddLn", { fg = colors.success })
	set("GitSignsChangeLn", { fg = colors.warning })
	set("GitSignsDeleteLn", { fg = colors.error })
	set("GitSignsCurrentLineBlame", { fg = colors.fg2 })
	set("CopilotSuggestion", { fg = colors.keyword, italic = true })
	set("CopilotAnnotation", { fg = colors.keyword2, italic = true })

	set("NotifyERRORBorder", { fg = colors.error })
	set("NotifyWARNBorder", { fg = colors.warning })
	set("NotifyINFOBorder", { fg = colors.keyword })
	set("NotifyDEBUGBorder", { fg = colors.comment })
	set("NotifyTRACEBorder", { fg = colors.comment })
	set("NotifyERRORIcon", { fg = colors.error })
	set("NotifyWARNIcon", { fg = colors.warning })
	set("NotifyINFOIcon", { fg = colors.keyword })
	set("NotifyDEBUGIcon", { fg = colors.comment })
	set("NotifyTRACEIcon", { fg = colors.comment })
	set("NotifyERRORTitle", { fg = colors.error })
	set("NotifyWARNTitle", { fg = colors.warning })
	set("NotifyINFOTitle", { fg = colors.keyword })
	set("NotifyDEBUGTitle", { fg = colors.comment })
	set("NotifyTRACETitle", { fg = colors.comment })

	set("LspSagaLightBulb", { fg = colors.func })
	set("LspSagaCodeActionBorder", { fg = colors.keyword2, bg = colors.bg })
	set("LspSagaAutoPreview", { fg = colors.keyword2, bg = colors.bg })
	set("LspSagaLspFinderBorder", { fg = colors.keyword2, bg = colors.bg })
	set("FinderSpinnerBorder", { fg = colors.keyword2, bg = colors.bg })
	set("DefinitionBorder", { fg = colors.keyword2, bg = colors.bg })
	set("LspSagaBorderTitle", { fg = colors.keyword2, bg = colors.bg })
	set("LspSagaHoverBorder", { fg = colors.keyword2, bg = "none" })
	set("LspSagaRenameBorder", { fg = colors.keyword2, bg = colors.bg })
	set("LspSagaDiagnosticBorder", { fg = colors.keyword2, bg = colors.bg })
	set("LspSagaSignatureHelpBorder", { fg = colors.keyword2, bg = colors.bg })
	set("LSOutlinePreviewBorder", { fg = colors.keyword2, bg = colors.bg })

	set("redisStringCommand", { fg = colors.keyword2 })
	set("redisHashCommand", { fg = colors.keyword2 })

	set("DapBreakpoint", { fg = colors.error })
	set("DapStopped", { fg = colors.success })
	set("DapLogPoint", { fg = colors.warning })

	set("NoiceVirtualText", { fg = colors.bg, bg = colors.keyword2, bold = true })

	set("WhichKeyFloat", { bg = colors.bg2 })

	set("AlphaHeader", { fg = colors.type, bold = true })
	set("AlphaButtons", { fg = colors.keyword2 })
	set("AlphaShortcut", { fg = colors.type2, italic = true })
	set("AlphaFooter", { fg = colors.comment, italic = true })
	set("DashboardFooter", { fg = colors.comment, italic = true })

	set("MiniIndentscopeSymbol", { fg = colors.type })

	-- treesitter
	set("@functions", { fg = colors.keyword2, bold = true })
	set("@keyword", { fg = colors.keyword2, bold = true })
	set("@keyword.function", { fg = colors.keyword2, bold = true, italic = true })

	-- markid plugin
	set("markid1", { fg = colors.extra1 })
	set("markid2", { fg = colors.extra2 })
	set("markid3", { fg = colors.extra3 })
	set("markid4", { fg = colors.extra4 })
	set("markid5", { fg = colors.extra5 })
	set("markid6", { fg = colors.extra6 })
	set("markid7", { fg = colors.extra7 })
	set("markid8", { fg = colors.extra8 })
	set("markid9", { fg = colors.extra9 })
	set("markid10", { fg = colors.extra10 })

	-- rainbow parentheses
	set("rainbowcol1", { fg = colors.type })
	set("rainbowcol2", { fg = colors.type2 })
	set("rainbowcol3", { fg = colors.builtin })
	set("rainbowcol4", { fg = colors.func })
	set("rainbowcol5", { fg = colors.warning })
	set("rainbowcol6", { fg = colors.warning2 })
	set("rainbowcol7", { fg = colors.error })

	-- noice
	set("NoiceCompletionItemKindDefault", { fg = colors.fg, bg = "none" })
	set("NoiceCompletionItemKindKeyword", { fg = colors.keyword, bg = "none" })
	--   NoiceCompletionItemKindKeyword = { fg = c.cyan, bg = c.none },
	--   NoiceCompletionItemKindVariable = { fg = c.magenta, bg = c.none },
	--   NoiceCompletionItemKindConstant = { fg = c.magenta, bg = c.none },
	--   NoiceCompletionItemKindReference = { fg = c.magenta, bg = c.none },
	--   NoiceCompletionItemKindValue = { fg = c.magenta, bg = c.none },
	--   NoiceCompletionItemKindFunction = { fg = c.blue, bg = c.none },
	--   NoiceCompletionItemKindMethod = { fg = c.blue, bg = c.none },
	--   NoiceCompletionItemKindConstructor = { fg = c.blue, bg = c.none },
	--   NoiceCompletionItemKindClass = { fg = c.orange, bg = c.none },
	--   NoiceCompletionItemKindInterface = { fg = c.orange, bg = c.none },
	--   NoiceCompletionItemKindStruct = { fg = c.orange, bg = c.none },
	--   NoiceCompletionItemKindEvent = { fg = c.orange, bg = c.none },
	--   NoiceCompletionItemKindEnum = { fg = c.orange, bg = c.none },
	--   NoiceCompletionItemKindUnit = { fg = c.orange, bg = c.none },
	--   NoiceCompletionItemKindModule = { fg = c.yellow, bg = c.none },
	--   NoiceCompletionItemKindProperty = { fg = c.green1, bg = c.none },
	--   NoiceCompletionItemKindField = { fg = c.green1, bg = c.none },
	--   NoiceCompletionItemKindTypeParameter = { fg = c.green1, bg = c.none },
	--   NoiceCompletionItemKindEnumMember = { fg = c.green1, bg = c.none },
	--   NoiceCompletionItemKindOperator = { fg = c.green1, bg = c.none },
	--   NoiceCompletionItemKindSnippet = { fg = c.dark5, bg = c.none },
end

return M
