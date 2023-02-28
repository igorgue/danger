local M = {}

function M.load(opts, colors)
	local hi = require("danger.utils").set_highlight
	local colorsheme_name = "danger_" .. opts.style
	local is_dark = opts.style == "dark"
	local is_light = not is_dark

	if is_dark then
		vim.opt.background = "dark"
	else
		vim.opt.background = "light"
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
	hi("Normal", { fg = colors.fg, bg = colors.bg })
	hi("Visual", { fg = colors.fg, bg = colors.bg4 })
	hi("Cursor", { bg = colors.type, fg = colors.keyword2 })
	hi("CursorLine", { bg = colors.bg2 })
	hi("Conceal", { fg = colors.fg, bg = colors.bg4 })
	hi("CursorLineNr", { fg = colors.keyword2, bg = colors.bg2 })
	hi("CursorColumn", { fg = colors.type, bg = colors.bg2 })
	hi("ColorColumn", { bg = colors.bg2 })
	hi("LineNr", { fg = colors.fg5, bg = colors.bg })
	hi("VertSplit", { fg = colors.keyword2, bg = colors.bg })
	hi("StatusLine", { fg = colors.fg4, bg = colors.bg })
	hi("StatusLineNC", { fg = colors.bg, bg = colors.fg2, bold = true })
	hi("Pmenu", { fg = colors.fg2, bg = colors.bg2, blend = 5 })
	hi("PmenuSel", { fg = colors.type, bg = colors.bg4, bold = true, blend = 0 })
	hi("Directory", { fg = colors.const })
	hi("Folded", { fg = colors.fg4, bg = colors.bg })
	hi("WildMenu", { fg = colors.str, bg = colors.bg })
	hi("TabLine", { fg = colors.bg4, bg = colors.none })
	hi("TabLineSel", { fg = colors.bg, bg = colors.keyword2 })
	hi("TabLineFill", { fg = colors.bg, bg = colors.none })
	hi("Quote", { fg = colors.fg, bg = colors.bg })
	hi("Folded", { fg = colors.fg, bg = colors.bg })
	hi("FoldColumn", { fg = colors.fg, bg = colors.bg })
	hi("SignColumn", { fg = colors.fg, bg = colors.bg })
	hi("MatchParen", { fg = colors.type3, bg = colors.none, bold = true })
	hi("Search", { fg = colors.none, bg = colors.none, bold = true, reverse = true })
	hi("IncSearch", { fg = colors.none, bg = colors.none, bold = true, reverse = true })
	hi("Boolean", { fg = colors.const })
	hi("Character", { fg = colors.const })
	hi("Comment", { fg = colors.comment })
	hi("Conditional", { fg = colors.keyword })
	hi("Constant", { fg = colors.const })
	hi("Define", { fg = colors.keyword })
	hi("Error", { fg = colors.error, special = colors.error, undercurl = true })
	hi("DiffAdd", { fg = colors.bg, bg = colors.success })
	hi("DiffDelete", { fg = colors.bg, bg = colors.error })
	hi("DiffChange", { fg = colors.bg, bg = colors.const })
	hi("DiffText", { fg = colors.fg })
	hi("ErrorMsg", { fg = colors.warning, bg = colors.bg2, bold = true })
	hi("WarningMsg", { fg = is_dark and colors.fg or colors.bg, bg = colors.warning2 })
	hi("Float", { fg = colors.const })
	hi("NormalFloat", { bg = colors.bg })
	hi("FloatBorder", { fg = colors.keyword2 })
	hi("Function", { fg = colors.func })
	hi("Identifier", { fg = colors.fg2 })
	hi("Keyword", { fg = colors.keyword, bold = true })
	hi("Label", { fg = colors.fg2 })
	hi("NonText", { fg = colors.bg4, bg = colors.bg })
	hi("Number", { fg = colors.const })
	hi("Operator", { fg = colors.keyword })
	hi("PreProc", { fg = colors.keyword })
	hi("Special", { fg = colors.fg })
	hi("SpecialKey", { fg = colors.fg2 })
	hi("Statement", { fg = colors.keyword })
	hi("StorageClass", { fg = colors.type })
	hi("String", { fg = colors.str })
	hi("Tag", { fg = colors.keyword })
	hi("Title", { fg = colors.keyword, bold = true })
	hi("Type", { fg = colors.type })
	hi("Underlined", { underline = true })
	hi("SpellBad", { fg = colors.fg, bg = colors.error, undercurl = true, special = colors.error })
	hi("SpellCap", { fg = colors.fg, bg = colors.keyword, undercurl = true, special = colors.warning })
	hi("SpellLocal", { fg = colors.fg, bg = colors.keyword, undercurl = true, special = colors.warning })
	hi("SpellRare", { fg = colors.fg, bg = colors.keyword, undercurl = true, special = colors.warning })
	hi("cParen", { fg = colors.var })
	hi("cCustomParen", { fg = colors.var })
	hi("Todo", { fg = colors.bg, bg = colors.const })

	-- plugins' ui
	hi("pythonBuiltinFunc", { fg = colors.builtin })
	hi("pythonBuiltinObj", { fg = colors.builtin })
	hi("pythonImport", { fg = colors.warning })
	hi("pythonStatement", { fg = colors.warning })
	hi("pythonStrFormat", { fg = colors.var })
	hi("pythonClassVar", { fg = colors.type2, italic = true })
	hi("pythonRepeat", { fg = colors.warning })
	hi("pythonOperator", { fg = colors.warning })
	hi("pythonDottedName", { fg = colors.builtin, italic = true })
	hi("pythonDecorator", { fg = colors.builtin, italic = true })
	hi("pythonException", { fg = colors.keyword })
	hi("pythonExClass", { fg = colors.keyword, bold = true })
	hi("pythonRun", { fg = colors.comment, italic = is_light })
	hi("pythonFString", { fg = colors.str })
	hi("pythonStrInterpRegion", { fg = colors.fg })
	hi("djangoFilter", { fg = colors.func })
	hi("djangoStatement", { fg = colors.type })
	hi("djangoVarBlock", { fg = colors.var })

	hi("dartConstant", { fg = colors.const })

	hi("nimBuiltin", { fg = colors.builtin })

	hi("DiagnosticError", { fg = colors.error })
	hi("DiagnosticWarning", { fg = colors.warning })
	hi("DiagnosticWarn", { fg = colors.warning })
	hi("DiagnosticInformation", { fg = colors.comment })
	hi("DiagnosticInfo", { fg = colors.comment })
	hi("DiagnosticHint", { fg = colors.fg5 })
	hi("DiagnosticUnderlineError", { fg = colors.error })
	hi("DiagnosticUnderlineWarning", { fg = colors.warning })
	hi("DiagnosticUnderlineInformation", { fg = colors.comment })
	hi("DiagnosticUnderlineHint", { fg = colors.fg5 })
	hi("DiagnosticSignInfo", { fg = colors.keyword2 })
	hi("LspCodeLens", { fg = colors.bg3, italic = true })
	hi("LspCodeLensSeparator", { fg = colors.bg3, italic = true })
	hi("LspInfoBorder", { fg = colors.keyword2, bg = colors.bg })

	hi("TelescopeBorder", { fg = colors.keyword2, bg = colors.bg })

	hi("GitSignsAdd", { fg = colors.success })
	hi("GitSignsChange", { fg = colors.warning })
	hi("GitSignsDelete", { fg = colors.error })
	hi("GitSignsAddNr", { fg = colors.success })
	hi("GitSignsChangeNr", { fg = colors.warning })
	hi("GitSignsDeleteNr", { fg = colors.error })
	hi("GitSignsAddLn", { fg = colors.success })
	hi("GitSignsChangeLn", { fg = colors.warning })
	hi("GitSignsDeleteLn", { fg = colors.error })
	hi("GitSignsCurrentLineBlame", { fg = colors.fg2 })
	hi("CopilotSuggestion", { fg = colors.keyword, italic = true })
	hi("CopilotAnnotation", { fg = colors.keyword2, italic = true })

	hi("NotifyERRORBorder", { fg = colors.error })
	hi("NotifyWARNBorder", { fg = colors.warning })
	hi("NotifyINFOBorder", { fg = colors.keyword })
	hi("NotifyDEBUGBorder", { fg = colors.comment })
	hi("NotifyTRACEBorder", { fg = colors.comment })
	hi("NotifyERRORIcon", { fg = colors.error })
	hi("NotifyWARNIcon", { fg = colors.warning })
	hi("NotifyINFOIcon", { fg = colors.keyword })
	hi("NotifyDEBUGIcon", { fg = colors.comment })
	hi("NotifyTRACEIcon", { fg = colors.comment })
	hi("NotifyERRORTitle", { fg = colors.error })
	hi("NotifyWARNTitle", { fg = colors.warning })
	hi("NotifyINFOTitle", { fg = colors.keyword })
	hi("NotifyDEBUGTitle", { fg = colors.comment })
	hi("NotifyTRACETitle", { fg = colors.comment })

	-- LspSaga
	-- https://github.com/glepnir/lspsaga.nvim/blob/main/lua/lspsaga/highlight.lua
	-- basic
	hi("TitleString", { fg = colors.fg })
	hi("TitleIcon", { fg = colors.keyword })
	hi("SagaBorder", { fg = colors.keyword2, bg = colors.none })
	hi("SagaNormal", { bg = colors.none, blend = 50 })
	hi("SagaExpand", { fg = colors.success })
	hi("SagaCollapse", { fg = colors.success })
	hi("SagaBeacon", { bg = colors.bg })

	-- finder
	hi("ActionPreviewTitle", { fg = colors.keyword2, bg = colors.none })
	hi("CodeActionText", { fg = colors.success })
	hi("CodeActionNumber", { fg = colors.keyword2 })

	hi("FinderSelection", { fg = colors.keyword, bold = true })
	hi("FinderFileName", { fg = colors.fg })
	hi("FinderIcon", { fg = colors.fg })
	hi("FinderCount", { fg = colors.fg })
	hi("FinderType", { fg = colors.fg })
	hi("FinderSpinnerTitle", { fg = colors.fg, bold = true })
	hi("FinderSpinner", { fg = colors.fg, bold = true })
	hi("FinderVirtText", { fg = colors.bg })
	hi("RenameNormal", { fg = colors.fg })
	hi("DiagnosticOk", { fg = colors.success })
	hi("DiagnosticSource", { fg = colors.bg })
	hi("DiagnosticPos", { fg = colors.fg })
	hi("DiagnosticWord", { fg = colors.fg })
	hi("CallHierarchyIcon", { fg = colors.keyword2 })
	hi("CallHierarchyTitle", { fg = colors.keyword2 })
	hi("SagaShadow", { bg = colors.bg })
	hi("OutlineIndent", { fg = colors.bg })

	-- Because kind never worked after changing colorscheme
	hi("LspSagaWinbarFile", { fg = colors.fg })
	hi("LspSagaWinbarModule", { fg = colors.keyword })
	hi("LspSagaWinbarNamespace", { fg = colors.warning })
	hi("LspSagaWinbarPackage", { fg = colors.type })
	hi("LspSagaWinbarClass", { fg = colors.type })
	hi("LspSagaWinbarMethod", { fg = colors.type })
	hi("LspSagaWinbarProperty", { fg = colors.str })
	hi("LspSagaWinbarField", { fg = colors.builtin })
	hi("LspSagaWinbarConstructor", { fg = colors.keyword })
	hi("LspSagaWinbarEnum", { fg = colors.success })
	hi("LspSagaWinbarInterface", { fg = colors.warning })
	hi("LspSagaWinbarFunction", { fg = colors.func })
	hi("LspSagaWinbarVariable", { fg = colors.keyword })
	hi("LspSagaWinbarConstant", { fg = colors.str })
	hi("LspSagaWinbarString", { fg = colors.success })
	hi("LspSagaWinbarNumber", { fg = colors.success })
	hi("LspSagaWinbarBoolean", { fg = colors.warning })
	hi("LspSagaWinbarArray", { fg = colors.keyword })
	hi("LspSagaWinbarObject", { fg = colors.warning })
	hi("LspSagaWinbarKey", { fg = colors.keyword })
	hi("LspSagaWinbarNull", { fg = colors.warning2 })
	hi("LspSagaWinbarEnumMember", { fg = colors.success })
	hi("LspSagaWinbarStruct", { fg = colors.type2 })
	hi("LspSagaWinbarEvent", { fg = colors.type2 })
	hi("LspSagaWinbarOperator", { fg = colors.success })
	hi("LspSagaWinbarTypeParameter", { fg = colors.success })
	hi("LspSagaWinbarTypeAlias", { fg = colors.success })
	hi("LspSagaWinbarParameter", { fg = colors.keyword })
	hi("LspSagaWinbarStaticMethod", { fg = colors.warning })
	hi("LspSagaWinbarMacro", { fg = colors.error })

	hi("redisStringCommand", { fg = colors.keyword2 })
	hi("redisHashCommand", { fg = colors.keyword2 })

	hi("DapBreakpoint", { fg = colors.error })
	hi("DapStopped", { fg = colors.success })
	hi("DapLogPoint", { fg = colors.warning })

	hi("WhichKeyFloat", { bg = colors.bg2 })

	hi("AlphaHeader", { fg = colors.type, bold = true })
	hi("AlphaButtons", { fg = colors.keyword2 })
	hi("AlphaShortcut", { fg = colors.type2, italic = true })
	hi("AlphaFooter", { fg = colors.comment, italic = true })
	hi("DashboardFooter", { fg = colors.comment, italic = true })

	hi("MiniIndentscopeSymbol", { fg = colors.type, bold = true })

	-- treesitter
	hi("@annotation", { link = "PreProc" })
	hi("@attribute", { link = "PreProc" })
	hi("@boolean", { link = "Boolean" })
	hi("@character", { link = "Character" })
	hi("@character.special", { link = "SpecialChar" })
	hi("@comment", { link = "Comment" })
	hi("@conditional", { fg = colors.keyword2, bold = true })
	hi("@constant.builtin", { link = "Special" })
	hi("@constant", { link = "Constant" })
	hi("@constant.macro", { link = "Define" })
	hi("@constructor", { link = "Special" })
	hi("@debug", { link = "Debug" })
	hi("@define", { link = "Define" })
	hi("@delimiter", { link = "Delimiter" })
	hi("@exception", { fg = colors.keyword2, bold = true })
	hi("@exception", { link = "Exception" })
	hi("@field", { fg = colors.fg2 })
	hi("@field", { link = "Identifier" })
	hi("@float", { link = "Float" })
	hi("@function.builtin", { fg = colors.keyword2 })
	hi("@function.call", { link = "@function" })
	hi("@function", { fg = colors.keyword2 })
	hi("@function.macro", { link = "Macro" })
	hi("@include", { link = "Include" })
	hi("@keyword", { fg = colors.keyword2, bold = true })
	hi("@keyword.function", { fg = colors.keyword2, bold = true, italic = true })
	hi("@keyword.operator", { link = "Operator" })
	hi("@keyword.return", { link = "Keyword" })
	hi("@label", { link = "Label" })
	hi("@method.call", { link = "@method" })
	hi("@method", { link = "Function" })
	hi("@namespace", { link = "Include" })
	hi("@number", { link = "Number" })
	hi("@operator", { link = "Operator" })
	hi("@parameter", { link = "Identifier" })
	hi("@parameter.reference", { link = "@parameter" })
	hi("@preproc", { link = "PreProc" })
	hi("@property", { link = "Identifier" })
	hi("@punctuation.bracket", { link = "Delimiter" })
	hi("@punctuation.delimiter", { link = "Delimiter" })
	hi("@punctuation.special", { link = "Delimiter" })
	hi("@repeat", { fg = colors.keyword2, bold = true })
	hi("@repeat", { link = "Repeat" })
	hi("@storageclass", { link = "StorageClass" })
	hi("@string.escape", { link = "SpecialChar" })
	hi("@string", { link = "String" })
	hi("@string.regex", { link = "String" })
	hi("@string.special", { link = "SpecialChar" })
	hi("@symbol", { link = "Identifier" })
	hi("@tag.attribute", { link = "@property" })
	hi("@tag.delimiter", { link = "Delimiter" })
	hi("@tag", { link = "Label" })
	hi("@text.danger", { link = "WarningMsg" })
	hi("@text.emphasis", { italic = true })
	hi("@text.environment", { link = "Macro" })
	hi("@text.environment.name", { link = "Macro" })
	hi("@text", { link = "@none" })
	hi("@text.literal", { link = "String" })
	hi("@text.math", { link = "Special" })
	hi("@text.note", { link = "SpecialComment" })
	hi("@text.reference", { link = "Constant" })
	hi("@text.strike", { strikethrough = true })
	hi("@text.strong", { bold = true })
	hi("@text.title", { link = "Title" })
	hi("@text.todo", { link = "Todo" })
	hi("@text.underline", { underline = true })
	hi("@text.uri", { link = "Underlined" })
	hi("@text.warning", { link = "Todo" })
	hi("@type.builtin", { link = "Type" })
	hi("@type.definition", { link = "Typedef" })
	hi("@type", { link = "Type" })
	hi("@type.qualifier", { link = "Type" })
	hi("@variable.builtin", { link = "Special" })
	hi("@variable", { fg = colors.fg })

	-- markid plugin
	hi("markid1", { fg = colors.extra1 })
	hi("markid2", { fg = colors.extra2 })
	hi("markid3", { fg = colors.extra3 })
	hi("markid4", { fg = colors.extra4 })
	hi("markid5", { fg = colors.extra5 })
	hi("markid6", { fg = colors.extra6 })
	hi("markid7", { fg = colors.extra7 })
	hi("markid8", { fg = colors.extra8 })
	hi("markid9", { fg = colors.extra9 })
	hi("markid10", { fg = colors.extra10 })

	-- rainbow parentheses
	hi("TSRainbowRed", { fg = colors.warning2 })
	hi("TSRainbowYellow", { fg = colors.const })
	hi("TSRainbowBlue", { fg = colors.keyword })
	hi("TSRainbowOrange", { fg = colors.warning })
	hi("TSRainbowGreen", { fg = colors.success })
	hi("TSRainbowViolet", { fg = colors.keyword2 })
	hi("TSRainbowCyan", { fg = colors.str })

	-- noice
	-- https://github.com/folke/noice.nvim#-highlight-groups
	hi("NoiceVirtualText", { fg = colors.bg, bg = colors.keyword2, bold = true })
	hi("NoiceCmdlineIconSearch", { fg = colors.keyword2, bold = true })
	hi("NoiceCmdlinePopupBorderSearch", { fg = colors.keyword2, bold = true })
	hi("NoiceConfirmBorder", { fg = colors.keyword2, bold = true })

	-- todo
	hi("TodoBgTODO", { fg = colors.bg, bg = colors.str, bold = true })
	hi("TodoFgTODO", { fg = colors.str })
	hi("TodoSignTODO", { fg = colors.str })
	hi("TodoBgFIX", { fg = colors.bg, bg = colors.error, bold = true })
	hi("TodoFgFIX", { fg = colors.error })
	hi("TodoSignFIX", { fg = colors.error })
	hi("TodoBgPERF", { fg = colors.bg, bg = colors.success, bold = true })
	hi("TodoFgPERF", { fg = colors.success })
	hi("TodoSignPERF", { fg = colors.success })
	hi("TodoBgWARN", { fg = colors.bg, bg = colors.warning, bold = true })
	hi("TodoFgWARN", { fg = colors.warning })
	hi("TodoSignWARN", { fg = colors.warning })
	hi("TodoBgTEST", { fg = colors.bg, bg = colors.builtin, bold = true })
	hi("TodoFgTEST", { fg = colors.builtin })
	hi("TodoSignTEST", { fg = colors.builtin })
	hi("TodoBgNOTE", { fg = colors.bg, bg = colors.comment, bold = true })
	hi("TodoFgNOTE", { fg = colors.comment })
	hi("TodoSignNOTE", { fg = colors.comment })
	hi("TodoBgHACK", { fg = colors.bg, bg = colors.warning2, bold = true })
	hi("TodoFgHACK", { fg = colors.warning2 })
	hi("TodoSignHACK", { fg = colors.warning2 })

	hi("NvimInternalError", { fg = colors.bg, bg = colors.error, bold = true })
end

return M
