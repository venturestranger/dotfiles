" Vim color scheme

set background=dark
highlight clear
if exists('syntax_on')
    syntax reset
endif
let g:colors_name = 'bydream'

" General colors
hi Visual       ctermfg=234  ctermbg=145  cterm=none      
hi Search       ctermfg=232  ctermbg=242  cterm=none      
hi IncSearch    ctermfg=233  ctermbg=75   cterm=none      
hi Folded       ctermfg=229  ctermbg=235  cterm=none      
hi StatusLine   ctermfg=232  ctermbg=101  cterm=none      
hi StatusLineNC ctermfg=232  ctermbg=242  cterm=none      
hi TabLine      ctermfg=232  ctermbg=242  cterm=none      
hi TabLineSel   ctermfg=232  ctermbg=101  cterm=none      
hi TabLineFill  ctermfg=252  ctermbg=239  cterm=none      
hi VertSplit    ctermfg=242  ctermbg=235  cterm=none      
hi LineNr       ctermfg=242  ctermbg=234  cterm=none      
hi NonText      ctermfg=60   ctermbg=none cterm=none      
hi ErrorMsg     ctermfg=233  ctermbg=202  cterm=bold      
hi ModeMsg      ctermfg=220  ctermbg=none cterm=bold      
hi WarningMsg   ctermfg=202  ctermbg=none cterm=bold      
hi Title        ctermfg=252  ctermbg=none cterm=bold      
hi Cursor       ctermfg=none ctermbg=75   cterm=none      
hi CursorIM     ctermfg=none ctermbg=75   cterm=none      

hi CursorLine   ctermfg=none ctermbg=234  cterm=none
hi CursorLineNr ctermfg=243  ctermbg=234  cterm=none
hi ColorColumn  ctermfg=232  ctermbg=234  cterm=none      
hi MatchParen   ctermfg=166  ctermbg=none cterm=bold      
hi Pmenu        ctermfg=252  ctermbg=59   cterm=none      
hi PmenuSel     ctermfg=255  ctermbg=67   cterm=none      
hi PmenuSbar    ctermfg=none ctermbg=236  cterm=none      
hi PmenuThumb   ctermfg=none ctermbg=252  cterm=none      
hi WildMenu     ctermfg=232  ctermbg=221  cterm=none      
hi SpellBad     ctermfg=234  ctermbg=202  cterm=bold
hi SpellRare    ctermfg=234  ctermbg=24   cterm=bold 
hi SpellCap     ctermfg=234  ctermbg=172  cterm=bold 
hi SpellLocal   ctermfg=234  ctermbg=24   cterm=bold

"  Diff         highlighting
hi DiffAdd      ctermfg=234  ctermbg=172  cterm=none      
hi DiffDelete   ctermfg=234  ctermbg=107  cterm=none      
hi DiffChange   ctermfg=234  ctermbg=24   cterm=none      
hi DiffText     ctermfg=234  ctermbg=24   cterm=none      

"  Syntax       highlighting
hi Comment      ctermfg=67   ctermbg=none cterm=none      
hi Constant     ctermfg=69   ctermbg=none cterm=bold      
hi String       ctermfg=101  ctermbg=none cterm=none      
hi Number       ctermfg=64   ctermbg=none cterm=none      
hi Identifier   ctermfg=246  ctermbg=none cterm=bold      
hi Function     ctermfg=69   ctermbg=none cterm=none      
hi Statement    ctermfg=59   ctermbg=none cterm=bold      
hi Keyword      ctermfg=153  ctermbg=none cterm=none      
hi PreProc      ctermfg=221  ctermbg=none cterm=bold      
hi Type         ctermfg=107  ctermbg=none cterm=none      
hi Special      ctermfg=220  ctermbg=none cterm=none      
hi Underlined   ctermfg=101  ctermbg=none cterm=underline 
hi Error        ctermfg=234  ctermbg=202  cterm=bold      
hi Todo         ctermfg=234  ctermbg=172  cterm=bold      

" Links
hi! link Boolean      Constant
hi! link SpecialChar  Constant
hi! link Directory    Identifier
hi! link Conceal      Keyword
hi! link VisualNOS    Visual
hi! link FoldColumn   Folded
hi! link CursorColumn CursorLine
hi! link SpecialKey   NonText
hi! link MoreMsg      ModeMsg
hi! link Question     Todo
hi! link SignColumn   Normal
