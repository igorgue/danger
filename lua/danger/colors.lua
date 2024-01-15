local M = {}

M.dark = {
  none = "none",

  fg = "#dadaee",
  fg2 = "#bcbccf",
  fg3 = "#9e9eb9",
  fg4 = "#8080ac",
  fg5 = "#626294",

  bg = "#161925",
  bg2 = "#262b4c",
  bg3 = "#454569",
  bg4 = "#394174",
  bg5 = "#344069",

  keyword = "#8787d7",
  keyword2 = "#875fff",

  success = "#46e1b9",
  hint = "#808080",
  info = "#8b8baf",
  warning = "#fa7878",
  error = "#ff0d03",

  success_bg = "#022507",
  hint_bg = "#1c1c1c",
  info_bg = "#1d1d41",
  warning_bg = "#2e0a14",
  error_bg = "#230311",

  type = "#ffd7ff",
  type2 = "#ffd7d7",
  type3 = "#ffe6ff",

  builtin = "#009b73",
  const = "#ffd75f",
  comment = "#6c6c6c",
  func = "#ffffd7",
  str = "#cbe6ff",
  var = "#f0f0ff",

  -- extra colors
  extra1 = "#c4c9f3",
  extra2 = "#eac9e4",
  extra3 = "#b1a7cd",
  extra4 = "#cbb9ad",
  extra5 = "#c7a0c3",
  extra6 = "#facfc7",
  extra7 = "#b8b1b3",
  extra8 = "#9187b4",
  extra9 = "#f7e4e3",
  extra10 = "#9d81a4",
}

M.light = {
  none = "none",

  bg = "#dadaee",
  bg2 = "#bcbccf",
  bg3 = "#9e9eb9",
  bg4 = "#8080ac",
  bg5 = "#626294",

  fg = "#161925",
  fg2 = "#262b4c",
  fg3 = "#454569",
  fg4 = "#394174",
  fg5 = "#344069",

  keyword = "#8787d7",
  keyword2 = "#875fff",

  success = "#026107",
  hint = "#1c1c1c",
  info = "#1d1d41",
  warning = "#b04600",
  error = "#a50311",

  success_bg = "#46e1b9",
  hint_bg = "#d0d0d0",
  info_bg = "#8b8baf",
  warning_bg = "#faa0a0",
  error_bg = "#ff5a5a",

  type = "#694169",
  type2 = "#684b69",
  type3 = "#695a69",

  builtin = "#009b73",
  const = "#916923",
  comment = "#868686",
  func = "#696941",
  str = "#464673",
  var = "#3a4495",

  -- extra colors
  extra1 = "#4c517b",
  extra2 = "#684762",
  extra3 = "#574d73",
  extra4 = "#715f53",
  extra5 = "#6d4669",
  extra6 = "#82574f",
  extra7 = "#544d4f",
  extra8 = "#4b416e",
  extra9 = "#6b5857",
  extra10 = "#614568",
}

-- red and black theme
M.red_and_black = vim.deepcopy(M.dark)

M.red_and_black.bg = "#000000"
M.red_and_black.fg = "#e60004"

M.red_and_black.fg2 = "#c80004"
M.red_and_black.fg3 = "#a00004"
M.red_and_black.fg4 = "#780004"
M.red_and_black.fg5 = "#500004"

M.red_and_black.bg2 = "#000000"
M.red_and_black.bg3 = "#282828"
M.red_and_black.bg4 = "#505050"
M.red_and_black.bg5 = "#787878"

M.red_and_black.keyword = "#ffffff"
M.red_and_black.keyword2 = "#ffebeb"

M.red_and_black.success = "#e60004"
M.red_and_black.hint = "#808080"
M.red_and_black.info = "#8b4541"
M.red_and_black.warning = "#fa7878"
M.red_and_black.error = "#ff0d03"

M.red_and_black.success_bg = "#3e0707"
M.red_and_black.hint_bg = "#441c1c"
M.red_and_black.info_bg = "#271323"
M.red_and_black.warning_bg = "#2e0a14"
M.red_and_black.error_bg = "#230311"

M.red_and_black.type = "#ffd7d7"
M.red_and_black.type2 = "#ffc3c3"
M.red_and_black.type3 = "#ffa5a5"

M.red_and_black.builtin = "#967878"
M.red_and_black.const = "#6c0606"
M.red_and_black.comment = "#6c6c6c"
M.red_and_black.func = "#ffd7d7"
M.red_and_black.str = "#a00004"
M.red_and_black.var = "#5a0004"

M.red_and_black.extra1 = "#be2822"
M.red_and_black.extra2 = "#aa6e6e"
M.red_and_black.extra3 = "#fa6e6e"
M.red_and_black.extra4 = "#fabec8"
M.red_and_black.extra5 = "#fa643c"
M.red_and_black.extra6 = "#d2a0a0"
M.red_and_black.extra7 = "#fa7878"
M.red_and_black.extra8 = "#820000"
M.red_and_black.extra9 = "#82003c"
M.red_and_black.extra10 = "#be1e00"

-- very minimal colors
M.mnml = vim.deepcopy(M.dark)

M.mnml.fg4 = M.mnml.keyword2
M.mnml.fg5 = M.mnml.keyword2

M.mnml.keyword = M.mnml.keyword2

M.mnml.type = M.mnml.fg
M.mnml.type2 = M.mnml.fg
M.mnml.type3 = M.mnml.fg

M.mnml.builtin = M.mnml.fg
M.mnml.func = M.mnml.fg
M.mnml.var = M.mnml.fg

M.mnml.extra1 = M.mnml.keyword2
M.mnml.extra2 = M.mnml.keyword2
M.mnml.extra3 = M.mnml.keyword2
M.mnml.extra4 = M.mnml.keyword2
M.mnml.extra5 = M.mnml.keyword2
M.mnml.extra6 = M.mnml.keyword2
M.mnml.extra7 = M.mnml.keyword2
M.mnml.extra8 = M.mnml.fg
M.mnml.extra9 = M.mnml.keyword2
M.mnml.extra10 = M.mnml.keyword2

M.candy = vim.deepcopy(M.dark)
M.candy.bg = "#000000"
M.candy.fg = "#f0f0f8"

M.ir_black = vim.deepcopy(M.dark)

M.black = vim.deepcopy(M.dark)
M.black.bg = "#000000"

return M
