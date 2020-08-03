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
let s:fg="#dcdcd9"
let s:bg="#161925"
let s:keyword="#a3aad8"
let s:builtin="#2d9f73"
let s:const= "#dfca53"
let s:comment="#66667A"
let s:func="#eddbbf"
let s:str="#acc6d7"
let s:type="#dbbfed"
let s:var="#c6d7ac"
let s:warning="#d8a3aa"

let s:fg2="#b6b6af"
let s:fg3="#d6d6d6"
let s:fg4="#9d9d95"
let s:fg5="#42423D"
let s:bg2="#262B40"
let s:bg3="#454555"
let s:bg4="#394160"
let s:keyword2="#8c95cf"
let s:warning2="#f8a5b1"
let s:type2="#edbfe8"

exe 'hi Normal guifg='s:fg' guibg='s:bg
exe 'hi Visual guibg='s:bg4
exe 'hi Cursor guibg='s:type
exe 'hi CursorLine guibg='s:bg2
exe 'hi CursorLineNr guifg='s:warning' guibg='s:bg2
exe 'hi CursorColumn guibg='s:bg2
exe 'hi ColorColumn guibg='s:bg2
exe 'hi LineNr guifg='s:fg5' guibg='s:bg
exe 'hi VertSplit guifg='s:bg' guibg='s:fg5
exe 'hi MatchParen guifg='s:type2' guibg='s:bg2' gui=bold'
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
exe 'hi DiffAdd guifg='s:bg' guibg='s:builtin
exe 'hi DiffDelete guifg='s:bg' guibg='s:warning2
exe 'hi DiffChange guifg='s:bg' guibg='s:const
exe 'hi DiffText guifg='s:fg' guibg='s:warning' gui=bold'
exe 'hi ErrorMsg guifg='s:warning' guibg='s:bg2' gui=bold'
exe 'hi WarningMsg guifg='s:fg' guibg='s:warning2
exe 'hi Float guifg='s:const
exe 'hi Function guifg='s:func
exe 'hi Identifier guifg='s:type'  gui=italic'
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
exe 'hi pythonBuiltinFunc guifg='s:builtin
exe 'hi pythonImport guifg='s:warning
exe 'hi pythonStatement guifg='s:warning
exe 'hi pythonStrFormat guifg='s:var
exe 'hi pythonClassVar guifg='s:var
exe 'hi pythonRepeat guifg='s:warning
exe 'hi pythonOperator guifg='s:warning
exe 'hi pythonStrInterpRegion guifg='s:var
exe 'hi pythonDottedName guifg='s:builtin
exe 'hi pythonDecorator guifg='s:fg4
exe 'hi pythonException guifg='s:keyword
exe 'hi pythonExClass guifg='s:keyword' gui=bold'
exe 'hi pythonRun guifg='s:comment' gui=italic'

if has("autocmd")
    au BufRead,BufNewFile *.py syn keyword dangerPythonDefClass def class
    au BufRead,BufNewFile *.py syn match dangerPythonParens /[(){}\[\]]/
    au BufRead,BufNewFile *.py syn match dangerPythonArg "\v[\(\,]\s{-}\zs\w+\ze\s{-}\=(\=)@!"
endif

exe 'hi dangerPythonDefClass guifg='s:keyword2' gui=bold'
exe 'hi dangerPythonParens guifg='s:keyword2
exe 'hi dangerPythonArg guifg='s:var

" Ruby Highlighting
exe 'hi rubyAttribute guifg='s:builtin
exe 'hi rubyLocalVariableOrMethod guifg='s:var
exe 'hi rubyGlobalVariable guifg='s:var' gui=italic'
exe 'hi rubyInstanceVariable guifg='s:var
exe 'hi rubyKeyword guifg='s:keyword
exe 'hi rubyKeywordAsMethod guifg='s:keyword' gui=bold'
exe 'hi rubyClassDeclaration guifg='s:keyword' gui=bold'
exe 'hi rubyClass guifg='s:keyword' gui=bold'
exe 'hi rubyNumber guifg='s:const

" Go Highlighting
exe 'hi goBuiltins guifg='s:builtin
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
exe 'hi jsBuiltins guifg='s:builtin
exe 'hi jsFunction guifg='s:keyword' gui=bold'
exe 'hi jsGlobalObjects guifg='s:type
exe 'hi jsAssignmentExps guifg='s:var

" Html Highlighting
exe 'hi htmlLink guifg='s:var' gui=underline'
exe 'hi htmlStatement guifg='s:keyword
exe 'hi htmlSpecialTagName guifg='s:keyword

" Markdown Highlighting
exe 'hi mkdCode guifg='s:builtin

" Csharp Highlighting
exe 'hi dangerCsParens guifg='s:var

if has("autocmd")
    au BufRead,BufNewFile *.cs syn match dangerCsParens /[(){}\[\]]/
endif

exe 'hi csOpSymbols guifg='s:warning2
