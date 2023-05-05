"基本設定
inoremap <silent> jj <ESC>
set number

"かっこ補完
inoremap { {}<LEFT>
inoremap [ []<LEFT>
inoremap ( ()<LEFT>
inoremap " ""<LEFT>
inoremap ' ''<LEFT>


set clipboard=unnamed,unnamedplus

augroup fileTypeIndent
	autocmd!
	autocmd BufNewFile,BufRead *.md setlocal tabstop=2 shiftwidth=2
	autocmd BufNewFile,BufRead *.yaml setlocal tabstop=2 shiftwidth=2
	autocmd BufNewFile,BufRead *.py setlocal tabstop=4 shiftwidth=4
augroup END

" Ward off unexpected things that your distro might have made, as
" well as sanely reset options when re-sourcing .vimrc
set nocompatible

" Set Dein base path (required)
let s:dein_base = '/home/taka/.cache/dein'

" Set Dein source path (required)
let s:dein_src = '/home/taka/.cache/dein/repos/github.com/Shougo/dein.vim'

" Set Dein runtime path (required)
execute 'set runtimepath+=' . s:dein_src

" Call Dein initialization (required)
call dein#begin(s:dein_base)

call dein#add(s:dein_src)

" Your plugins go here:
call dein#add('Shougo/neosnippet.vim')
call dein#add('Shougo/neosnippet-snippets')
call dein#add('lambdalisue/fern.vim')


" Finish Dein initialization (required)
call dein#end()

" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
if has('filetype')
  filetype indent plugin on
endif

" Enable syntax highlighting
if has('syntax')
  syntax on
endif

" Uncomment if you want to install not-installed plugins on startup.
if dein#check_install()
 call dein#install()
endif

""" Fern
" Show hidden files
let g:fern#default_hidden=1

" Show file tree with Ctrl+n
nnoremap <C-n> :Fern . -reveal=% -drawer -toggle -width=40<CR>
