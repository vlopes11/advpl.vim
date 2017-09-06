" Vim syntax file
" Language:	AdvPL
" Maintainer:	Victor Lopes <vhrlopes@gmail.com>
" Last Change:	2017 Sep 07

if exists("b:current_syntax")
    finish
endif

syntax case ignore

syntax keyword  advplKeyword    user static function return local nil
syntax keyword  advplKeyword    private break default
syntax keyword  advplCond       if elseif else endif
syntax keyword  advplRepeat     for next while enddo do loop exit
syntax keyword  advplFunction   valtype msgstop getarea setkey dbsetorder
syntax keyword  advplFunction   dbseek alltrim help mbrowse restarea pergunte
syntax keyword  advplFunction   iif eval xfilial aadd str len padr regtomemory
syntax keyword  advplFunction   dbgoto reclock msunlock aclone msseek eof dbskip
syntax keyword  advplFunction   dbselectarea msexecauto
syntax keyword  advplMacro      set key to

syntax match    advplInclude    "^\s*\zs\#include"
syntax match    advplInclude    "^\s*\zs\#define"

syntax match    advplStrConst   "STR[0-9]\{4\}"

syntax match    advplBoolean    "\.[tf]\."
syntax match    advplOperator   "\([:!=]=\|!\|<>\|[\<\>\+\-\*\/]\|\.and\.\|\.or\.\)"
syntax region   advplString     start=+'+ skip=+\\'+ end=+['\n]+
syntax region   advplString     start=+"+ skip=+\\"+ end=+["\n]+

syntax match    advplComment    "^\*.*$"
syntax match    advplComment    "\v\/\/.*$"
syntax region   advplCommentB   start=+\/\*+ end=+\*\/+

syntax match    advplNumbers    display "\<\d\+\.\?\d*\>"
syntax match    advplNumber     display contained "\d\+\>"
syntax match    advplFloat      display contained "\.\d\+\(e[-+]\=\d\+\)\=[fl]\=\>"

hi def link advplKeyword     Keyword
hi def link advplCond        Conditional
hi def link advplRepeat      Repeat
hi def link advplFunction    Function
hi def link advplOperator    Operator
hi def link advplInclude     Include
hi def link advplBoolean     Boolean
hi def link advplString      String
hi def link advplStrConst    Constant
hi def link advplNumbers     Number
hi def link advplComment     Comment
hi def link advplCommentB    Comment
hi def link advplMacro       Macro

let b:current_syntax = "advpl"
