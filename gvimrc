if has("gui_macvim")
	" Fullscreen takes up entire screen
	set fuoptions=maxhorz,maxvert

	" Command-Return for fullscreen
	macmenu Window.Toggle\ Full\ Screen\ Mode key=<D-CR>

	" Command-Shift-F for Ack
	map <D-F> :Ack<space>

	"Command T config
	macmenu &File.New\ Tab key=<nop>
	map <D-t> :CommandT<CR>
	imap <D-t> <esc>:CommandT<cr>i
	" let g:CommandTMatchWindowAtTop=0
	" let g:CommandTMaxHeight=10
	" let g:CommandTMatchWindowReverse=1
	" let g:CommandTMaxFiles=10000
	" let g:CommandTMaxCachedDirectories=5

	" Command-e for ConqueTerm
	map <D-e> :call StartTerm()<CR>

	" Command-/ to toggle comments
	map <D-/> <plug>NERDCommenterToggle<CR>
	imap <D-/> <Esc><plug>NERDCommenterToggle<CR>i

	" Command-Option-ArrowKey to switch viewports
	map <D-M-Up> <C-w>k
	imap <D-M-Up> <Esc> <C-w>k
	map <D-M-Down> <C-w>j
	imap <D-M-Down> <Esc> <C-w>j
	map <D-M-Right> <C-w>l
	imap <D-M-Right> <Esc> <C-w>l
	map <D-M-Left> <C-w>h
	imap <D-M-Left> <C-w>h

	" Adjust viewports to the same size
	" map <Leader>= <C-w>=
	" imap <Leader>= <Esc> <C-w>=
endif

" Start without the toolbar
set guioptions-=T

" Default gui color scheme
" set background=dark
" color ir_black
" colorscheme desert-mod
let moria_style='dark'
let g:moria_monochrome=0
color moria
set cursorline

" ConqueTerm wrapper
function StartTerm()
  execute 'ConqueTerm ' . $SHELL . ' --login'
  setlocal listchars=tab:\ \ 
endfunction


" Map backspace to d (to delete characters) in visual mode
vnoremap <BS> ""di


" Use visual mode, not select mode, when selecting with the mouse
set selectmode=

" MiniBufExplorer config
" hi link MBEVisibleChangedActive Search

" Nerd tree configuration
runtime NERD_tree_config.vim

set t_vb=
