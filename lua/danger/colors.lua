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
  var = "#b6b6da",

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

-- WIP of a red and black theme
M.red_and_black = vim.deepcopy(M.dark)

M.red_and_black.bg = "#000000"
M.red_and_black.fg = "#e60004"

return M
