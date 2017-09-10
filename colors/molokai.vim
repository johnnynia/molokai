" Vim color file
"
" Author: Tomas Restrepo <tomas@winterdom.com>
"
" Note: Based on the monokai theme for textmate
" by Wimer Hazenberg and its darker variant 
" by Hamish Stuart Macpherson
"

hi clear

set background=dark
if version > 580
    " no guarantees for version 5.8 and below, but this makes it stop
    " complaining
    hi clear
    if exists("syntax_on")
        syntax reset
    endif
endif
let g:colors_name="molokai"

if exists("g:molokai_original")
    let s:molokai_original = g:molokai_original
else
    let s:molokai_original = 0
endif
    let s:molokai_original = 1


"
" Support for 256-color terminal
"
" 135 pink
" 144 yellowgrey
" 161 red
"  16 black
" 253 light grey
" 255 white
"  81 light blue
" 241 grey
" 118 green
" 219 light pink
" 199 pink (error)
" 208 orange
" 193 strong green
" 229 yellow
"
if &t_Co > 255
   hi Boolean         ctermfg=5
   hi Character       ctermfg=144
   hi Number          ctermfg=5
   hi String          ctermfg=4
   hi Conditional     ctermfg=161               cterm=bold
   hi Constant        ctermfg=5
   hi Cursor          ctermfg=16  ctermbg=253
   hi Debug           ctermfg=225               cterm=bold
   hi Define          ctermfg=81
   hi Delimiter       ctermfg=241

   hi DiffAdd         ctermfg=0   ctermbg=118
   hi DiffChange      ctermfg=0   ctermbg=81
   hi DiffDelete      ctermfg=0   ctermbg=161
   hi DiffText        ctermfg=0   ctermbg=15

   hi Directory       ctermfg=2                 cterm=bold
   hi Error           ctermfg=219 ctermbg=89
   hi ErrorMsg        ctermfg=199 ctermbg=16    cterm=bold
   hi Exception       ctermfg=2                 cterm=bold
   hi Float           ctermfg=135
   hi FoldColumn      ctermfg=241  ctermbg=234
   hi Folded          ctermfg=241  ctermbg=16
   hi Function        ctermfg=2
   hi Identifier      ctermfg=3
   hi Ignore          ctermfg=244 ctermbg=232
   hi IncSearch       ctermfg=193 ctermbg=16

   hi Keyword         ctermfg=161               cterm=bold
   hi Label           ctermfg=229               cterm=none
   hi Macro           ctermfg=193
   hi SpecialKey      ctermfg=4

   hi MatchParen      ctermfg=16  ctermbg=208 cterm=bold
   hi ModeMsg         ctermfg=229
   hi MoreMsg         ctermfg=229
   hi Operator        ctermfg=161

   " complete menu
   hi Pmenu           ctermfg=4   ctermbg=16
   hi PmenuSel                    ctermbg=244
   hi PmenuSbar                   ctermbg=232
   hi PmenuThumb      ctermfg=4

   hi PreCondit       ctermfg=2                 cterm=bold
   hi PreProc         ctermfg=2
   hi Question        ctermfg=4
   hi Repeat          ctermfg=161               cterm=bold
   hi Search          ctermfg=253 ctermbg=66

   " marks column
   hi SignColumn      ctermfg=2   ctermbg=234
   hi SpecialChar     ctermfg=161               cterm=bold
   hi SpecialComment  ctermfg=245               cterm=bold
   hi Special         ctermfg=81  ctermbg=232
   hi SpecialKey      ctermfg=245

   hi Statement       ctermfg=161               cterm=bold
   hi StatusLine      ctermfg=238 ctermbg=253
   hi StatusLineNC    ctermfg=244 ctermbg=232
   hi StorageClass    ctermfg=3
   hi Structure       ctermfg=4
   hi Tag             ctermfg=161
   hi Title           ctermfg=3
   hi Todo            ctermfg=231 ctermbg=232   cterm=bold

   hi Typedef         ctermfg=4
   hi Type            ctermfg=4                 cterm=none
   hi Underlined      ctermfg=244               cterm=underline

   hi VertSplit       ctermfg=0   ctermbg=0
   hi VisualNOS                   ctermbg=240
   hi Visual                      ctermbg=232
   hi WarningMsg      ctermfg=231 ctermbg=240   cterm=bold
   hi WildMenu        ctermfg=81  ctermbg=16

   hi Normal          ctermfg=252 ctermbg=0
   hi Normal          ctermfg=252 ctermbg=0
   hi Comment         ctermfg=241
   hi CursorLine                  ctermbg=235   cterm=none
   hi CursorLineNr    ctermfg=253 ctermbg=235
   hi CursorColumn                ctermbg=235
   hi LineNr          ctermfg=241 ctermbg=8
   hi NonText         ctermfg=239 ctermbg=8

   " Markdwon
   hi htmlH1          ctermfg=4                 cterm=bold
   hi htmlH2          ctermfg=2                 cterm=bold
   hi htmlH3          ctermfg=3                 cterm=bold
   hi htmlH4          ctermfg=9                 cterm=bold
   hi markdownHeadingRule ctermfg=241
   hi markdownListMarker ctermfg=15
end
