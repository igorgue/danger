" Vim syntax file
" Language:    Python
" Maintainer:  Igor Guerrero <igorgue@protonmail.com>

syn keyword dangerPythonDefClass def class
syn match dangerPythonParens /[(){}\[\]]/
syn match dangerPythonArg "\v[\(\,]\s{-}\zs\w+\ze\s{-}\=(\=)@!"
