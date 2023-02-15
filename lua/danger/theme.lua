local M = {}

M.load = function(opts, colors)
	local colorsheme_name = "danger_" .. opts.style
	local hi = require("danger.utils").set_highlight
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
	hi("CursorLineNr", { fg = colors.keyword2, bg = colors.bg2 })
	hi("CursorColumn", { fg = colors.type, bg = colors.bg2 })
	hi("ColorColumn", { bg = colors.bg2 })
	hi("LineNr", { fg = colors.fg5, bg = colors.bg })
	hi("VertSplit", { fg = colors.keyword2, bg = colors.bg })
	hi("StatusLine", { fg = colors.fg4, bg = colors.bg })
	hi("StatusLineNC", { fg = colors.bg, bg = colors.fg2, bold = true })
	hi("Pmenu", { fg = colors.fg2, bg = colors.bg2 })
	hi("PmenuSel", { fg = colors.type, bg = colors.bg4, bold = true })
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
	hi("DiffAdd", { fg = colors.bg, bg = colors.builtin })
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
	hi("@function", { fg = colors.keyword2 })
	hi("@variable", { fg = colors.fg })
	hi("@field", { fg = colors.fg2 })
	hi("@function.builtin", { fg = colors.keyword2 })
	hi("@keyword", { fg = colors.keyword2, bold = true })
	hi("@keyword.function", { fg = colors.keyword2, bold = true, italic = true })
	hi("@repeat", { fg = colors.keyword2, bold = true })
	hi("@conditional", { fg = colors.keyword2, bold = true })
	hi("@exception", { fg = colors.keyword2, bold = true })
	--   ["@annotation"] = {
	--   default = true,
	--   link = "PreProc",
	-- },
	-- ["@attribute"] = {
	--   default = true,
	--   link = "PreProc",
	-- },
	-- ["@boolean"] = {
	--   default = true,
	--   link = "Boolean",
	-- },
	-- ["@character"] = {
	--   default = true,
	--   link = "Character",
	-- },
	-- ["@character.special"] = {
	--   default = true,
	--   link = "SpecialChar",
	-- },
	-- ["@comment"] = {
	--   default = true,
	--   link = "Comment",
	-- },
	-- ["@conditional"] = {
	--   default = true,
	--   link = "Conditional",
	-- },
	-- ["@constant"] = {
	--   default = true,
	--   link = "Constant",
	-- },
	-- ["@constant.builtin"] = {
	--   default = true,
	--   link = "Special",
	-- },
	-- ["@constant.macro"] = {
	--   default = true,
	--   link = "Define",
	-- },
	-- ["@constructor"] = {
	--   default = true,
	--   link = "Special",
	-- },
	-- ["@debug"] = {
	--   default = true,
	--   link = "Debug",
	-- },
	-- ["@define"] = {
	--   default = true,
	--   link = "Define",
	-- },
	-- ["@exception"] = {
	--   default = true,
	--   link = "Exception",
	-- },
	-- ["@field"] = {
	--   default = true,
	--   link = "Identifier",
	-- },
	-- ["@float"] = {
	--   default = true,
	--   link = "Float",
	-- },
	-- ["@function"] = {
	--   default = true,
	--   link = "Function",
	-- },
	-- ["@function.builtin"] = {
	--   default = true,
	--   link = "Special",
	-- },
	-- ["@function.call"] = {
	--   default = true,
	--   link = "@function",
	-- },
	-- ["@function.macro"] = {
	--   default = true,
	--   link = "Macro",
	-- },
	-- ["@include"] = {
	--   default = true,
	--   link = "Include",
	-- },
	-- ["@keyword"] = {
	--   default = true,
	--   link = "Keyword",
	-- },
	-- ["@keyword.function"] = {
	--   default = true,
	--   link = "Keyword",
	-- },
	-- ["@keyword.operator"] = {
	--   default = true,
	--   link = "@operator",
	-- },
	-- ["@keyword.return"] = {
	--   default = true,
	--   link = "@keyword",
	-- },
	-- ["@label"] = {
	--   default = true,
	--   link = "Label",
	-- },
	-- ["@method"] = {
	--   default = true,
	--   link = "Function",
	-- },
	-- ["@method.call"] = {
	--   default = true,
	--   link = "@method",
	-- },
	-- ["@namespace"] = {
	--   default = true,
	--   link = "Include",
	-- },
	-- ["@none"] = {
	--   default = true,
	-- },
	-- ["@number"] = {
	--   default = true,
	--   link = "Number",
	-- },
	-- ["@operator"] = {
	--   default = true,
	--   link = "Operator",
	-- },
	-- ["@parameter"] = {
	--   default = true,
	--   link = "Identifier",
	-- },
	-- ["@parameter.reference"] = {
	--   default = true,
	--   link = "@parameter",
	-- },
	-- ["@preproc"] = {
	--   default = true,
	--   link = "PreProc",
	-- },
	-- ["@property"] = {
	--   default = true,
	--   link = "Identifier",
	-- },
	-- ["@punctuation.bracket"] = {
	--   default = true,
	--   link = "Delimiter",
	-- },
	-- ["@punctuation.delimiter"] = {
	--   default = true,
	--   link = "Delimiter",
	-- },
	-- ["@punctuation.special"] = {
	--   default = true,
	--   link = "Delimiter",
	-- },
	-- ["@repeat"] = {
	--   default = true,
	--   link = "Repeat",
	-- },
	-- ["@storageclass"] = {
	--   default = true,
	--   link = "StorageClass",
	-- },
	-- ["@string"] = {
	--   default = true,
	--   link = "String",
	-- },
	-- ["@string.escape"] = {
	--   ["@string.escape"] = {
	--   default = true,
	--   link = "SpecialChar",
	-- },
	-- ["@string.regex"] = {
	--   default = true,
	--   link = "String",
	-- },
	-- ["@string.special"] = {
	--   default = true,
	--   link = "SpecialChar",
	-- },
	-- ["@symbol"] = {
	--   default = true,
	--   link = "Identifier",
	-- },
	-- ["@tag"] = {
	--   default = true,
	--   link = "Label",
	-- },
	-- ["@tag.attribute"] = {
	--   default = true,
	--   link = "@property",
	-- },
	-- ["@tag.delimiter"] = {
	--   default = true,
	--   link = "Delimiter",
	-- },
	-- ["@text"] = {
	--   default = true,
	--   link = "@none",
	-- },
	-- ["@text.danger"] = {
	--   default = true,
	--   link = "WarningMsg",
	-- },
	-- ["@text.emphasis"] = {
	--   default = true,
	--   italic = true,
	-- },
	-- ["@text.environment"] = {
	--   default = true,
	--   link = "Macro",
	-- },
	-- ["@text.environment.name"] = {
	--   default = true,
	--   link = "Type",
	-- },
	-- ["@text.literal"] = {
	--   default = true,
	--   link = "String",
	-- },
	-- ["@text.math"] = {
	--   default = true,
	--   link = "Special",
	-- },
	-- ["@text.note"] = {
	--   default = true,
	--   link = "SpecialComment",
	-- },
	-- ["@text.reference"] = {
	--   default = true,
	--   link = "Constant",
	-- },
	-- ["@text.strike"] = {
	--   strikethrough = true,
	-- },
	-- ["@text.strong"] = {
	--   bold = true,
	--   default = true,
	-- },
	-- ["@text.title"] = {
	--   default = true,
	--   link = "Title",
	-- },
	-- ["@text.underline"] = {
	--   underline = true,
	-- },
	-- ["@text.uri"] = {
	--   default = true,
	--   link = "Underlined",
	-- },
	-- ["@text.warning"] = {
	--   default = true,
	--   link = "Todo",
	-- },
	-- ["@text.todo"] = {
	--   default = true,
	--   link = "Todo",
	-- },
	-- ["@type"] = {
	--   default = true,
	--   link = "Type",
	-- },
	-- ["@type.builtin"] = {
	--   default = true,
	--   link = "Type",
	-- },
	-- ["@type.definition"] = {
	--   default = true,
	--   link = "Typedef",
	-- },
	-- ["@type.qualifier"] = {
	--   default = true,
	--   link = "Type",
	-- },
	-- ["@variable.builtin"] = {
	--   default = true,
	--   link = "Special",
	-- },

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
	hi("rainbowcol1", { fg = colors.type })
	hi("rainbowcol2", { fg = colors.type2 })
	hi("rainbowcol3", { fg = colors.builtin })
	hi("rainbowcol4", { fg = colors.func })
	hi("rainbowcol5", { fg = colors.warning })
	hi("rainbowcol6", { fg = colors.keyword })
	hi("rainbowcol7", { fg = colors.error })

	-- noice
	-- https://github.com/folke/noice.nvim#-highlight-groups
	hi("NoiceVirtualText", { fg = colors.bg, bg = colors.keyword2, bold = true })
	hi("NoiceCmdlineIconSearch", { fg = colors.keyword2, bold = true })
	hi("NoiceCmdlinePopupBorderSearch", { fg = colors.keyword2, bold = true })
	hi("NoiceConfirmBorder", { fg = colors.keyword2, bold = true })

	-- Todo
	hi("TodoBgTODO", { fg = is_dark and colors.fg or colors.bg, bg = colors.str, bold = true })
	hi("TodoFgTODO", { fg = colors.str })
	hi("TodoSignTODO", { fg = colors.str })
	hi("TodoBgFIX", { fg = is_dark and colors.fg or colors.bg, bg = colors.error, bold = true })
	hi("TodoFgFIX", { fg = colors.error })
	hi("TodoSignFIX", { fg = colors.error })
	hi("TodoBgPERF", { fg = is_dark and colors.fg or colors.bg, bg = colors.success, bold = true })
	hi("TodoFgPERF", { fg = colors.success })
	hi("TodoSignPERF", { fg = colors.success })
	hi("TodoBgWARN", { fg = is_dark and colors.fg or colors.bg, bg = colors.warning, bold = true })
	hi("TodoFgWARN", { fg = colors.warning })
	hi("TodoSignWARN", { fg = colors.warning })
	hi("TodoBgTEST", { fg = is_dark and colors.fg or colors.bg, bg = colors.builtin, bold = true })
	hi("TodoFgTEST", { fg = colors.builtin })
	hi("TodoSignTEST", { fg = colors.builtin })
	hi("TodoBgNOTE", { fg = is_dark and colors.fg or colors.bg, bg = colors.comment, bold = true })
	hi("TodoFgNOTE", { fg = colors.comment })
	hi("TodoSignNOTE", { fg = colors.comment })
	hi("TodoBgHACK", { fg = is_dark and colors.fg or colors.bg, bg = colors.warning2, bold = true })
	hi("TodoFgHACK", { fg = colors.warning2 })
	hi("TodoSignHACK", { fg = colors.warning2 })

	hi("NvimInternalError", { fg = colors.bg, bg = colors.error, bold = true })
end

return M
