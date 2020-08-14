" Vim color file
" Name:         danger.vim
" Author:       Igor Guerrero <igorgue@protonmail.com>
" Version:      1.9.0

" Distributable under the same terms as Vim itself (see :help license)

hi clear

if exists("syntax on")
    syntax reset
endif

let g:colors_name = "danger"

" Define reusable colorvariables.

" Gui colorslet
let s:fg="#dadada"
let s:fg2="#bcbcbc"
let s:fg3="#9e9e9e"
let s:fg4="#808080"
let s:fg5="#626262"

let s:bg="#161925"
let s:bg2="#262B40"
let s:bg3="#454555"
let s:bg4="#394160"
let s:bg5="#344055"

let s:keyword="#8787d7"
let s:keyword2="#8787ff"

let s:warning="#ff8787"
let s:warning2="#ff5f00"

let s:type="#ffd7ff"
let s:type2="#ffd7d7"

let s:builtin="#00af87"
let s:const= "#ffd75f"
let s:comment="#6c6c6c"
let s:func="#ffffd7"
let s:str="#afd7ff"
let s:var="#afd7af"

" Terminal colors
let s:tfg="253"
let s:tfg2="250"
let s:tfg3="247"
let s:tfg4="244"
let s:tfg5="241"

let s:tbg="232"
let s:tbg2="235"
let s:tbg3="239"
let s:tbg4="242"
let s:tbg5="246"

let s:tkeyword="104"
let s:tkeyword2="105"

let s:twarning="210"
let s:twarning2="202"

let s:ttype="225"
let s:ttype2="224"

let s:tbuiltin="36"
let s:tconst= "221"
let s:tcomment="242"
let s:tfunc="230"
let s:tstr="153"
let s:tvar="151"

exe 'hi Normal guifg='s:fg' ctermfg='s:tfg' guibg='s:bg
exe 'hi Visual guibg='s:bg4
exe 'hi Cursor guibg='s:type
exe 'hi CursorLine guibg='s:bg2
exe 'hi CursorLineNr guifg='s:warning' guibg='s:bg2
exe 'hi CursorColumn guibg='s:bg2' guifg='s:type' gui=bold'
exe 'hi ColorColumn guibg='s:bg2
exe 'hi LineNr guifg='s:fg5' guibg='s:bg
exe 'hi VertSplit guifg='s:bg' guibg='s:fg5
exe 'hi MatchParen guifg='s:type2' guibg='s:bg' gui=bold'
exe 'hi StatusLine guifg='s:fg4' guibg='s:bg3' gui=bold'
exe 'hi StatusLineNC guifg='s:bg' guibg='s:fg2' gui=bold'
exe 'hi Pmenu guifg='s:fg' guibg='s:bg2
exe 'hi PmenuSel guibg='s:bg3
exe 'hi IncSearch guifg='s:bg' guibg='s:keyword' gui=bold'
exe 'hi Search guifg='s:warning2' guibg='s:bg' gui=bold'
exe 'hi Directory guifg='s:const
exe 'hi Folded guifg='s:fg4' guibg='s:bg
exe 'hi WildMenu guifg='s:str' guibg='s:bg
exe 'hi TabLine guifg='s:fg' guibg='s:bg
exe 'hi Quote guifg='s:fg' guibg='s:bg
exe 'hi Folded guifg='s:fg' guibg='s:bg
exe 'hi FoldColumn guifg='s:fg' guibg='s:bg
exe 'hi SignColumn guifg='s:fg' guibg='s:bg

exe 'hi Boolean guifg='s:const
exe 'hi Character guifg='s:const
exe 'hi Comment guifg='s:comment
exe 'hi Conditional guifg='s:keyword
exe 'hi Constant guifg='s:const
exe 'hi Todo guibg='s:bg
exe 'hi Define guifg='s:keyword
exe 'hi Error gui=undercurl guibg=NONE guisp='s:warning2
exe 'hi DiffAdd guifg='s:bg' guibg='s:builtin' ctermbg='s:tbuiltin
exe 'hi DiffDelete guifg='s:bg' guibg='s:warning2
exe 'hi DiffChange guifg='s:bg' guibg='s:const
exe 'hi DiffText guifg='s:fg' guibg='s:warning' gui=bold'
exe 'hi ErrorMsg guifg='s:warning' guibg='s:bg2' gui=bold'
exe 'hi WarningMsg guifg='s:fg' guibg='s:warning2
exe 'hi Float guifg='s:const
exe 'hi Function guifg='s:func
exe 'hi Identifier guifg='s:fg
exe 'hi Keyword guifg='s:keyword'  gui=bold'
exe 'hi Label guifg='s:var
exe 'hi NonText guifg='s:bg4' guibg='s:bg
exe 'hi Number guifg='s:const
exe 'hi Operator guifg='s:keyword
exe 'hi PreProc guifg='s:keyword
exe 'hi Special guifg='s:fg
exe 'hi SpecialKey guifg='s:fg2' guibg='s:bg2
exe 'hi Statement guifg='s:keyword
exe 'hi StorageClass guifg='s:type' gui=italic'
exe 'hi String guifg='s:str
exe 'hi Tag guifg='s:keyword
exe 'hi Title guifg='s:fg' gui=bold'
exe 'hi Todo guifg='s:fg2' gui=inverse,bold'
exe 'hi Type guifg='s:type
exe 'hi Underlined gui=underline'

exe 'hi SpellBad guifg='s:fg' guibg='s:warning2' guisp='s:warning' " undercurl color'
exe 'hi SpellCap guifg='s:fg' guibg='s:keyword' guisp='s:warning' " undercurl color'
exe 'hi SpellLocal guifg='s:fg' guibg='s:keyword' guisp='s:warning' " undercurl color'
exe 'hi SpellRare guifg='s:fg' guibg='s:keyword' guisp='s:warning' " undercurl color'

" Neovim Terminal Mode
let g:terminal_color_0 = s:bg
let g:terminal_color_1 = s:warning
let g:terminal_color_2 = s:keyword
let g:terminal_color_3 = s:bg4
let g:terminal_color_4 = s:func
let g:terminal_color_5 = s:builtin
let g:terminal_color_6 = s:fg3
let g:terminal_color_7 = s:str
let g:terminal_color_8 = s:bg2
let g:terminal_color_9 = s:warning2
let g:terminal_color_10 = s:fg2
let g:terminal_color_11 = s:var
let g:terminal_color_12 = s:type
let g:terminal_color_13 = s:const
let g:terminal_color_14 = s:fg4
let g:terminal_color_15 = s:comment

" Python Highlighting
exe 'hi pythonBuiltinFunc guifg='s:builtin' ctermfg='s:tbuiltin
exe 'hi pythonImport guifg='s:warning' ctermfg='s:twarning
exe 'hi pythonStatement guifg='s:warning' ctermfg='s:twarning
exe 'hi pythonStrFormat guifg='s:var
exe 'hi pythonClassVar guifg='s:var
exe 'hi pythonRepeat guifg='s:warning' ctermfg='s:twarning
exe 'hi pythonOperator guifg='s:warning' ctermfg='s:twarning
exe 'hi pythonStrInterpRegion guifg='s:var
exe 'hi pythonDottedName guifg='s:builtin' ctermfg='s:tbuiltin
exe 'hi pythonDecorator guifg='s:fg4
exe 'hi pythonException guifg='s:keyword
exe 'hi pythonExClass guifg='s:keyword' gui=bold'
exe 'hi pythonRun guifg='s:comment' gui=italic'

if has("autocmd")
    au BufRead,BufNewFile *.py syn keyword dangerPythonDefClass def class
    au BufRead,BufNewFile *.py syn match dangerPythonParens /[(){}\[\]]/
    au BufRead,BufNewFile *.py syn match dangerPythonArg "\v[\(\,]\s{-}\zs\w+\ze\s{-}\=(\=)@!"
endif

exe 'hi dangerPythonDefClass guifg='s:keyword2' ctermfg=62 gui=bold'
exe 'hi dangerPythonParens guifg='s:keyword2' ctermfg=62'
exe 'hi dangerPythonArg guifg='s:var

" Ruby Highlighting
exe 'hi rubyAttribute guifg='s:builtin' ctermfg='s:tbuiltin
exe 'hi rubyLocalVariableOrMethod guifg='s:var
exe 'hi rubyGlobalVariable guifg='s:var' gui=italic'
exe 'hi rubyInstanceVariable guifg='s:var
exe 'hi rubyKeyword guifg='s:keyword
exe 'hi rubyKeywordAsMethod guifg='s:keyword' gui=bold'
exe 'hi rubyClassDeclaration guifg='s:keyword' gui=bold'
exe 'hi rubyClass guifg='s:keyword' gui=bold'
exe 'hi rubyNumber guifg='s:const

" Go Highlighting
exe 'hi goBuiltins guifg='s:builtin' ctermfg='s:tbuiltin
let g:go_highlight_array_whitespace_error = 1
let g:go_highlight_build_constraints      = 1
let g:go_highlight_chan_whitespace_error  = 1
let g:go_highlight_extra_types            = 1
let g:go_highlight_fields                 = 1
let g:go_highlight_format_strings         = 1
let g:go_highlight_function_calls         = 1
let g:go_highlight_function_parameters    = 1
let g:go_highlight_functions              = 1
let g:go_highlight_generate_tags          = 1
let g:go_highlight_operators              = 1
let g:go_highlight_space_tab_error        = 1
let g:go_highlight_string_spellcheck      = 1
let g:go_highlight_types                  = 1
let g:go_highlight_variable_assignments   = 1
let g:go_highlight_variable_declarations  = 1

" Javascript Highlighting
exe 'hi jsBuiltins guifg='s:builtin' ctermfg='s:tbuiltin
exe 'hi jsFunction guifg='s:keyword' gui=bold'
exe 'hi jsGlobalObjects guifg='s:type
exe 'hi jsAssignmentExps guifg='s:var

" Html Highlighting
exe 'hi htmlLink guifg='s:var' gui=underline'
exe 'hi htmlStatement guifg='s:keyword
exe 'hi htmlSpecialTagName guifg='s:keyword

" Markdown Highlighting
exe 'hi mkdCode guifg='s:builtin' ctermfg='s:tbuiltin

" Csharp Highlighting
exe 'hi csBraces guifg='s:var
exe 'hi csParens guifg='s:keyword2
exe 'hi csOpSymbols guifg='s:warning2
exe 'hi csModifier guifg='s:keyword2' gui=italic'
exe 'hi csType guifg='s:type
exe 'hi csConstant guifg='s:const
exe 'hi csStorage guifg='s:type2
exe 'hi csClass guifg='s:type2
exe 'hi csClassType guifg='s:type2
exe 'hi csQuote guifg='s:warning' ctermfg='s:twarning
exe 'hi csString guifg='s:str
exe 'hi csUnspecifiedStatement guifg='s:warning' ctermfg='s:twarning
exe 'hi csClassName guifg='s:type
exe 'hi csGenericBraces guifg='s:warning2
exe 'hi csConditional guifg='s:keyword
exe 'hi csNew guifg='s:keyword
exe 'hi csNewType guifg='s:keyword
exe 'hi csRepeat guifg='s:keyword
exe 'hi csException guifg='s:keyword
exe 'hi csIsType guifg='s:type
exe 'hi csIsAs guifg='s:keyword2
exe 'hi csContextualStatement guifg='s:keyword2
exe 'hi csUnsupportedStatement guifg='s:keyword2

" C Highlighting
exe 'hi cParen guifg='s:var
exe 'hi cCustomParen guifg='s:var

" CtrlP Highlighting
exe 'hi CtrlPMatch guifg='s:type' gui=italic,bold'
