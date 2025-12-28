" Custom 16-ANSI colorscheme synced with your Kitty palette
" Uses only ctermfg/ctermbg 0-15 for perfect terminal match

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "kitty16"

" UI basics
hi Normal       ctermfg=15  ctermbg=0     " Bright orange (#ff8c00) text on black
hi Visual       ctermfg=NONE ctermbg=8    " Selection on bright black
hi Search       ctermfg=0   ctermbg=11    " Black on bright yellow
hi IncSearch    ctermfg=0   ctermbg=14    " Black on bright cyan
hi StatusLine   ctermfg=15  ctermbg=4   cterm=bold
hi StatusLineNC ctermfg=7   ctermbg=0
hi VertSplit    ctermfg=8   ctermbg=8
hi LineNr       ctermfg=8                 " Bright black for line numbers
hi CursorLineNr ctermfg=11  cterm=bold    " Bright yellow for current line
hi CursorLine   ctermbg=8                 " Subtle highlight
hi Pmenu        ctermfg=15  ctermbg=0     " Popup menu
hi PmenuSel     ctermfg=0   ctermbg=15    " Selected item: black on orange

" Syntax highlighting (tuned for your palette)
hi Comment      ctermfg=14                " Bright cyan (soft, readable)
hi Constant     ctermfg=9                 " Bright red
hi String       ctermfg=10                " Bright green (your cyan-ish green)
hi Identifier   ctermfg=15                " Bright white
hi Function     ctermfg=12                " Bright magenta/blue-purple
hi Statement    ctermfg=9   cterm=bold    " Bright red keywords (alert/danger feel)
hi PreProc      ctermfg=5                 " Magenta
hi Type         ctermfg=13                " Warm orange-red types
hi Special      ctermfg=11                " Bright yellow specials
hi Error        ctermfg=15  ctermbg=1     " White on red
hi Todo         ctermfg=0   ctermbg=9     " Black on bright red

" LSP/Tree-sitter extras (add if you use them)
hi @comment     ctermfg=14
hi @string      ctermfg=10
hi @function    ctermfg=12
hi @keyword     ctermfg=4   cterm=bold
hi @type        ctermfg=12
hi DiagnosticError ctermfg=9
hi DiagnosticWarn  ctermfg=11
hi DiagnosticInfo  ctermfg=14
hi DiagnosticHint  ctermfg=7
