" Vim color file
" Name:         danger.vim
" Author:       Igor Guerrero <igorgue@protonmail.com>
" Version:      1.9.2

" Distributable under the same terms as Vim itself (see :help license)

hi clear

if exists("syntax on")
    syntax reset
endif

let g:colors_name = "danger"

set t_Co=255

" Define reusable colorvariables.

" Gui colorset
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
let s:keyword2="#875fff"

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
let s:tkeyword2="99"

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

" Neovim Terminal Mode
let g:terminal_color_0 = s:bg
let g:terminal_color_1 = s:warning
let g:terminal_color_2 = s:builtin
let g:terminal_color_3 = s:const
let g:terminal_color_4 = s:type
let g:terminal_color_5 = s:builtin
let g:terminal_color_6 = s:fg3
let g:terminal_color_7 = s:str
let g:terminal_color_8 = s:bg2
let g:terminal_color_9 = s:warning2
let g:terminal_color_10 = s:fg2
let g:terminal_color_11 = s:var
let g:terminal_color_12 = s:const
let g:terminal_color_13 = s:type
let g:terminal_color_14 = s:fg4
let g:terminal_color_15 = s:comment

exe 'hi Normal guifg='s:fg' ctermfg='s:tfg' guibg='s:bg
exe 'hi Visual guibg='s:bg4' ctermbg='s:tbg3
exe 'hi Cursor guibg='s:type' ctermbg='s:ttype
exe 'hi CursorLine guibg='s:bg2' ctermbg='s:tbg2' cterm=none'
exe 'hi CursorLineNr guifg='s:warning' ctermfg='s:twarning' guibg='s:bg2
exe 'hi CursorColumn guibg='s:bg2' ctermbg='s:tbg2' guifg='s:type' ctermfg='s:ttype' gui=bold cterm=bold'
exe 'hi ColorColumn guibg='s:bg2' ctermbg='s:tbg2
exe 'hi LineNr guifg='s:fg5' ctermfg='s:tfg5' guibg='s:bg
exe 'hi VertSplit guifg='s:bg' ctermfg='s:tbg2' guibg='s:fg5' ctermbg='s:tbg2
exe 'hi StatusLine guifg='s:fg4' ctermfg='s:tfg4' guibg='s:bg3' ctermbg='s:tbg3' gui=bold cterm=bold'
exe 'hi StatusLineNC guifg='s:bg' ctermfg='s:tbg' guibg='s:fg2' ctermbg='s:tfg2' gui=bold cterm=bold'
exe 'hi Pmenu guifg='s:fg2' guibg='s:bg2' ctermbg='s:tbg2
exe 'hi PmenuSel guifg='s:type' ctermfg='s:ttype' guibg='s:bg4' ctermbg='s:tbg4' gui=bold cterm=bold'
exe 'hi IncSearch guifg='s:bg' ctermfg='s:tbg' guibg='s:keyword' ctermbg='s:tkeyword' gui=bold cterm=bold'
exe 'hi Directory guifg='s:const' ctermfg='s:tconst
exe 'hi Folded guifg='s:fg4' ctermfg='s:tfg4' guibg='s:bg
exe 'hi WildMenu guifg='s:str' ctermfg='s:tstr' guibg='s:bg
exe 'hi TabLine guifg='s:fg' ctermfg='s:tfg' guibg='s:bg
exe 'hi Quote guifg='s:fg' ctermfg='s:tfg' guibg='s:bg
exe 'hi Folded guifg='s:fg' ctermfg='s:tfg' guibg='s:bg
exe 'hi FoldColumn guifg='s:fg' ctermfg='s:tfg' guibg='s:bg' ctermbg=none'
exe 'hi SignColumn guifg='s:fg' ctermfg='s:tfg' guibg='s:bg' ctermbg=none'

if (has('nvim'))
    exe 'hi MatchParen guifg='s:type' ctermfg='s:ttype' ctermbg=none guibg=none gui=bold cterm=bold'
    exe 'hi Search guifg='s:warning2' ctermfg='s:twarning2' ctermbg=none guibg=none gui=bold,underline cterm=bold,underline'
else
    exe 'hi MatchParen guifg='s:type' ctermfg='s:ttype' guibg='s:bg' ctermbg='s:tbg' gui=bold cterm=bold'
    exe 'hi Search guifg='s:warning2' ctermfg='s:twarning2' guibg='s:bg' ctermbg='s:tbg' gui=bold,underline cterm=bold,underline'
endif

exe 'hi Boolean guifg='s:const' ctermfg='s:tconst
exe 'hi Character guifg='s:const' ctermfg='s:tconst
exe 'hi Comment guifg='s:comment' ctermfg='s:tcomment
exe 'hi Conditional guifg='s:keyword' ctermfg='s:tkeyword
exe 'hi Constant guifg='s:const' ctermfg='s:tconst
exe 'hi Todo guibg='s:bg
exe 'hi Define guifg='s:keyword' ctermfg='s:tkeyword
exe 'hi Error gui=undercurl guibg=NONE guisp='s:warning2
exe 'hi DiffAdd guifg='s:bg' guibg='s:builtin' ctermbg='s:tbuiltin
exe 'hi DiffDelete guifg='s:bg' ctermfg='s:tbg' guibg='s:warning2
exe 'hi DiffChange guifg='s:bg' guibg='s:const' ctermbg='s:tconst
exe 'hi DiffText guifg='s:fg' ctermfg='s:tfg' guibg='s:warning' ctermbg='s:twarning' gui=bold cterm=bold'
exe 'hi ErrorMsg guifg='s:warning' ctermfg='s:twarning' guibg='s:bg2' ctermbg='s:tbg2' gui=bold'
exe 'hi WarningMsg guifg='s:fg' ctermfg='s:tfg' guibg='s:warning2' ctermbg='s:twarning2
exe 'hi Float guifg='s:const' ctermfg='s:tconst
exe 'hi Function guifg='s:func' ctermfg='s:tfunc
exe 'hi Identifier guifg='s:fg' ctermfg='s:tfg
exe 'hi Keyword guifg='s:keyword' ctermfg='s:tkeyword' gui=bold'
exe 'hi Label guifg='s:var' ctermfg='s:tvar
exe 'hi NonText guifg='s:bg4' ctermfg='s:tbg4' guibg='s:bg' ctermbg=none'
exe 'hi Number guifg='s:const' ctermfg='s:tconst
exe 'hi Operator guifg='s:keyword' ctermfg='s:tkeyword
exe 'hi PreProc guifg='s:keyword' ctermfg='s:tkeyword
exe 'hi Special guifg='s:fg' ctermfg='s:tfg
exe 'hi SpecialKey guifg='s:fg2' ctermfg='s:tfg2' guibg='s:bg2' ctermbg='s:tbg2
exe 'hi Statement guifg='s:keyword' ctermfg='s:tkeyword
exe 'hi StorageClass guifg='s:type' ctermfg='s:ttype' gui=italic'
exe 'hi String guifg='s:str' ctermfg='s:tstr
exe 'hi Tag guifg='s:keyword' ctermfg='s:tkeyword
exe 'hi Title guifg='s:fg' ctermfg='s:tfg' gui=bold cterm=bold'
exe 'hi Todo guifg='s:fg2' ctermfg='s:tfg2' gui=inverse,bold cterm=inverse,bold'
exe 'hi Type guifg='s:type' ctermfg='s:ttype
exe 'hi Underlined gui=underline'

exe 'hi SpellBad guifg='s:fg' ctermfg='s:tfg' guibg='s:warning2' ctermbg='s:twarning2' guisp='s:warning' " undercurl color'
exe 'hi SpellCap guifg='s:fg' ctermfg='s:tfg' guibg='s:keyword' ctermbg='s:tkeyword' guisp='s:warning' " undercurl color'
exe 'hi SpellLocal guifg='s:fg' ctermfg='s:tfg' guibg='s:keyword' ctermbg='s:tkeyword' guisp='s:warning' " undercurl color'
exe 'hi SpellRare guifg='s:fg' ctermfg='s:tfg' guibg='s:keyword' ctermbg='s:tkeyword' guisp='s:warning' " undercurl color'

" Python Highlighting
exe 'hi pythonBuiltinFunc guifg='s:builtin' ctermfg='s:tbuiltin
exe 'hi pythonBuiltinObj guifg='s:builtin' ctermfg='s:tbuiltin
exe 'hi pythonImport guifg='s:warning' ctermfg='s:twarning
exe 'hi pythonStatement guifg='s:warning' ctermfg='s:twarning
exe 'hi pythonStrFormat guifg='s:var' ctermfg='s:tvar
exe 'hi pythonClassVar guifg='s:type2' ctermfg='s:ttype2' gui=italic cterm=italic'
exe 'hi pythonRepeat guifg='s:warning' ctermfg='s:twarning
exe 'hi pythonOperator guifg='s:warning' ctermfg='s:twarning
exe 'hi pythonDottedName guifg='s:builtin' ctermfg='s:tbuiltin' gui=italic cterm=italic'
exe 'hi pythonDecorator guifg='s:fg4' ctermfg='s:tfg4
exe 'hi pythonException guifg='s:keyword' ctermfg='s:tkeyword
exe 'hi pythonExClass guifg='s:keyword' ctermfg='s:tkeyword' gui=bold cterm=bold'
exe 'hi pythonRun guifg='s:comment' ctermfg='s:tcomment' gui=italic cterm=italic'
exe 'hi pythonFString guifg='s:str' ctermfg='s:tstr
exe 'hi pythonStrInterpRegion guifg='s:fg' ctermfg='s:tfg

" These are defined on after/syntax/python.vim
exe 'hi dangerPythonTypedArgument guifg='s:var' ctermfg='s:tvar
exe 'hi dangerPythonDefClass guifg='s:keyword2' ctermfg='s:tkeyword2' gui=bold'
exe 'hi dangerPythonBrackets guifg='s:keyword' ctermfg='s:tkeyword
exe 'hi dangerPythonSquareBrackets guifg='s:keyword' ctermfg='s:tkeyword
exe 'hi dangerPythonIndex guifg='s:keyword2' ctermfg='s:tkeyword2
exe 'hi dangerPythonArg guifg='s:var' ctermfg='s:tvar
exe 'hi dangerPythonParen guifg='s:fg2' ctermfg='s:tfg2
exe 'hi dangerPythonParenBlock guifg='s:fg2' ctermfg='s:tfg2

" Now Semshi colors
exe 'hi semshiLocal guifg='s:warning' ctermfg='s:twarning
exe 'hi semshiGlobal guifg='s:const' ctermfg='s:tconst
exe 'hi semshiImported guifg='s:type' ctermfg='s:tconst
exe 'hi semshiParameter guifg='s:var' ctermfg='s:tvar
exe 'hi semshiParameterUnused guifg='s:var' ctermfg='s:tvar' cterm=underline gui=underline'
exe 'hi semshiFree guifg='s:type' ctermfg='s:ttype
exe 'hi semshiBuiltin guifg='s:builtin' ctermfg='s:tbuiltin
exe 'hi semshiAttribute guifg='s:var' ctermfg='s:tvar
exe 'hi semshiSelf guifg='s:type2' ctermfg='s:ttype2' gui=italic cterm=italic'
exe 'hi semshiUnresolved guifg='s:warning' ctermfg='s:twarning
exe 'hi semshiSelected guifg='s:warning' ctermfg='s:twarning' cterm=bold gui=bold'
exe 'hi semshiErrorSign guifg='s:warning2' ctermfg='s:twarning2' cterm=bold gui=bold'
exe 'hi semshiErrorChar guifg='s:warning2' ctermfg='s:twarning2' cterm=bold gui=bold'

" Ruby Highlighting
exe 'hi rubyAttribute guifg='s:builtin' ctermfg='s:tbuiltin
exe 'hi rubyLocalVariableOrMethod guifg='s:var' ctermfg='s:tvar
exe 'hi rubyGlobalVariable guifg='s:var' ctermfg='s:tvar' gui=italic'
exe 'hi rubyInstanceVariable guifg='s:var' ctermfg='s:tvar
exe 'hi rubyKeyword guifg='s:keyword' ctermfg='s:tkeyword
exe 'hi rubyKeywordAsMethod guifg='s:keyword' ctermfg='s:tkeyword' gui=bold cterm=bold'
exe 'hi rubyClassDeclaration guifg='s:keyword' ctermfg='s:tkeyword' gui=bold cterm=bold'
exe 'hi rubyClass guifg='s:keyword' ctermfg='s:tkeyword' gui=bold'
exe 'hi rubyNumber guifg='s:const' ctermfg='s:tconst

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
exe 'hi jsFunction guifg='s:keyword' ctermfg='s:tkeyword' gui=bold cterm=bold'
exe 'hi jsGlobalObjects guifg='s:type' ctermfg='s:ttype
exe 'hi jsAssignmentExps guifg='s:var' ctermfg='s:tvar

" Html Highlighting
exe 'hi htmlLink guifg='s:var' ctermfg='s:tvar' gui=underline'
exe 'hi htmlStatement guifg='s:keyword' ctermfg='s:tkeyword
exe 'hi htmlSpecialTagName guifg='s:keyword' ctermfg='s:tkeyword

" Markdown Highlighting
exe 'hi mkdCode guifg='s:builtin' ctermfg='s:tbuiltin

" Csharp Highlighting
exe 'hi csBraces guifg='s:var' ctermfg='s:tvar
exe 'hi csParens guifg='s:keyword2' ctermfg='s:tkeyword2
exe 'hi csOpSymbols guifg='s:warning2' ctermfg='s:twarning2
exe 'hi csModifier guifg='s:keyword2' ctermfg='s:tkeyword2' gui=italic cterm=italic'
exe 'hi csType guifg='s:type' ctermfg='s:ttype
exe 'hi csConstant guifg='s:const' ctermfg='s:tconst
exe 'hi csStorage guifg='s:keyword' ctermfg='s:tkeyword' gui=italic cterm=italic'
exe 'hi csClass guifg='s:keyword' ctermfg='s:tkeyword' gui=italic cterm=italic'
exe 'hi csClassType guifg='s:type2' ctermfg='s:ttype2
exe 'hi csQuote guifg='s:warning' ctermfg='s:twarning
exe 'hi csString guifg='s:str' ctermfg='s:tstr
exe 'hi csUnspecifiedStatement guifg='s:warning' ctermfg='s:twarning' gui=italic cterm=italic'
exe 'hi csClassName guifg='s:type' ctermfg='s:ttype
exe 'hi csGenericBraces guifg='s:warning2' ctermfg='s:twarning2
exe 'hi csGeneric guifg='s:type2' ctermfg='s:ttype2
exe 'hi csConditional guifg='s:keyword' ctermfg='s:tkeyword
exe 'hi csNew guifg='s:keyword' ctermfg='s:tkeyword' gui=italic cterm=italic'
exe 'hi csNewType guifg='s:type' ctermfg='s:ttype
exe 'hi csRepeat guifg='s:keyword2' ctermfg='s:tkeyword2
exe 'hi csException guifg='s:keyword' ctermfg='s:tkeyword
exe 'hi csIsType guifg='s:type' ctermfg='s:ttype' gui=italic cterm=italic'
exe 'hi csIsAs guifg='s:warning' ctermfg='s:twarning' gui=italic cterm=italic'
exe 'hi csLogicSymbols guifg='s:warning' ctermfg='s:twarning
exe 'hi csContextualStatement guifg='s:keyword2' ctermfg='s:tkeyword2
exe 'hi csUnsupportedStatement guifg='s:keyword2' ctermfg='s:tkeyword2
exe 'hi csAsync guifg='s:keyword' ctermfg='s:tkeyword

" C Highlighting
exe 'hi cParen guifg='s:var' ctermfg='s:tvar
exe 'hi cCustomParen guifg='s:var' ctermfg='s:tvar

" Nim Highlighting
exe 'hi nimBuiltin guifg='s:builtin' ctermfg='s:tbuiltin

" CtrlP Highlighting
exe 'hi CtrlPMatch guifg='s:type' ctermfg='s:ttype' gui=italic,bold cterm=italic,bold'

" CoC
exe 'hi CocHighlightText gui=italic,bold,underline cterm=italic,bold,underline'
