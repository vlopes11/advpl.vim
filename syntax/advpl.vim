" Vim syntax file
" Language:	AdvPL
" Maintainer:	Victor Lopes <vhrlopes@gmail.com>
" Last Change:	2016 Jul 08

if exists("b:current_syntax")
    finish
endif

syntax case ignore

syntax keyword  advplKeyword    user static function return local nil
syntax keyword  advplKeyword    private break default
syntax keyword  advplCond       if elseif else endif
syntax keyword  advplRepeat     for to next while enddo do loop exit
syntax keyword  advplFunction   valtype msgstop

syntax match	advplOperator   "\.and\."
syntax match	advplOperator   "\.or\."

syntax match    advplInclude    "^\#include.*$"
syntax match    advplInclude    "^\#define.*$"

syntax match    advplBoolean    "\.[tf]\."
syntax region   advplString     start=+'+ skip=+\\'+ end=+['\n]+
syntax region   advplString     start=+"+ skip=+\\"+ end=+["\n]+

syntax match    advplComment    "^\*.*$"
syntax match    advplComment    "\v\/\/.*$"
syntax region   advplCommentB   start=+\/\*+ end=+\*\/+

highlight link advplKeyword     Keyword
highlight link advplCond        Conditional
highlight link advplRepeat      Repeat
highlight link advplFunction    Function
highlight link advplOperator    Operator
highlight link advplInclude     Include
highlight link advplBoolean     Boolean
highlight link advplString      String
highlight link advplComment     Comment
highlight link advplCommentB    Comment

let b:current_syntax = "advpl"
