" Vim syntax file
" Language: KIS IDLos and Action Language
" Maintainer: Maciej Pietrzak
" Latest Revision: 24 April 2012

if exists("b:current_syntax")
  finish
endif

syn region idlosString start='"' end='"' skip=/\\"/
syntax region idlosComment start='\/\*' end='\*\/'
syntax region idlosComment2 start='\/\/' end='$'

syn keyword idlosLanguageKeywords package entity struct enum interface expose relationship attribute key

syn keyword idlosConstKeywords const

syn keyword idlosActionLanguageStatement create delete declare try catch action relate return values in out using order by ascending descending break where singleton on empty select continue typedef sequence virtual extentless ordered unique
syn keyword idlosActionLanguageConditionalStatement if else
syn keyword idlosActionLanguageRepeatStatement for while

syn keyword idlosType string long void unsigned boolean

syn region idlosBlock start="{" end="}" fold transparent
syn region idlosBlock start="{`" end="`}" fold transparent


let b:current_syntax = "kis"

hi def link idlosString String
hi def link idlosComment Comment
hi def link idlosComment2 Comment

hi def link idlosLanguageKeywords Statement
hi def link idlosConstKeywords Constant

hi def link idlosActionLanguageStatement Statement
hi def link idlosActionLanguageConditionalStatement Conditional
hi def link idlosActionLanguageRepeatStatement Repeat

hi def link idlosType Type


