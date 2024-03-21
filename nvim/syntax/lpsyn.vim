" Vim syntax file
" Language:	LPSyn (lifelessPixels Syntax)
" Maintainer:	Karol Małecki (lifelessPixels) - https://github.com/lifelessPixels

" Quit when a syntax file was already loaded
if exists("b:current_syntax")
  finish
endif

" Comment
syn match lpsynComment '#.*$'

" Action
syn keyword lpsynActionKeyword action skipwhite nextgroup=lpsynActionEquals
syn match lpsynActionEquals '=' skipwhite nextgroup=lpsynActionType
syn keyword lpsynActionType combine collect contained

" Converter
syn keyword lpsynConverterKeyword converter skipwhite nextgroup=lpsynConverterEquals
syn match lpsynConverterEquals '=' skipwhite nextgroup=lpsynConverterType
syn keyword lpsynConverterType to_int contained

" Name
syn keyword lpsynNameKeyword name skipwhite nextgroup=lpsynNameEquals
syn match lpsynNameEquals '=' skipwhite nextgroup=lpsynName
syn match lpsynName '[_A-Za-z][_0-9A-Za-z]*'

" Literal
syn region lpsynLiteralString start='"' end='"'

" Region
syn region lpsynCompoundRule start='{' end='}' fold transparent

" Highlights
let b:current_syntax = "lpsyn"
hi def link lpsynComment Comment
hi def link lpsynActionKeyword Keyword
hi def link lpsynConverterKeyword Keyword
hi def link lpsynNameKeyword Keyword
hi def link lpsynActionType Keyword
hi def link lpsynConverterType Keyword
hi def link lpsynActionEquals Operator
hi def link lpsynConverterEquals Operator
hi def link lpsynNameEquals Operator
hi def link lpsynName Identifier
hi def link lpsynLiteralString String
