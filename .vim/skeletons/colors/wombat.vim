set background=dark	

hi clear	

if exists("sntax_on")	
	syntax reset	
endif	

let colors_name = "wombat"	

if version >= 700	
	hi CursorLine 	guibg=#2d2d2d	
	hi CursorColumn guibg=#2d2d2d	
	hi MatchParen 	guifg=#f6f3e8 	guibg=#857b6f gui=bold	
	hi Pmenu	guifg=#f6f3e8 	guibg=#444444	
	hi PmenuSe1	guifg=#000000 	guibg=#cae682	
endif	

" General colors	
hi Cursor	guifg=None 	guibg=#656565 gui=none	
hi CursorLineNr	guifg=#8787d7	guibg=#ffffff gui=none	
hi Normal	guifg=#f6f3e8  gui=none	
hi NonText	guifg=#808080	guibg=#303030 gui=none	
hi LineNr	guifg=#857b6f	guibg=#000000 gui=none	
hi StatusLine	guifg=#f6f3e8	guibg=#444444 gui=italic	
hi StatusLineNC	guifg=#857b6f	guibg=#444444 gui=none	
hi VertSplit	guifg=#444444	guibg=#444444 gui=none	
hi Folded	guifg=#a0a8b0	guibg=#384048 gui=none	
hi Title	guifg=#f6f3e8	guibg=NONE    gui=bold	
hi Visual	guifg=#f6f3e8	guibg=#444444 gui=none	
hi SpecialKey	guifg=#808080	guibg=#343434 gui=none	

" Syntax highlight	
hi Comment			guifg=#00b0d7	gui=italic	
hi Todo				guifg=#8f8f8f	gui=italic	
hi Constant	ctermfg=13 	guifg=#e5786d	gui=none	
hi String	ctermfg=14	guifg=#95e454	gui=italic	
hi Identifier			guifg=#cae682	gui=none	
hi Function			guifg=#dadada	gui=none	
hi Type	 	ctermfg=12 	guifg=#6298f5 	gui=none	
hi Operator	ctermfg=9 	guifg=#c70e0e	gui=none	
hi Statement  	ctermfg=11 			gui=none	
hi Keyword			guifg=#8ac6f2	gui=none	
hi PreProc			guifg=#e5786d	gui=none	
hi Number			guifg=#e5786d	gui=none	
hi Special	ctermfg=9 	guifg=#e7f6da	gui=none	
hi ColorColumn	ctermbg=8 	guifg=#e7f6da 	gui=none	
hi Pmenu 	ctermfg=15 	ctermbg=0 	gui=none	
