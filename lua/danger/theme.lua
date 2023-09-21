local M = {}

function M.load(colors, opts)
  local hi = require("danger.utils").set_highlight
  local colorsheme_name = "danger_" .. opts.style
  local is_dark = opts.style == "dark" or opts.style == "red_and_black" or opts.style == "mnml"
  local bold = opts.bold
  local italic = opts.italic

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
  vim.g.terminal_color_5 = colors.var
  vim.g.terminal_color_6 = colors.fg3
  vim.g.terminal_color_7 = colors.builtin
  vim.g.terminal_color_8 = colors.keyword
  vim.g.terminal_color_9 = colors.error
  vim.g.terminal_color_10 = colors.fg2
  vim.g.terminal_color_11 = colors.var
  vim.g.terminal_color_12 = colors.const
  vim.g.terminal_color_13 = colors.type
  vim.g.terminal_color_14 = colors.fg4
  vim.g.terminal_color_15 = colors.success

  local highlights = {
    -- Spec format:
    -- { "HighlightGroup", { fg = colors.fg, bg = colors.bg, underline = false, bold = false, italic = false, reverse = false, special = false, blend = 0 } },

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
    { "LineNr", { fg = colors.fg5, bg = colors.bg } },
    { "VertSplit", { fg = colors.keyword2, bg = colors.bg } },
    { "StatusLine", { fg = colors.fg4, bg = colors.bg } },
    { "StatusLineNC", { fg = colors.bg, bg = colors.fg2, bold = bold } },
    { "Pmenu", { fg = colors.fg2, bg = colors.bg2, blend = 5 } },
    { "PmenuSel", { fg = colors.type, bg = colors.bg4, bold = bold, blend = 0 } },
    { "Directory", { fg = colors.const } },
    { "WildMenu", { fg = colors.str, bg = colors.bg } },
    { "TabLine", { fg = colors.bg4, bg = colors.none } },
    { "TabLineSel", { fg = colors.bg, bg = colors.keyword2 } },
    { "TabLineFill", { fg = colors.bg, bg = colors.none } },
    { "Quote", { fg = colors.fg, bg = colors.bg } },
    { "Folded", { fg = colors.info, bg = colors.info_bg, bold = bold } },
    { "FoldColumn", { fg = colors.info, bg = colors.bg } },
    { "SignColumn", { fg = colors.info, bg = colors.none } },
    { "MatchParen", { fg = colors.type3, bg = colors.bg5, bold = bold } },
    { "Search", { fg = colors.none, bg = colors.none, bold = bold, reverse = true } },
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
    { "NormalFloat", { bg = colors.bg } },
    { "FloatBorder", { fg = colors.keyword2 } },
    { "Function", { fg = colors.func } },
    { "Identifier", { fg = colors.fg2 } },
    { "Include", { fg = colors.keyword, italic = italic } },
    { "Keyword", { fg = colors.keyword, bold = bold } },
    { "Label", { fg = colors.fg3 } },
    { "NonText", { fg = colors.bg4, bg = colors.bg } },
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
    { "SpellBad", { fg = colors.fg, bg = colors.error, undercurl = true, special = colors.error } },
    { "SpellCap", { fg = colors.fg, bg = colors.keyword, undercurl = true, special = colors.warning } },
    { "SpellLocal", { fg = colors.fg, bg = colors.keyword, undercurl = true, special = colors.warning } },
    { "SpellRare", { fg = colors.fg, bg = colors.keyword, undercurl = true, special = colors.warning } },
    { "cParen", { fg = colors.fg5 } },
    { "cCustomParen", { fg = colors.fg4 } },
    { "Delimiter", { fg = colors.fg3 } },
    { "Todo", { fg = colors.bg, bg = colors.const } },

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
    { "pythonParam", { fg = colors.fg4 } },
    { "pythonParen", { link = "cParen" } },
    { "pythonRepeat", { fg = colors.keyword2 } },
    { "pythonRun", { fg = colors.comment, italic = italic } },
    { "pythonSquareBrackets", { link = "cParen" } },
    { "pythonStatement", { fg = colors.keyword2, bold = bold } },
    { "pythonStrFormat", { fg = colors.var } },
    { "pythonStrInterpRegion", { fg = colors.fg } },
    { "pythonVars", { fg = colors.var } },

    { "mojoStatement", { italic = italic, fg = colors.keyword2 } },
    { "mojoConditional", { bold = bold, fg = colors.keyword } },
    { "mojoRepeat", { bold = bold, fg = colors.keyword } },
    { "mojoOperator", { bold = bold, fg = colors.keyword } },
    { "mojoException", { bold = bold, fg = colors.func } },
    { "mojoInclude", { italic = italic, fg = colors.keyword2 } },
    { "mojoAsync", { italic = italic, fg = colors.keyword2 } },

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
    { "semshiSelf", { fg = colors.var } },
    { "semshiUnresolved", { fg = colors.fg2 } },

    { "dartConstant", { fg = colors.const } },

    { "nimBuiltin", { fg = colors.builtin } },

    { "DiagnosticError", { fg = colors.error, bg = colors.none } },
    { "DiagnosticWarning", { fg = colors.warning, bg = colors.none } },
    { "DiagnosticWarn", { fg = colors.warning, bg = colors.none } },
    { "DiagnosticInformation", { fg = colors.comment, bg = colors.none } },
    { "DiagnosticInfo", { fg = colors.comment, bg = colors.none } },
    { "DiagnosticHint", { fg = colors.fg5, bg = colors.none } },
    { "DiagnosticUnderlineError", { fg = colors.error, bg = colors.none } },
    { "DiagnosticUnderlineWarning", { fg = colors.warning, bg = colors.none } },
    { "DiagnosticUnderlineInformation", { fg = colors.comment, bg = colors.none } },
    { "DiagnosticUnderlineHint", { fg = colors.fg5, bg = colors.none } },

    { "DiagnosticVirtualTextSuccess", { fg = colors.success, bg = colors.success_bg } },
    { "DiagnosticVirtualTextHint", { fg = colors.hint, bg = colors.hint_bg } },
    { "DiagnosticVirtualTextInfo", { fg = colors.info, bg = colors.info_bg } },
    { "DiagnosticVirtualTextWarn", { fg = colors.warning, bg = colors.warning_bg } },
    { "DiagnosticVirtualTextError", { fg = colors.error, bg = colors.error_bg } },

    { "DiagnosticSignInfo", { fg = colors.keyword2, bg = colors.none } },
    { "LspCodeLens", { fg = colors.bg3, bg = colors.none, italic = italic } },
    { "LspCodeLensSeparator", { fg = colors.bg3, bg = colors.none, italic = italic } },

    { "LspInfoBorder", { fg = colors.keyword2, bg = colors.bg } },

    { "TelescopeBorder", { fg = colors.keyword2, bg = colors.bg } },

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

    {
      "CopilotSuggestion",
      { fg = is_dark and colors.keyword2 or colors.bg, bg = is_dark and colors.info_bg or colors.keyword2 },
    },
    { "CopilotAnnotation", { fg = colors.keyword, italic = italic } },

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

    { "WhichKeyFloat", { bg = colors.bg2 } },

    { "AlphaHeader", { fg = colors.type, bold = bold } },
    { "AlphaButtons", { fg = colors.keyword2 } },
    { "AlphaShortcut", { fg = colors.type2, italic = italic } },
    { "AlphaFooter", { fg = colors.comment, italic = italic } },
    { "DashboardFooter", { fg = colors.comment, italic = italic } },

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
    { "@constructor", { link = "cParen" } },
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
    { "@type", { link = "Type" } },
    { "@type.qualifier", { link = "Type" } },
    { "@variable.builtin", { link = "Special" } },
    { "@variable", { fg = colors.var } },

    -- more ts highlights
    { "@variable.htmldjango", { fg = colors.var } },
    { "@include.python", { link = "Include" } },

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
    { "TSRainbowCyan", { fg = colors.str } },

    -- semantic highlight on lsp
    -- LSP Semantic Token Groups
    { "@lsp.type.class", { fg = colors.type, italic = italic } },
    { "@lsp.type.decorator", { fg = colors.keyword2, italic = italic } },
    { "@lsp.type.enum", { fg = colors.func, italic = italic } },
    { "@lsp.type.enumMember", { fg = colors.const } },
    { "@lsp.type.function", { fg = colors.func } },
    { "@lsp.type.interface", { fg = colors.func } },
    { "@lsp.type.keyword", { fg = colors.keyword, italic = italic } },
    { "@lsp.type.macro", { link = "PreProc" } },
    { "@lsp.typemod.function.defaultLibrary", { link = "Special" } },
    { "@lsp.typemod.variable.defaultLibrary", { fg = colors.builtin } },
    { "@lsp.typemod.variable.globalScope", { fg = colors.const } },
    { "@lsp.type.namespace", { link = "@namespace" } },
    { "@lsp.type.parameter", { link = "Indentifier" } },
    { "@lsp.type.property", { link = "Indentifier" } },
    { "@lsp.type.method", { link = "Indentifier" } },
    { "@lsp.type.struct", { fg = colors.type } },
    { "@lsp.type.type", { fg = colors.type } },
    { "@lsp.type.variable", { fg = colors.var } },

    -- rust specific
    { "@lsp.type.variable.rust", { link = "@lsp.type.variable" } },
    { "@lsp.type.function.rust", { link = "@lsp.type.variable" } },
    { "@lsp.mod.declaration.rust", { link = "@lsp.type.variable" } },
    { "@lsp.typemod.function.declaration.rust", { link = "@lsp.type.variable" } },

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

    -- Vim illumniate
    { "IlluminatedWord", { fg = colors.extra1, bg = colors.bg2 } },
    { "IlluminatedWordText", { fg = colors.extra2, bg = colors.bg3 } },
    { "IlluminatedWordRead", { fg = colors.extra3, bg = colors.bg4 } },
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

    -- null-ls
    { "NullLsInfoBorder", { link = "FloatBorder" } },

    { "NvimInternalError", { fg = colors.bg, bg = colors.error, bold = bold } },
  }

  for _, highlight in ipairs(highlights) do
    hi(unpack(highlight))
  end
end

return M
