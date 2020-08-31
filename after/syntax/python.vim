" Vim syntax file
" Language:    Python
" Maintainer:  Igor Guerrero <igorgue@protonmail.com>

syn keyword dangerPythonDefClass def class

syn match dangerPythonParen /[\(\)]/
syn match dangerPythonBrackets /[\{\}]/
syn match dangerPythonSquareBrackets /[\[\]]/

syn region dangerPythonParenBlock start='(' end=')' contains=@dangerParenCluster,dangerPythonArg,dangerPythonIndex containedin=dangerPythonParenBlock matchgroup=NONE

syn match dangerPythonIndex /[\[\]]/ contained display
syn match dangerPythonArg "\v\zs\w+\ze\s{-}\=(\=)@!" contained display
syn match dangerPythonTypedArgument "\v(\w+)\:\ "

syn cluster dangerParenCluster add=pythonOperator,pythonBuiltin,pythonComment,pythonBoolean,pythonNone,pythonSpaceError,pythonStatement,pythonNumber,pythonConstant,pythonString,pythonStrFormat,pythonClassVar,pythonStrFormatting,pythonFString,pythonRawString,pythonSingleton,pythonBuiltinObj,pythonBuiltinType,pythonFunctionCall,dangerPythonTypedArgument
