local M = {}

function M.load(colors, opts)
  local hi = require("danger.utils").set_highlight
  local colorsheme_name = "danger_" .. opts.style
  local is_dark = opts.style == "dark" or opts.style == "red_and_black" or opts.style == "mnml" or opts.style == "black"
  local bold = opts.bold
  local italic = opts.italic

  if is_dark then
    vim.opt.background = "dark"
  else
    vim.opt.background = "light"
  end

  if vim.g.colors_name then
    vim.cmd("hi clear")
  end

  vim.o.termguicolors = true
  vim.g.colors_name = colorsheme_name

  -- neovim terminal colors
  vim.g.terminal_color_0 = colors.comment
  vim.g.terminal_color_1 = colors.warning
  vim.g.terminal_color_2 = colors.builtin
  vim.g.terminal_color_3 = colors.func
  vim.g.terminal_color_4 = colors.keyword
  vim.g.terminal_color_5 = colors.keyword2
  vim.g.terminal_color_6 = colors.fg4
  vim.g.terminal_color_7 = colors.fg
  vim.g.terminal_color_8 = colors.hint
  vim.g.terminal_color_9 = colors.error
  vim.g.terminal_color_10 = colors.success
  vim.g.terminal_color_11 = colors.const
  vim.g.terminal_color_12 = colors.str
  vim.g.terminal_color_13 = colors.type
  vim.g.terminal_color_14 = colors.extra1
  vim.g.terminal_color_15 = colors.fg2

  local highlights = {
    -- Spec format:
    -- { "HighlightGroup", { fg = colors.fg, bg = colors.bg, underline = false, bold = false, italic = false, reverse = false, special = false, blend = 0 } },
    -- Utils
    { "Transparent", { bg = colors.none, fg = colors.none } },

    -- Core highlight groups
    { "Normal", { fg = colors.fg, bg = colors.bg } },
    { "Visual", { fg = colors.none, bg = colors.bg4 } },
    { "Cursor", { fg = colors.keyword2, bg = colors.type } },
    { "Conceal", { fg = colors.fg, bg = colors.bg2 } },
    { "CursorLine", { fg = colors.none, bg = colors.bg2 } },
    { "CursorLineSign", { bg = colors.bg2 } },
    { "CursorLineNr", { fg = colors.keyword2, bg = colors.bg2 } },
    { "CursorColumn", { fg = colors.type, bg = colors.bg2 } },
    { "ColorColumn", { bg = colors.bg2 } },
    { "LineNr", { fg = colors.fg5, bg = colors.none } },
    { "VertSplit", { fg = colors.keyword2, bg = colors.bg } },
    { "WinSeparator", { fg = colors.keyword2, bg = colors.bg } },
    { "WinBar", { bg = colors.bg } },
    { "WinBarNC", { bg = colors.bg } },
    { "StatusLine", { fg = colors.fg2, bg = colors.bg2, bold = bold } },
    { "StatusLineNC", { fg = colors.comment, bg = colors.bg } },
    { "Pmenu", { fg = colors.fg2, bg = colors.bg2, blend = 5 } },
    { "PmenuSel", { fg = colors.type, bg = colors.bg4, bold = bold, blend = 0 } },
    { "Directory", { fg = colors.const } },
    { "WildMenu", { fg = colors.str, bg = colors.bg } },
    { "TabLine", { fg = colors.bg4, bg = colors.none } },
    { "TabLineSel", { fg = colors.keyword2, bold = bold } },
    { "TabLineFill", { fg = colors.bg, bg = colors.none } },
    { "Quote", { fg = colors.fg, bg = colors.bg } },
    { "Folded", { fg = colors.info, bg = colors.info_bg, bold = bold } },
    { "FoldColumn", { fg = colors.info, bg = colors.bg } },
    { "SignColumn", { fg = colors.info, bg = colors.none } },
    { "MatchParen", { fg = colors.none, bg = colors.bg5 } },
    { "Search", { fg = colors.none, bg = colors.none, bold = bold, reverse = true } },
    { "CurSearch", { fg = colors.bg, bg = colors.keyword2, bold = bold } },
    { "IncSearch", { fg = colors.none, bg = colors.none, bold = bold, reverse = true } },
    { "Boolean", { fg = colors.const } },
    { "Character", { fg = colors.const } },
    { "Comment", { fg = colors.comment } },
    { "Conditional", { fg = colors.keyword, bold = bold } },
    { "Constant", { fg = colors.const } },
    { "Define", { fg = colors.keyword, italic = italic } },
    { "Error", { fg = colors.error, special = colors.error, undercurl = true } },
    { "DiffAdd", { fg = colors.bg, bg = colors.success } },
    { "DiffDelete", { fg = colors.bg, bg = colors.error } },
    { "DiffChange", { fg = colors.bg, bg = colors.const } },
    { "DiffText", { fg = colors.fg } },
    { "ErrorMsg", { fg = colors.warning, bg = colors.bg2, bold = bold } },
    { "WarningMsg", { fg = is_dark and colors.fg or colors.bg, bg = colors.warning_bg } },
    { "Float", { fg = colors.const } },
    { "NormalFloat", { bg = colors.bg7 } },
    { "FloatBorder", { fg = colors.keyword2 } },
    { "Function", { fg = colors.func } },
    { "Identifier", { fg = colors.fg2 } },
    { "Include", { fg = colors.keyword, italic = italic } },
    { "Keyword", { fg = colors.keyword, bold = bold } },
    { "Label", { fg = colors.fg3 } },
    { "NonText", { fg = colors.bg4, bg = colors.none } },
    { "Number", { fg = colors.const } },
    { "Operator", { fg = colors.keyword } },
    { "PreProc", { fg = colors.keyword, italic = italic } },
    { "Special", { fg = colors.fg4 } },
    { "SpecialKey", { fg = colors.fg3 } },
    { "Statement", { fg = colors.keyword, bold = bold } },
    { "StorageClass", { fg = colors.type } },
    { "String", { fg = colors.str } },
    { "Tag", { fg = colors.keyword } },
    { "Title", { fg = colors.keyword, bold = bold } },
    { "Type", { fg = colors.type } },
    { "Underlined", { underline = true } },
    { "SpellBad", { undercurl = true, special = colors.error } },
    { "SpellLocal", { undercurl = true, special = colors.warning } },
    { "SpellCap", { undercurl = true, special = colors.info } },
    { "SpellRare", { undercurl = true, special = colors.hint } },
    { "cParen", { fg = colors.paren } },
    { "cCustomParen", { fg = colors.fg4 } },
    { "Delimiter", { fg = colors.fg3 } },
    { "Todo", { fg = colors.bg, bg = colors.str, bold = bold } },

    { "shNumber", { fg = colors.func } },
    { "shVariable", { link = "Constant" } },
    { "shVar", { fg = colors.fg } },
    { "shVarAssign", { fg = colors.success } },
    { "zshVariableDef", { link = "Constant" } },

    { "pythonAttribute", { fg = colors.fg4 } },
    { "pythonBrackets", { link = "cParen" } },
    { "pythonBuiltinFunc", { fg = colors.builtin } },
    { "pythonBuiltinObj", { fg = colors.builtin } },
    { "pythonCall", { link = "Function" } },
    { "pythonClassVar", { fg = colors.type2, italic = italic } },
    { "pythonDecorator", { fg = colors.builtin, italic = italic } },
    { "pythonDecoratorName", { fg = colors.func, italic = italic } },
    { "pythonDocstring", { link = "SpecialComment" } },
    { "pythonDoctestValue", { fg = colors.const } },
    { "pythonDottedName", { fg = colors.builtin, italic = italic } },
    { "pythonException", { fg = colors.keyword } },
    { "pythonExClass", { fg = colors.keyword, bold = bold } },
    { "pythonFString", { fg = colors.str } },
    { "pythonFunction", { link = "Function" } },
    { "pythonImport", { fg = colors.keyword2 } },
    { "pythonInclude", { fg = colors.keyword, italic = italic } },
    { "pythonOperator", { fg = colors.keyword } },
    { "pythonParameters", { fg = colors.fg4 } },
    { "pythonParam", { fg = colors.extra3 } },
    { "pythonParen", { link = "cParen" } },
    { "pythonRepeat", { fg = colors.keyword2 } },
    { "pythonRun", { fg = colors.comment, italic = italic } },
    { "pythonSquareBrackets", { link = "cParen" } },
    { "pythonStatement", { fg = colors.keyword2, bold = bold } },
    { "pythonStrFormat", { fg = colors.var } },
    { "pythonStrInterpRegion", { fg = colors.fg } },
    { "pythonVars", { fg = colors.var } },

    { "mojoStatement", { bold = bold, fg = colors.keyword2 } },
    { "mojoConditional", { bold = bold, fg = colors.keyword } },
    { "mojoRepeat", { bold = bold, fg = colors.keyword } },
    { "mojoOperator", { bold = bold, fg = colors.keyword } },
    { "mojoException", { bold = bold, fg = colors.func } },
    { "mojoInclude", { bold = bold, fg = colors.keyword } },
    { "mojoAsync", { bold = bold, fg = colors.keyword2 } },

    { "djangoFilter", { fg = colors.func } },
    { "djangoStatement", { fg = colors.type } },
    { "djangoVarBlock", { fg = colors.var } },

    { "semshiAttribute", { link = "PreProc" } },
    { "semshiBuiltin", { fg = colors.builtin } },
    { "semshiErrorChar", { fg = colors.error, bg = colors.error_bg } },
    { "semshiErrorSign", { fg = colors.error, bg = colors.error_bg } },
    { "semshiFree", { fg = colors.type2 } },
    { "semshiGlobal", { fg = colors.const } },
    { "semshiImported", { fg = colors.const } },
    { "semshiLocal", { fg = colors.var } },
    { "semshiParameter", { fg = colors.extra2 } },
    { "semshiParameterUnused", { fg = colors.hint } },
    { "semshiSelected", { fg = colors.info, bg = colors.info_bg } },
    { "semshiSelf", { fg = colors.builtin } },
    { "semshiUnresolved", { fg = colors.fg2 } },

    { "dartConstant", { fg = colors.const } },

    { "nimBuiltin", { fg = colors.builtin } },

    { "DiagnosticError", { fg = colors.error, bg = colors.none } },
    { "DiagnosticWarning", { fg = colors.warning, bg = colors.none } },
    { "DiagnosticWarn", { fg = colors.warning, bg = colors.none } },
    { "DiagnosticInformation", { fg = colors.comment, bg = colors.none } },
    { "DiagnosticInfo", { fg = colors.comment, bg = colors.none } },
    { "DiagnosticHint", { fg = colors.hint, bg = colors.none } },
    { "DiagnosticUnderlineError", { sp = colors.error, bg = colors.none, undercurl = true } },
    { "DiagnosticUnderlineWarning", { sp = colors.warning, bg = colors.none, undercurl = true } },
    { "DiagnosticUnderlineWarn", { sp = colors.warning, bg = colors.none, undercurl = true } },
    { "DiagnosticUnderlineInformation", { sp = colors.comment, bg = colors.none, undercurl = true } },
    { "DiagnosticUnderlineInfo", { sp = colors.comment, bg = colors.none, undercurl = true } },
    { "DiagnosticUnderlineHint", { sp = colors.hint, bg = colors.none, undercurl = true } },
    { "DiagnosticUnderlineOk", { sp = colors.success, bg = colors.none, undercurl = true } },
    { "DiagnosticFloatingError", { fg = colors.error, bg = colors.none } },
    { "DiagnosticFloatingWarning", { fg = colors.warning, bg = colors.none } },
    { "DiagnosticFloatingWarn", { fg = colors.warning, bg = colors.none } },
    { "DiagnosticFloatingInformation", { fg = colors.comment, bg = colors.none } },
    { "DiagnosticFloatingInfo", { fg = colors.comment, bg = colors.none } },
    { "DiagnosticFloatingHint", { fg = colors.hint, bg = colors.none } },

    { "DiagnosticVirtualTextSuccess", { fg = colors.success, bg = colors.success_bg } },
    { "DiagnosticVirtualTextHint", { fg = colors.hint, bg = colors.hint_bg } },
    { "DiagnosticVirtualTextInfo", { fg = colors.info, bg = colors.info_bg } },
    { "DiagnosticVirtualTextWarn", { fg = colors.warning, bg = colors.warning_bg } },
    { "DiagnosticVirtualTextError", { fg = colors.error, bg = colors.error_bg } },

    { "DiagnosticSignInfo", { fg = colors.keyword2, bg = colors.none } },

    { "LspCodeLens", { fg = colors.bg3, bg = colors.none, italic = italic } },
    { "LspCodeLensSeparator", { fg = colors.bg3, bg = colors.none, italic = italic } },
    { "LspInfoBorder", { fg = colors.keyword2, bg = colors.bg } },
    { "LspReferenceText", { bg = colors.bg2 } },
    {
      "LspInlayHint",
      { fg = is_dark and colors.keyword2 or colors.bg, bg = is_dark and colors.info_bg or colors.keyword2 },
    },

    { "TelescopeBorder", { fg = colors.keyword2 } },
    { "TelescopePromptBorder", { fg = colors.keyword2 } },
    { "TelescopeResultsBorder", { fg = colors.keyword } },
    { "TelescopePreviewBorder", { fg = colors.info } },

    { "TelescopeSelection", { bg = colors.bg2, bold = bold } },

    { "GitSignsAdd", { fg = colors.success, bg = colors.none } },
    { "GitSignsChange", { fg = colors.warning, bg = colors.none } },
    { "GitSignsDelete", { fg = colors.error, bg = colors.none } },
    { "GitSignsAddNr", { fg = colors.success, bg = colors.none } },
    { "GitSignsChangeNr", { fg = colors.warning, bg = colors.none } },
    { "GitSignsDeleteNr", { fg = colors.error, bg = colors.none } },
    { "GitSignsAddLn", { fg = colors.success, bg = colors.none } },
    { "GitSignsChangeLn", { fg = colors.warning, bg = colors.none } },
    { "GitSignsDeleteLn", { fg = colors.error, bg = colors.none } },
    { "GitSignsCurrentLineBlame", { fg = colors.fg2, bg = colors.none } },

    { "CopilotSuggestion", { link = "LspInlayHint" } },
    { "CopilotAnnotation", { fg = colors.keyword, italic = italic } },

    { "TabbyCompletion", { link = "CopilotSuggestion" } },
    { "TabbyCompletionReplaceRange", { fg = colors.keyword, italic = italic } },

    { "SupermavenSuggestion", { link = "CopilotSuggestion" } },

    { "NotifyERRORBorder", { fg = colors.error } },
    { "NotifyWARNBorder", { fg = colors.warning } },
    { "NotifyINFOBorder", { fg = colors.keyword } },
    { "NotifyDEBUGBorder", { fg = colors.comment } },
    { "NotifyTRACEBorder", { fg = colors.comment } },
    { "NotifyERRORIcon", { fg = colors.error } },
    { "NotifyWARNIcon", { fg = colors.warning } },
    { "NotifyINFOIcon", { fg = colors.keyword } },
    { "NotifyDEBUGIcon", { fg = colors.comment } },
    { "NotifyTRACEIcon", { fg = colors.comment } },
    { "NotifyERRORTitle", { fg = colors.error } },
    { "NotifyWARNTitle", { fg = colors.warning } },
    { "NotifyINFOTitle", { fg = colors.keyword } },
    { "NotifyDEBUGTitle", { fg = colors.comment } },
    { "NotifyTRACETitle", { fg = colors.comment } },

    -- LspSaga
    -- https://github.com/glepnir/lspsaga.nvim/blob/main/lua/lspsaga/highlight.lua
    -- basic
    { "TitleString", { fg = colors.fg } },
    { "TitleIcon", { fg = colors.keyword } },
    { "SagaBorder", { fg = colors.keyword2, bg = colors.none } },
    { "SagaNormal", { bg = colors.none, blend = 50 } },
    { "SagaExpand", { fg = colors.success } },
    { "SagaCollapse", { fg = colors.success } },
    { "SagaBeacon", { bg = colors.func } },

    -- finder
    { "ActionPreviewTitle", { fg = colors.keyword2, bg = colors.none } },
    { "CodeActionText", { fg = colors.success } },
    { "CodeActionNumber", { fg = colors.keyword2 } },

    { "FinderSelection", { fg = colors.keyword, bold = bold } },
    { "FinderFileName", { fg = colors.fg } },
    { "FinderIcon", { fg = colors.fg } },
    { "FinderCount", { fg = colors.fg } },
    { "FinderType", { fg = colors.fg } },
    { "FinderSpinnerTitle", { fg = colors.fg, bold = bold } },
    { "FinderSpinner", { fg = colors.fg, bold = bold } },
    { "FinderVirtText", { fg = colors.bg } },
    { "RenameNormal", { fg = colors.fg } },
    { "DiagnosticOk", { fg = colors.success } },
    { "DiagnosticSource", { fg = colors.bg } },
    { "DiagnosticPos", { fg = colors.fg } },
    { "DiagnosticWord", { fg = colors.fg } },
    { "CallHierarchyIcon", { fg = colors.keyword2 } },
    { "CallHierarchyTitle", { fg = colors.keyword2 } },
    { "SagaShadow", { bg = colors.bg } },
    { "OutlineIndent", { fg = colors.bg5 } },

    -- Because kind never worked after changing colorscheme
    { "LspSagaWinbarFile", { fg = colors.fg } },
    { "LspSagaWinbarModule", { fg = colors.keyword } },
    { "LspSagaWinbarNamespace", { fg = colors.warning } },
    { "LspSagaWinbarPackage", { fg = colors.type } },
    { "LspSagaWinbarClass", { fg = colors.type } },
    { "LspSagaWinbarMethod", { fg = colors.type } },
    { "LspSagaWinbarProperty", { fg = colors.str } },
    { "LspSagaWinbarField", { fg = colors.builtin } },
    { "LspSagaWinbarConstructor", { fg = colors.keyword } },
    { "LspSagaWinbarEnum", { fg = colors.success } },
    { "LspSagaWinbarInterface", { fg = colors.warning } },
    { "LspSagaWinbarFunction", { fg = colors.func } },
    { "LspSagaWinbarVariable", { fg = colors.keyword } },
    { "LspSagaWinbarConstant", { fg = colors.str } },
    { "LspSagaWinbarString", { fg = colors.success } },
    { "LspSagaWinbarNumber", { fg = colors.success } },
    { "LspSagaWinbarBoolean", { fg = colors.warning } },
    { "LspSagaWinbarArray", { fg = colors.keyword } },
    { "LspSagaWinbarObject", { fg = colors.warning } },
    { "LspSagaWinbarKey", { fg = colors.keyword } },
    { "LspSagaWinbarNull", { fg = colors.warning_bg } },
    { "LspSagaWinbarEnumMember", { fg = colors.success } },
    { "LspSagaWinbarStruct", { fg = colors.type2 } },
    { "LspSagaWinbarEvent", { fg = colors.type2 } },
    { "LspSagaWinbarOperator", { fg = colors.success } },
    { "LspSagaWinbarTypeParameter", { fg = colors.success } },
    { "LspSagaWinbarTypeAlias", { fg = colors.success } },
    { "LspSagaWinbarParameter", { fg = colors.keyword } },
    { "LspSagaWinbarStaticMethod", { fg = colors.warning } },
    { "LspSagaWinbarMacro", { fg = colors.error } },

    { "redisStringCommand", { fg = colors.keyword2 } },
    { "redisHashCommand", { fg = colors.keyword2 } },

    { "DapBreakpoint", { fg = colors.error } },
    { "DapStopped", { fg = colors.success } },
    { "DapLogPoint", { fg = colors.warning } },

    { "WhichKeyNormal", { bg = colors.bg } },

    { "AlphaHeader", { fg = colors.type, bold = bold } },
    { "AlphaButtons", { fg = colors.keyword2 } },
    { "AlphaShortcut", { fg = colors.type2, italic = italic } },
    { "AlphaFooter", { fg = colors.comment, italic = italic } },

    { "DashboardFooter", { fg = colors.comment, italic = italic } },
    { "DashboardShortCut", { fg = colors.type2 } },
    { "DashboardHeader", { fg = colors.type, bold = bold } },
    { "DashboardCenter", { fg = colors.keyword2 } },
    { "DashboardFooter", { fg = colors.comment, italic = italic } },
    { "DashboardKey", { fg = colors.keyword } },
    { "DashboardDesc", { fg = colors.fg } },
    { "DashboardIcon", { fg = colors.const, italic = italic } },

    -- snacks dashboard
    { "SnacksDashboardIcon", { link = "Type" } },
    { "SnacksDashboardHeader", { fg = colors.keyword2, bold = bold } },
    { "SnacksDashboardTerminal", { fg = colors.keyword2 } },
    { "SnacksDashboardSpecial", { fg = colors.keyword2 } },
    { "SnacksDashboardDir", { fg = colors.keyword2 } },
    { "SnacksDashboardTitle", { fg = colors.keyword2 } },
    { "SnacksDashboardFile", { fg = colors.keyword2 } },

    -- snacks notifier
    { "SnacksNotifierMinimal", { bg = colors.info_bg } },

    { "MiniIndentscopeSymbol", { fg = colors.type, bold = bold } },

    -- treesitter
    { "@none", { fg = colors.none } },
    { "@annotation", { link = "PreProc" } },
    { "@attribute", { link = "PreProc" } },
    { "@boolean", { link = "Boolean" } },
    { "@character", { link = "Character" } },
    { "@character.special", { link = "SpecialChar" } },
    { "@comment", { link = "Comment" } },
    { "@conditional", { link = "Conditional" } },
    { "@constant.builtin", { link = "Constant" } },
    { "@constant", { link = "Constant" } },
    { "@constant.macro", { link = "Define" } },
    { "@constructor", { link = "Type" } },
    { "@debug", { link = "Debug" } },
    { "@define", { link = "Define" } },
    { "@delimiter", { link = "Delimiter" } },
    { "@exception", { fg = colors.keyword2, bold = bold } },
    { "@exception", { link = "Exception" } },
    { "@field", { fg = colors.extra8 } },
    { "@float", { link = "Float" } },
    { "@function.builtin", { fg = colors.keyword2 } },
    { "@function.call", { fg = colors.extra3 } },
    { "@function", { fg = colors.func } },
    { "@function.macro", { link = "Macro" } },
    { "@include", { link = "Include" } },
    { "@keyword", { fg = colors.keyword2, italic = italic } },
    { "@keyword.function", { fg = colors.keyword, italic = italic } },
    { "@keyword.operator", { link = "Operator" } },
    { "@keyword.return", { link = "Keyword" } },
    { "@label", { link = "Label" } },
    { "@method.call", { link = "@method" } },
    { "@method", { link = "Function" } },
    { "@namespace", { fg = colors.extra8 } },
    { "@number", { link = "Number" } },
    { "@operator", { link = "Operator" } },
    { "@parameter", { fg = colors.extra3 } },
    { "@parameter.reference", { fg = colors.extra5 } },
    { "@preproc", { link = "PreProc" } },
    { "@property", { link = "Label" } },
    { "@punctuation.bracket", { link = "cParen" } },
    { "@punctuation.delimiter", { link = "Delimiter" } },
    { "@punctuation.special", { link = "cCustomParen" } },
    { "@repeat", { fg = colors.keyword2, bold = bold } },
    { "@repeat", { link = "Repeat" } },
    { "@storageclass", { link = "StorageClass" } },
    { "@string.escape", { link = "SpecialChar" } },
    { "@string", { link = "String" } },
    { "@string.regex", { link = "String" } },
    { "@string.special", { link = "SpecialChar" } },
    { "@symbol", { link = "Identifier" } },
    { "@tag.attribute", { link = "@property" } },
    { "@tag.delimiter", { link = "Delimiter" } },
    { "@tag", { link = "Type" } },
    { "@text.danger", { link = "WarningMsg" } },
    { "@text.emphasis", { italic = italic } },
    { "@text.environment", { link = "Macro" } },
    { "@text.environment.name", { link = "Macro" } },
    { "@text", { link = "@none" } },
    { "@text.literal", { link = "String" } },
    { "@text.math", { link = "Special" } },
    { "@text.note", { link = "SpecialComment" } },
    { "@text.reference", { link = "Constant" } },
    { "@text.strike", { strikethrough = true } },
    { "@text.strong", { bold = bold } },
    { "@text.title", { link = "Title" } },
    { "@text.todo", { link = "Todo" } },
    { "@text.underline", { underline = true } },
    { "@text.uri", { link = "Underlined" } },
    { "@text.warning", { link = "Todo" } },
    { "@type.builtin", { link = "Type" } },
    { "@type.definition", { link = "Typedef" } },
    { "@type", { link = "Type", italic = true } },
    { "@type.qualifier", { link = "Type" } },
    { "@variable.builtin", { link = "Special" } },
    { "@variable", { fg = colors.var } },

    -- ts highlights for python
    { "@include.python", { link = "Include" } },
    { "@keyword.operator.python", { bold = bold } },
    { "@keyword.return.python", { fg = colors.keyword, italic = italic } },
    { "@none.python", { fg = colors.fg } },
    { "@variable.builtin.python", { fg = colors.builtin } },
    { "@variable.htmldjango", { fg = colors.var } },
    { "@variable.member.python", { link = "@property" } },
    { "@variable.parameter.python", { fg = colors.fg2 } },

    -- ts changes for swift
    { "@string.escape.swift", { link = "Constant" } },
    { "@attribute.swift", { link = "Type" } },
    { "@function.call.swift", { link = "Function" } },
    { "@variable.member.swift", { link = "Label" } },

    -- markid plugin
    { "markid1", { fg = colors.extra1 } },
    { "markid2", { fg = colors.extra2 } },
    { "markid3", { fg = colors.extra3 } },
    { "markid4", { fg = colors.extra4 } },
    { "markid5", { fg = colors.extra5 } },
    { "markid6", { fg = colors.extra6 } },
    { "markid7", { fg = colors.extra7 } },
    { "markid8", { fg = colors.extra8 } },
    { "markid9", { fg = colors.extra9 } },
    { "markid10", { fg = colors.extra10 } },

    -- rainbow parentheses
    { "TSRainbowRed", { fg = colors.warning } },
    { "TSRainbowYellow", { fg = colors.const } },
    { "TSRainbowBlue", { fg = colors.keyword } },
    { "TSRainbowOrange", { fg = colors.func } },
    { "TSRainbowGreen", { fg = colors.success } },
    { "TSRainbowViolet", { fg = colors.keyword2 } },
    { "TSRainbowCyan", { fg = colors.extra1 } },

    { "RainbowDelimiterRed", { fg = colors.warning } },
    { "RainbowDelimiterYellow", { fg = colors.const } },
    { "RainbowDelimiterBlue", { fg = colors.keyword } },
    { "RainbowDelimiterOrange", { fg = colors.func } },
    { "RainbowDelimiterGreen", { fg = colors.success } },
    { "RainbowDelimiterViolet", { fg = colors.keyword2 } },
    { "RainbowDelimiterCyan", { fg = colors.extra1 } },

    -- ts context
    { "TreesitterContext", { bg = colors.info_bg } },

    -- semantic highlight on lsp
    -- LSP Semantic Token Groups
    { "@lsp.type.class", { link = "@type" } },
    { "@lsp.type.decorator", { link = "@function" } },
    { "@lsp.type.enum", { link = "@type" } },
    { "@lsp.type.enumMember", { link = "@constant" } },
    { "@lsp.type.function", { link = "@function" } },
    { "@lsp.type.interface", { link = "@type" } },
    { "@lsp.type.keyword", { fg = colors.keyword2, italic = italic } },
    { "@lsp.type.macro", { link = "@macro" } },
    { "@lsp.type.method", { link = "@method" } },
    { "@lsp.typemod.variable.defaultLibrary", { fg = colors.builtin } },
    { "@lsp.typemod.variable.globalScope", { fg = colors.const } },
    { "@lsp.type.namespace", { link = "@namespace" } },
    { "@lsp.type.parameter", { link = "@parameter" } },
    { "@lsp.type.property", { link = "@property" } },
    { "@lsp.type.struct", { link = "@structure" } },
    { "@lsp.type.type", { link = "@type" } },
    { "@lsp.type.variable", { link = "@variable" } },
    { "@lsp.type.string.swift", {} },
    { "@lsp.type.keyword.swift", {} },
    { "@lsp.type.function.swift", { link = "Label" } },

    -- rust specific
    { "@lsp.type.variable.rust", { link = "@lsp.type.variable" } },
    { "@lsp.type.function.rust", { link = "@lsp.type.variable" } },
    { "@lsp.mod.declaration.rust", { link = "@lsp.type.variable" } },
    { "@lsp.typemod.function.declaration.rust", { link = "@lsp.type.variable" } },

    -- python specific
    { "@keyword.conditional.python", { fg = colors.keyword2, bold = bold } },
    { "@keyword.operator.python", { fg = colors.keyword2, bold = bold } },
    { "@keyword.repeat.python", { fg = colors.keyword2, bold = bold } },
    { "@lsp.type.class.python", { fg = colors.type, italic = italic } },
    { "@lsp.type.variable.python", {} },
    { "@lsp.type.parameter.python", {} },

    -- noice
    -- https://github.com/folke/noice.nvim#-highlight-groups
    { "NoiceVirtualText", { fg = colors.bg, bg = colors.keyword2, bold = bold } },
    { "NoiceCmdlineIconSearch", { fg = colors.keyword2, bold = bold } },
    { "NoiceCmdlinePopupBorderSearch", { fg = colors.keyword2, bold = bold } },
    { "NoiceConfirmBorder", { fg = colors.keyword2, bold = bold } },

    -- todo comments
    { "TodoBgTODO", { fg = colors.bg, bg = colors.str, bold = bold } },
    { "TodoFgTODO", { fg = colors.str } },
    { "TodoSignTODO", { fg = colors.str, bg = colors.none } },
    { "TodoBgFIX", { fg = colors.bg, bg = colors.error, bold = bold } },
    { "TodoFgFIX", { fg = colors.error } },
    { "TodoSignFIX", { fg = colors.error, bg = colors.none } },
    { "TodoBgPERF", { fg = colors.bg, bg = colors.success, bold = bold } },
    { "TodoFgPERF", { fg = colors.success } },
    { "TodoSignPERF", { fg = colors.success, bg = colors.none } },
    { "TodoBgWARN", { fg = colors.bg, bg = colors.warning, bold = bold } },
    { "TodoFgWARN", { fg = colors.warning } },
    { "TodoSignWARN", { fg = colors.warning, bg = colors.none } },
    { "TodoBgTEST", { fg = colors.bg, bg = colors.builtin, bold = bold } },
    { "TodoFgTEST", { fg = colors.builtin } },
    { "TodoSignTEST", { fg = colors.builtin, bg = colors.none } },
    { "TodoBgNOTE", { fg = colors.bg, bg = colors.comment, bold = bold } },
    { "TodoFgNOTE", { fg = colors.comment } },
    { "TodoSignNOTE", { fg = colors.comment, bg = colors.none } },
    { "TodoBgHACK", { fg = colors.bg, bg = colors.warning, bold = bold } },
    { "TodoFgHACK", { fg = colors.warning } },
    { "TodoSignHACK", { fg = colors.warning, bg = colors.none } },

    -- Html
    { "htmlTagN", { link = "HtmlTagName" } },

    -- Illumniate
    { "illuminatedWord", { fg = colors.extra1, bg = colors.bg4 } },
    { "illuminatedCurWord", { fg = colors.extra3, bg = colors.bg4 } },
    { "IlluminatedWordText", { fg = colors.extra2, bg = colors.bg4 } },
    { "IlluminatedWordRead", { fg = colors.extra3, bg = colors.bg5 } },
    { "IlluminatedWordWrite", { fg = colors.extra4, bg = colors.bg5 } },

    -- navic
    { "NavicIconsFile", { bg = colors.none, fg = colors.fg } },
    { "NavicIconsModule", { bg = colors.none, fg = colors.keyword } },
    { "NavicIconsNamespace", { bg = colors.none, fg = colors.const } },
    { "NavicIconsPackage", { bg = colors.none, fg = colors.func } },
    { "NavicIconsClass", { bg = colors.none, fg = colors.keyword2 } },
    { "NavicIconsMethod", { bg = colors.none, fg = colors.warning } },
    { "NavicIconsProperty", { bg = colors.none, fg = colors.type } },
    { "NavicIconsField", { bg = colors.none, fg = colors.warning_bg } },
    { "NavicIconsConstructor", { bg = colors.none, fg = colors.var } },
    { "NavicIconsEnum", { bg = colors.none, fg = colors.type3 } },
    { "NavicIconsInterface", { bg = colors.none, fg = colors.keyword2 } },
    { "NavicIconsFunction", { bg = colors.none, fg = colors.keyword2 } },
    { "NavicIconsVariable", { bg = colors.none, fg = colors.var } },
    { "NavicIconsConstant", { bg = colors.none, fg = colors.const } },
    { "NavicIconsString", { bg = colors.none, fg = colors.str } },
    { "NavicIconsNumber", { bg = colors.none, fg = colors.func } },
    { "NavicIconsBoolean", { bg = colors.none, fg = colors.type2 } },
    { "NavicIconsArray", { bg = colors.none, fg = colors.fg3 } },
    { "NavicIconsObject", { bg = colors.none, fg = colors.fg5 } },
    { "NavicIconsKey", { bg = colors.none, fg = colors.keyword } },
    { "NavicIconsNull", { bg = colors.none, fg = colors.const } },
    { "NavicIconsEnumMember", { bg = colors.none, fg = colors.const } },
    { "NavicIconsStruct", { bg = colors.none, fg = colors.keyword2 } },
    { "NavicIconsEvent", { bg = colors.none, fg = colors.str } },
    { "NavicIconsOperator", { bg = colors.none, fg = colors.keyword2 } },
    { "NavicIconsTypeParameter", { bg = colors.none, fg = colors.type } },
    { "NavicText", { bg = colors.none, fg = colors.fg5, italic = italic } },
    { "NavicSeparator", { bg = colors.none, fg = colors.fg4 } },

    -- cmp
    { "CmpItemAbbr", { fg = colors.fg } },
    { "CmpItemAbbrDeprecated", { fg = colors.fg5, strikethrough = true } },
    { "CmpItemAbbrMatch", { fg = colors.keyword2, bold = bold } },
    { "CmpItemAbbrMatchFuzzy", { fg = colors.keyword, bold = bold } },
    { "CmpItemKind", { fg = colors.type, italic = italic } },
    { "CmpItemMenu", { fg = colors.type2, italic = italic } },

    -- FzfLua
    { "FzfLuaBorder", { fg = colors.keyword2, bg = colors.bg } },
    { "FzfLuaNormal", { fg = colors.fg, bg = colors.bg } },
    { "FzfLuaFzfNormal", { fg = colors.fg } },
    { "FzfLuaTitle", { fg = colors.keyword2, bg = colors.bg } },
    { "FzfLuaPreviewTitle", { fg = colors.keyword2, bg = colors.bg } },
    { "FzfLuaFilePart", { link = "FzfLuaFzfNormal" } },
    { "FzfLuaDirPart", { fg = colors.comment } },
    { "FzfLuaCursor", { link = "IncSearch" } },
    { "FzfLuaHeaderBind", { link = "@punctuation.special" } },
    { "FzfLuaHeaderText", { link = "Title" } },
    { "FzfLuaPath", { link = "Directory" } },
    { "FzfLuaFzfPointer", { fg = colors.keyword2 } },
    { "FzfLuaFzfCursorLine", { link = "Visual" } },
    { "FzfLuaFzfSeparator", { fg = colors.warning2, bg = colors.bg } },

    -- null-ls
    { "NullLsInfoBorder", { link = "FloatBorder" } },

    { "ZenBg", { bg = colors.bg } },

    { "NvimInternalError", { fg = colors.bg, bg = colors.error, bold = bold } },

    -- markdown
    { "CodeBlock", { bg = colors.bg } },

    { "RenderMarkdownCode", { bg = colors.bg } },
    { "RenderMarkdownCodeInline", { bg = colors.bg2, fg = colors.fg2 } },
    { "RenderMarkdownInlineHighlight", { bg = colors.none, fg = colors.bg } },

    { "RenderMarkdownH1Bg", { bg = colors.success_bg, fg = colors.success } },
    { "RenderMarkdownH2Bg", { bg = colors.info_bg, fg = colors.info } },
    { "RenderMarkdownH3Bg", { bg = colors.bg, fg = colors.success } },
    { "RenderMarkdownH4Bg", { bg = colors.bg, fg = colors.info } },
    { "RenderMarkdownH5Bg", { bg = colors.bg, fg = colors.fg5 } },
    { "RenderMarkdownH6Bg", { bg = colors.bg, fg = colors.fg6 } },

    -- snacks
    { "SnacksPicker", { bg = colors.bg } },
    { "SnacksBackdrop", { bg = colors.bg } },
    { "SnacksBackdrop", { bg = colors.bg } },
    { "SnacksIndent", { link = "Transparent" } },
    { "SnacksPickerDimmed", { link = "Transparent" } },
    { "SnacksPickerDimmed", { fg = colors.fg4 } },
    { "SnacksPickerDir", { link = "Transparent" } },
    { "SnacksPickerCol", { link = "Transparent" } },
    { "SnacksPickerCol", { fg = colors.fg4 } },
    { "SnacksPickerIndent", { link = "Transparent" } },
    { "SnacksPickerIndent", { fg = colors.fg5 } },
    { "SnacksPickerBufFlags", { link = "Transparent" } },
    { "SnacksPickerBufFlags", { fg = colors.fg4 } },
    { "SnacksPickerGitStatusUntracked", { link = "Transparent" } },
    { "SnacksPickerGitStatusUntracked", { fg = colors.fg4 } },
    { "SnacksPickerGitStatusIgnored", { link = "Transparent" } },
    { "SnacksPickerGitStatusIgnored", { fg = colors.info } },
    { "SnacksPickerPathHidden", { fg = colors.fg4 } },

    -- blink.cmp
    -- { "BlinkCmpMenu", { bg = colors.bg } },
    { "PmenuKind", { bg = colors.none } },
    -- { "BlinkCmpSource", { link = "Transparent" } },
    { "BlinkCmpSource", { fg = colors.fg5 } },
    { "BlinkCmpDoc", { bg = colors.bg2 } },
    { "BlinkCmpKind", { fg = colors.keyword, bg = colors.none } },
    { "BlinkCmpMenuBorder", { link = "FloatBorder" } },
    { "BlinkCmpDocBorder", { link = "FloatBorder" } },
    { "BlinkCmpSignatureHelpBorder", { link = "FloatBorder" } },
    { "BlinkCmpDocSeparator", { fg = colors.keyword } },


    { "BlinkCmpMenuSelection", { fg = colors.none, bg = colors.bg5 } },
    { "BlinkCmpLabelDeprecated", { fg = colors.none, bg = colors.none, strikethrough = true } },
    { "BlinkCmpLabelMatch", { fg = colors.type, bold = bold } },
    { "BlinkCmpSignatureHelpActiveParameter", { fg = colors.type, bold = bold } },
    { "BlinkCmpGhostText", { link = "CopilotSuggestion" } },

    -- git conflight highlights
    { "GitConflictCurrent", { bg = colors.info_bg } },
    { "GitConflictCurrentLabel", { bg = colors.info, fg = colors.info_bg, bold = bold } },
    { "GitConflictIncoming", { bg = colors.success_bg } },
    { "GitConflictIncomingLabel", { bg = colors.success, fg = colors.success_bg, bold = bold } },
    { "GitConflictAncestor", { bg = colors.warning_bg } },
    { "GitConflictAncestorLabel", { bg = colors.warning_bg, fg = colors.warning, bold = bold } },

    -- trouble
    { "TroubleNormal", { bg = colors.bg } },
    { "TroubleIndent", { link = "Transparent" } },
    { "TroubleIndentFoldOpen", { link = "Transparent" } },
    { "TroubleIndentLast", { link = "Transparent" } },
    { "TroubleIndentMiddle", { link = "Transparent" } },
    { "TroubleIndentWs", { link = "Transparent" } },

    -- avante
    { "AvanteSidebarWinSeparator", { fg = colors.keyword } },

    -- Lazy
    { "Lazy", { bg = colors.bg } },
    { "LazyNormal", { bg = colors.bg } },

    -- Mason
    { "Mason", { bg = colors.bg } },
    { "MasonNormal", { bg = colors.bg } },
  }

  for _, highlight in ipairs(highlights) do
    hi(unpack(highlight))
  end
end

return M
