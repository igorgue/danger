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

  local highlights = {
    -- Spec format:
    -- { "HighlightGroup", { fg = colors.fg, bg = colors.bg, underline = false, bold = false, italic = false, reverse = false, special = false, blend = 0 } },

    -- Core highlight groups
    { "Normal", { fg = colors.fg, bg = colors.bg } },
    { "Normal", { fg = colors.fg, bg = colors.bg } },
    { "Visual", { fg = colors.fg, bg = colors.bg4 } },
    { "Cursor", { bg = colors.type, fg = colors.keyword2 } },
    { "CursorLine", { bg = colors.bg2 } },
    { "Conceal", { fg = colors.fg, bg = colors.bg2 } },
    { "CursorLineNr", { fg = colors.keyword2, bg = colors.bg2 } },
    { "CursorColumn", { fg = colors.type, bg = colors.bg2 } },
    { "ColorColumn", { bg = colors.bg2 } },
    { "LineNr", { fg = colors.fg5, bg = colors.bg } },
    { "VertSplit", { fg = colors.keyword2, bg = colors.bg } },
    { "StatusLine", { fg = colors.fg4, bg = colors.bg } },
    { "StatusLineNC", { fg = colors.bg, bg = colors.fg2, bold = true } },
    { "Pmenu", { fg = colors.fg2, bg = colors.bg2, blend = 5 } },
    { "PmenuSel", { fg = colors.type, bg = colors.bg4, bold = true, blend = 0 } },
    { "Directory", { fg = colors.const } },
    { "Folded", { fg = colors.fg4, bg = colors.bg } },
    { "WildMenu", { fg = colors.str, bg = colors.bg } },
    { "TabLine", { fg = colors.bg4, bg = colors.none } },
    { "TabLineSel", { fg = colors.bg, bg = colors.keyword2 } },
    { "TabLineFill", { fg = colors.bg, bg = colors.none } },
    { "Quote", { fg = colors.fg, bg = colors.bg } },
    { "Folded", { fg = colors.fg, bg = colors.bg } },
    { "FoldColumn", { fg = colors.fg, bg = colors.bg } },
    { "SignColumn", { fg = colors.fg, bg = colors.bg } },
    { "MatchParen", { fg = colors.type3, bg = colors.none, bold = true } },
    { "Search", { fg = colors.none, bg = colors.none, bold = true, reverse = true } },
    { "IncSearch", { fg = colors.none, bg = colors.none, bold = true, reverse = true } },
    { "Boolean", { fg = colors.const } },
    { "Character", { fg = colors.const } },
    { "Comment", { fg = colors.comment } },
    { "Conditional", { fg = colors.keyword } },
    { "Constant", { fg = colors.const } },
    { "Define", { fg = colors.keyword } },
    { "Error", { fg = colors.error, special = colors.error, undercurl = true } },
    { "DiffAdd", { fg = colors.bg, bg = colors.success } },
    { "DiffDelete", { fg = colors.bg, bg = colors.error } },
    { "DiffChange", { fg = colors.bg, bg = colors.const } },
    { "DiffText", { fg = colors.fg } },
    { "ErrorMsg", { fg = colors.warning, bg = colors.bg2, bold = true } },
    { "WarningMsg", { fg = is_dark and colors.fg or colors.bg, bg = colors.warning2 } },
    { "Float", { fg = colors.const } },
    { "NormalFloat", { bg = colors.bg } },
    { "FloatBorder", { fg = colors.keyword2 } },
    { "Function", { fg = colors.func } },
    { "Identifier", { fg = colors.fg2 } },
    { "Keyword", { fg = colors.keyword, bold = true } },
    { "Label", { fg = colors.fg2 } },
    { "NonText", { fg = colors.bg4, bg = colors.bg } },
    { "Number", { fg = colors.const } },
    { "Operator", { fg = colors.keyword } },
    { "PreProc", { fg = colors.keyword } },
    { "Special", { fg = colors.fg2 } },
    { "SpecialKey", { fg = colors.fg3 } },
    { "Statement", { fg = colors.keyword } },
    { "StorageClass", { fg = colors.type } },
    { "String", { fg = colors.str } },
    { "Tag", { fg = colors.keyword } },
    { "Title", { fg = colors.keyword, bold = true } },
    { "Type", { fg = colors.type } },
    { "Underlined", { underline = true } },
    { "SpellBad", { fg = colors.fg, bg = colors.error, undercurl = true, special = colors.error } },
    { "SpellCap", { fg = colors.fg, bg = colors.keyword, undercurl = true, special = colors.warning } },
    { "SpellLocal", { fg = colors.fg, bg = colors.keyword, undercurl = true, special = colors.warning } },
    { "SpellRare", { fg = colors.fg, bg = colors.keyword, undercurl = true, special = colors.warning } },
    { "cParen", { fg = colors.var } },
    { "cCustomParen", { fg = colors.var } },
    { "Todo", { fg = colors.bg, bg = colors.const } },

    -- plugins' ui
    { "pythonBuiltinFunc", { fg = colors.builtin } },
    { "pythonBuiltinObj", { fg = colors.builtin } },
    { "pythonImport", { fg = colors.warning } },
    { "pythonStatement", { fg = colors.warning } },
    { "pythonStrFormat", { fg = colors.var } },
    { "pythonClassVar", { fg = colors.type2, italic = true } },
    { "pythonRepeat", { fg = colors.warning } },
    { "pythonOperator", { fg = colors.warning } },
    { "pythonDottedName", { fg = colors.builtin, italic = true } },
    { "pythonDecorator", { fg = colors.builtin, italic = true } },
    { "pythonException", { fg = colors.keyword } },
    { "pythonExClass", { fg = colors.keyword, bold = true } },
    { "pythonRun", { fg = colors.comment, italic = is_light } },
    { "pythonFString", { fg = colors.str } },
    { "pythonStrInterpRegion", { fg = colors.fg } },
    { "djangoFilter", { fg = colors.func } },
    { "djangoStatement", { fg = colors.type } },
    { "djangoVarBlock", { fg = colors.var } },

    { "dartConstant", { fg = colors.const } },

    { "nimBuiltin", { fg = colors.builtin } },

    { "DiagnosticError", { fg = colors.error } },
    { "DiagnosticWarning", { fg = colors.warning } },
    { "DiagnosticWarn", { fg = colors.warning } },
    { "DiagnosticInformation", { fg = colors.comment } },
    { "DiagnosticInfo", { fg = colors.comment } },
    { "DiagnosticHint", { fg = colors.fg5 } },
    { "DiagnosticUnderlineError", { fg = colors.error } },
    { "DiagnosticUnderlineWarning", { fg = colors.warning } },
    { "DiagnosticUnderlineInformation", { fg = colors.comment } },
    { "DiagnosticUnderlineHint", { fg = colors.fg5 } },
    { "DiagnosticSignInfo", { fg = colors.keyword2 } },
    { "LspCodeLens", { fg = colors.bg3, italic = true } },
    { "LspCodeLensSeparator", { fg = colors.bg3, italic = true } },
    { "LspInfoBorder", { fg = colors.keyword2, bg = colors.bg } },

    { "TelescopeBorder", { fg = colors.keyword2, bg = colors.bg } },

    { "GitSignsAdd", { fg = colors.success } },
    { "GitSignsChange", { fg = colors.warning } },
    { "GitSignsDelete", { fg = colors.error } },
    { "GitSignsAddNr", { fg = colors.success } },
    { "GitSignsChangeNr", { fg = colors.warning } },
    { "GitSignsDeleteNr", { fg = colors.error } },
    { "GitSignsAddLn", { fg = colors.success } },
    { "GitSignsChangeLn", { fg = colors.warning } },
    { "GitSignsDeleteLn", { fg = colors.error } },
    { "GitSignsCurrentLineBlame", { fg = colors.fg2 } },
    { "CopilotSuggestion", { fg = colors.keyword, italic = true } },
    { "CopilotAnnotation", { fg = colors.keyword2, italic = true } },

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
    { "SagaBeacon", { bg = colors.bg } },

    -- finder
    { "ActionPreviewTitle", { fg = colors.keyword2, bg = colors.none } },
    { "CodeActionText", { fg = colors.success } },
    { "CodeActionNumber", { fg = colors.keyword2 } },

    { "FinderSelection", { fg = colors.keyword, bold = true } },
    { "FinderFileName", { fg = colors.fg } },
    { "FinderIcon", { fg = colors.fg } },
    { "FinderCount", { fg = colors.fg } },
    { "FinderType", { fg = colors.fg } },
    { "FinderSpinnerTitle", { fg = colors.fg, bold = true } },
    { "FinderSpinner", { fg = colors.fg, bold = true } },
    { "FinderVirtText", { fg = colors.bg } },
    { "RenameNormal", { fg = colors.fg } },
    { "DiagnosticOk", { fg = colors.success } },
    { "DiagnosticSource", { fg = colors.bg } },
    { "DiagnosticPos", { fg = colors.fg } },
    { "DiagnosticWord", { fg = colors.fg } },
    { "CallHierarchyIcon", { fg = colors.keyword2 } },
    { "CallHierarchyTitle", { fg = colors.keyword2 } },
    { "SagaShadow", { bg = colors.bg } },
    { "OutlineIndent", { fg = colors.bg } },

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
    { "LspSagaWinbarNull", { fg = colors.warning2 } },
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

    { "AlphaHeader", { fg = colors.type, bold = true } },
    { "AlphaButtons", { fg = colors.keyword2 } },
    { "AlphaShortcut", { fg = colors.type2, italic = true } },
    { "AlphaFooter", { fg = colors.comment, italic = true } },
    { "DashboardFooter", { fg = colors.comment, italic = true } },

    { "MiniIndentscopeSymbol", { fg = colors.type, bold = true } },

    -- treesitter
    { "@annotation", { link = "PreProc" } },
    { "@attribute", { link = "PreProc" } },
    { "@boolean", { link = "Boolean" } },
    { "@character", { link = "Character" } },
    { "@character.special", { link = "SpecialChar" } },
    { "@comment", { link = "Comment" } },
    { "@conditional", { fg = colors.keyword2, bold = true } },
    { "@constant.builtin", { link = "Special" } },
    { "@constant", { link = "Constant" } },
    { "@constant.macro", { link = "Define" } },
    { "@constructor", { link = "Special" } },
    { "@debug", { link = "Debug" } },
    { "@define", { link = "Define" } },
    { "@delimiter", { link = "Delimiter" } },
    { "@exception", { fg = colors.keyword2, bold = true } },
    { "@exception", { link = "Exception" } },
    { "@field", { fg = colors.fg2 } },
    { "@field", { link = "Identifier" } },
    { "@float", { link = "Float" } },
    { "@function.builtin", { fg = colors.keyword2 } },
    { "@function.call", { link = "@function" } },
    { "@function", { fg = colors.keyword2 } },
    { "@function.macro", { link = "Macro" } },
    { "@include", { link = "Include" } },
    { "@keyword", { fg = colors.keyword2, bold = true } },
    { "@keyword.function", { fg = colors.keyword2, bold = true, italic = true } },
    { "@keyword.operator", { link = "Operator" } },
    { "@keyword.return", { link = "Keyword" } },
    { "@label", { link = "Label" } },
    { "@method.call", { link = "@method" } },
    { "@method", { link = "Function" } },
    { "@namespace", { link = "Include" } },
    { "@number", { link = "Number" } },
    { "@operator", { link = "Operator" } },
    { "@parameter", { link = "Identifier" } },
    { "@parameter.reference", { link = "@parameter" } },
    { "@preproc", { link = "PreProc" } },
    { "@property", { link = "Identifier" } },
    { "@punctuation.bracket", { link = "Delimiter" } },
    { "@punctuation.delimiter", { link = "Delimiter" } },
    { "@punctuation.special", { link = "Delimiter" } },
    { "@repeat", { fg = colors.keyword2, bold = true } },
    { "@repeat", { link = "Repeat" } },
    { "@storageclass", { link = "StorageClass" } },
    { "@string.escape", { link = "SpecialChar" } },
    { "@string", { link = "String" } },
    { "@string.regex", { link = "String" } },
    { "@string.special", { link = "SpecialChar" } },
    { "@symbol", { link = "Identifier" } },
    { "@tag.attribute", { link = "@property" } },
    { "@tag.delimiter", { link = "Delimiter" } },
    { "@tag", { link = "Label" } },
    { "@text.danger", { link = "WarningMsg" } },
    { "@text.emphasis", { italic = true } },
    { "@text.environment", { link = "Macro" } },
    { "@text.environment.name", { link = "Macro" } },
    { "@text", { link = "@none" } },
    { "@text.literal", { link = "String" } },
    { "@text.math", { link = "Special" } },
    { "@text.note", { link = "SpecialComment" } },
    { "@text.reference", { link = "Constant" } },
    { "@text.strike", { strikethrough = true } },
    { "@text.strong", { bold = true } },
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
    { "TSRainbowRed", { fg = colors.warning2 } },
    { "TSRainbowYellow", { fg = colors.const } },
    { "TSRainbowBlue", { fg = colors.keyword } },
    { "TSRainbowOrange", { fg = colors.warning } },
    { "TSRainbowGreen", { fg = colors.success } },
    { "TSRainbowViolet", { fg = colors.keyword2 } },
    { "TSRainbowCyan", { fg = colors.str } },

    -- noice
    -- https://github.com/folke/noice.nvim#-highlight-groups
    { "NoiceVirtualText", { fg = colors.bg, bg = colors.keyword2, bold = true } },
    { "NoiceCmdlineIconSearch", { fg = colors.keyword2, bold = true } },
    { "NoiceCmdlinePopupBorderSearch", { fg = colors.keyword2, bold = true } },
    { "NoiceConfirmBorder", { fg = colors.keyword2, bold = true } },

    -- todo
    { "TodoBgTODO", { fg = colors.bg, bg = colors.str, bold = true } },
    { "TodoFgTODO", { fg = colors.str } },
    { "TodoSignTODO", { fg = colors.str } },
    { "TodoBgFIX", { fg = colors.bg, bg = colors.error, bold = true } },
    { "TodoFgFIX", { fg = colors.error } },
    { "TodoSignFIX", { fg = colors.error } },
    { "TodoBgPERF", { fg = colors.bg, bg = colors.success, bold = true } },
    { "TodoFgPERF", { fg = colors.success } },
    { "TodoSignPERF", { fg = colors.success } },
    { "TodoBgWARN", { fg = colors.bg, bg = colors.warning, bold = true } },
    { "TodoFgWARN", { fg = colors.warning } },
    { "TodoSignWARN", { fg = colors.warning } },
    { "TodoBgTEST", { fg = colors.bg, bg = colors.builtin, bold = true } },
    { "TodoFgTEST", { fg = colors.builtin } },
    { "TodoSignTEST", { fg = colors.builtin } },
    { "TodoBgNOTE", { fg = colors.bg, bg = colors.comment, bold = true } },
    { "TodoFgNOTE", { fg = colors.comment } },
    { "TodoSignNOTE", { fg = colors.comment } },
    { "TodoBgHACK", { fg = colors.bg, bg = colors.warning2, bold = true } },
    { "TodoFgHACK", { fg = colors.warning2 } },
    { "TodoSignHACK", { fg = colors.warning2 } },

    -- Vim illumniate
    { "illuminatedWord", { link = "CursorLine" } },
    { "IlluminatedWordText", { underline = false } },
    { "IlluminatedWordRead", { underline = false } },
    { "IlluminatedWordWrite", { underline = false } },

    { "NvimInternalError", { fg = colors.bg, bg = colors.error, bold = true } },
  }

  for _, highlight in ipairs(highlights) do
    hi(unpack(highlight))
  end
end

return M
