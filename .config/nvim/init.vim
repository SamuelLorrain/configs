" VIMRC POUR REGLER UNE INSTALLATION DE VIM
" Attention, il n'est pas compatible en l'état avec tous les
" systèmes d'exploitations, certaines choses dans 'Comportement de Vim'
" et le Comportement de l'écran' doivent être réglé suivant l'OS
" (attention aussi à l'émulateur de terminal utilisé)
"
"" Ne pas oublier d'importer les vimfiles !
" """"""""""" " Comportement Général " """"""""""" "

" PlugManager --------------------- {{{
"
"
call plug#begin()

    " ----------------------
    " THEMES
    " ----------------------
    Plug 'https://github.com/tomasiser/vim-code-dark.git'
    Plug 'https://github.com/drewtempelmeyer/palenight.vim'
    Plug 'https://github.com/ayu-theme/ayu-vim'
    Plug 'https://github.com/rakr/vim-one'


    Plug 'https://github.com/luochen1990/rainbow.git' "colorise les () {} etc.
    Plug 'https://github.com/ntpeters/vim-better-whitespace.git' "fix les whites spaces
    Plug 'https://github.com/Raimondi/delimitMate.git' "pour l'auto-complétion des ()
    Plug 'https://github.com/chrisbra/Colorizer.git' "colorise les codes hex, rgb
    Plug 'https://github.com/preservim/nerdcommenter.git'

    "Plug 'https://github.com/vim-scripts/taglist.vim' "Permet de lister les symboles dans un projet
    "Plug 'https://github.com/wesleyche/SrcExpl' "Exploration du code
    "Plug 'https://github.com/posva/vim-vue' "Vue syntax
    "Plug 'https://github.com/tpope/vim-fugitive' "Git integration

    Plug 'https://github.com/junegunn/fzf', { 'dir': '~/.fzf', 'do':'./install --all'}
    Plug 'https://github.com/junegunn/fzf.vim'
    "Plug 'https://github.com/ctrlpvim/ctrlp.vim'

    Plug 'https://github.com/neoclide/coc.nvim' , {'branch':'release'} "Auto

    Plug 'lervag/vimtex'
    "Plug 'https://github.com/SirVer/ultisnips.git' "pour les snippets
    "Plug 'https://github.com/mattn/emmet-vim'
    "Plug 'https://github.com/c0r73x/neotags.nvim' "Génère des tags pour browser le code
    "Plug 'https://github.com/godlygeek/tabular.git'
    "Plug 'https://github.com/leissa/vim-acme' Plug 'https://github.com/rust-lang/rust.vim'
    "Plug 'https://github.com/neovimhaskell/haskell-vim.git'
    "Plug 'https://github.com/hail2u/vim-css3-syntax'
    "Plug 'https://github.com/pangloss/vim-javascript'
    "Plug 'https://github.com/jesstelford/vim-js-pretty-template'
    "Plug 'https://github.com/styled-components/vim-styled-components'
call plug#end()
""}}}

" Comportement de Vim -------------- {{{
set nocompatible "incompatible avec vi
set nomodeline "mitige un soucis
set nohidden "ne cache pas un document quand un autre est ouvert
set shellslash "slash compatible unix
set writebackup " active les backup, mais le les supprime pas
set encoding=utf-8 "encode par defaut en utf-8
set fileencodings= "detecte l'encodage par defaut d'un fichier
set tabstop=4 "tabulation de 4 caractères
set shiftwidth=4 "indentation de 4 caractères
set expandtab
set showcmd
"set autochdir "travail dans le fichier courant
"set textwidth=79 "textwidth à 80 pour la prog
set relativenumber "relative number
let mapleader="," " définit <leader>
let maplocalleader=";" " définit <localleader>
filetype plugin on "active les plugins dépendant des types de fichiers
filetype indent on "active l'indentation relative a un type de fichier
filetype plugin indent on "active le plugin et l'intend à un type de fichier
filetype on "active la detection générale des types
" }}}

" A régler pour le terminal ------- {{{
"set t_Co:256 "à mettre pour un terminal à 256 couleurs
" pour un term en guicolors

if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif
if( has("termguicolors"))
    set termguicolors
endif
"let &t_8f = "\<Esc>[38:2:%lu:%lu:%lum"
"let &t_8b = "\<Esc>[48:2:%lu:%lu:%lum"


" }}}
"
" Réglage du Terminal interne {{{
tnoremap <Esc> <C-\><C-n>

" }}}

" Statusline -------------- {{{
" Réglages remachinés par vim-airline
" affiche la barre de status, même si il y a une seule fenêtre
set laststatus=2
"nomfichier - typefichier - longueurfichier %= longeurfichierenpourcent - ligne/caractere
set statusline=%f
set statusline+=\ -\
set statusline+=%y
set statusline+=\ -\
set statusline+=Length:
set statusline+=%L
set statusline+=%=
set statusline+=%p
set statusline+=p
set statusline+=\ -\
set statusline+=%l
set statusline+=/
set statusline+=%c
" }}}

" Comportement de l'écran ----------- {{{
syntax on "syntaxe
syntax enable
set title "affiche le titre
set number "affiche le nombre de ligne
set ruler "affiche la position du curseur
set wrap "crée une ligne virtuelle quand la ligne est trop longue
set mouse= "desactive l'utilisation de la souris
set scrolloff=3 "laisse 3 lignes quand on scroll
set virtualedit=block "cases virtuelles block ou all suivant l'humeur

"A regler pour nux ou suivant le terminal
set background=dark
colorscheme codedark
"let g:lighline = { 'colorscheme' : 'palenight' }
"let g:palenight_terminal_italics=1


"pour voir la colonne 80
"highlight ColorColumn ctermbg=1
"call matchadd('ColorColumn', '\%81v', 100)
" }}}

" Comportement des recherches ------------- {{{
set ignorecase "ignorer la case pour les recherches
set smartcase "si il y a une case dans la recherche, la case n'est pas ignor?e
set incsearch "commence la recherche avant la fin
set hlsearch "surligne la recherche
" }}}

" Bells --------------------- {{{
set novisualbell "flash l'écran pendant une bells
set noerrorbells "desactive les bells sonores
" }}}

" Comportement d'Edition -------------- {{{
set backspace=indent,eol,start "permet d'effacer les indentations, les fin de lignes et les starts avec
" le backspace
set cpoptions+=$ "mode c interactif
" }}}

" Comportement du Command Mode ----------- {{{
set wildmenu "autocomplétions des commandes
set wildignore=*.o,*#,*~,*.dll,*.so,*.a "ignore les fichiers inutiles dans le wildmenu
set wildmode=full "tout le wildmenu
" }}}

" Templates --------------- {{{
augroup template_tex
	autocmd!
	"Ajoute un template sur linux, faut que je vois pour le rendre
	"interropérable
	"autocmd BufNewFile *.tex 0r ~/.vim/templates/tex.tex
augroup END
" }}}

" Comportement GUI ---------- {{{
"Plusieur choix...
"set guifont=liberation_mono:h12:b:cANSI
"set guifont=Lucida_Console:h12:cANSI
"set guifont=Consolas:h12:cANSI
"set guifont=Hack:h12:b:cANSI
"set guifont=DejaVu_Sans_Mono:h12:b:cANSI
set guifont=Meslo_LG_S_DZ:h12:b:cANSI

"set antialias "seulement sur mac os en terminal ?
" }}}

" """"""""""""
" PLUGINS
" """"""""""""
" Better White Space ---------- {{{
" Permet de supprimer les espces en trop sur les lignes
nnoremap <leader>fws :StripWhitespace<CR>
" }}}

" Rainbow Toggle -------------- {{{
let g:rainbow_active = 1

let g:rainbow_conf = {
	\	'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
	\	'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
	\	'operators': '_,_',
	\	'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
	\	'separately': {
	\		'*': {},
	\		'tex': {
	\			'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
	\		},
	\		'lisp': {
	\			'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
	\		},
	\		'vim': {
	\			'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
	\		},
	\		'html': {
	\			'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
	\		},
	\		'css': 0,
	\	}
	\}
" }}}

" UltiSnips {{{
let g:UltiSnipsListSnippets="<c-tab>"
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="context"

let g:UltiSnipsSnippetDirectories=[$HOME.'/.config/nvim/generalUltiSnips']

let g:UltiSnipsUsePythonVersion=3
" }}}

" DelimitMate {{{
augroup delimit_mate_tex
    autocmd!
    autocmd FileType tex let b:loaded_delimitMate=1
augroup END
" }}}

" Source Explorer {{{
let g:SrcExpl_jumpKey="<ENTER>"
let g:SrcExpl_gobackKey="<SPACE>"
let g:SrcExpl_winHeight = 8
let g:SrcExpl_pluginList = [
\ "__Tag_List__",
\ "_NERD_tree_",
\ "Source_Explorer"
\ ]

" }}}

" Tag List {{{
let g:Tlist_Use_Right_Window = 1
" }}}

" fzf ----- {{{
set rtp+=~/.fzf
nnoremap <leader>F :FZF<CR>
" --------- }}}


"Active tlist et source explorer
"en appuyant sur F8
"nnoremap <F8> :NERDTreeToggle<CR>:TlistToggle<CR>:SrcExplToggle<CR>
nnoremap <F8> :TlistToggle<CR>:SrcExplToggle<CR>

" ----------- coc {{{
set updatetime=300
set shortmess+=c

inoremap <silent><expr> <c-space> coc#refresh()

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

nmap <leader>rn <Plug>(coc-rename)

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings using CoCList:
" Show all diagnostics.
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>
"  ---- }}}

" Nerdcommenter ------- {{{
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDCustomDelimiters = { 'c': {'left':'/**', 'right':'*/'}}
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1
" ----- }}}}

" """"""""""""
" MAPPING
" """"""""""""
" Mapping Général ----------- {{{

"quitte un mode avec ,,
noremap ,, <esc>
inoremap ,, <esc>
inoremap <esc> <nop>
"

"ouvre et source vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>


" copier/coller en dehors de vim
noremap <c-c> "+y
noremap <c-p> "+gP

" H = 0 et L = $
nnoremap H 0
nnoremap L $
vnoremap H 0
vnoremap L $

" ligne virtuelles se comportent comme des lignes normales
nnoremap k gk
nnoremap j gj

" supprime l'appel automatique au mode "Ex"
nnoremap Q <nop>
" supprime ZZ, ZQ qui quittent vim
noremap ZZ <nop>
noremap ZQ <nop>


" }}}

" Latex (et un peu .txt) ------------ {{{
let g:tex_flavor = "latex"
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'
"autogroup pour les .tex et .txt, ce sont les même car le contenu est similaire.
augroup tex_txt_options
	autocmd!
	autocmd BufNewFile,BufRead *.tex setlocal textwidth =105
	autocmd BufNewFile,BufRead *.txt setlocal textwidth =105
	autocmd BufNewFile,BufRead *.tex iabbrev aps pas
	autocmd BufNewFile,BufRead *.tex iabbrev uen une
	autocmd BufNewFile,BufRead *.tex iabbrev ets est
	autocmd BufNewFile,BufRead *.txt iabbrev aps pas
	autocmd BufNewFile,BufRead *.txt iabbrev uen une
	autocmd BufNewFile,BufRead *.txt iabbrev ets est
augroup END


"augroup pour les balises tex.
" augroup tex_map
" 	autocmd!
" 	autocmd BufNewFile,BufRead *.tex inoremap <localleader>tit \title{}<left>
" 	autocmd BufNewFile,BufRead *.tex inoremap <localleader>dat \date{}<left>
" 	autocmd BufNewFile,BufRead *.tex inoremap <localleader>aut \author{}<left>
" 	autocmd BufNewFile,BufRead *.tex inoremap <localleader>S \section{}<left>
" 	autocmd BufNewFile,BufRead *.tex inoremap <localleader>sS \subsection{}<left>
" 	autocmd BufNewFile,BufRead *.tex inoremap <localleader>ssS \subsubsection{}<left>
" 	autocmd BufNewFile,BufRead *.tex inoremap <localleader>P \paragraph{}<left>
" 	autocmd BufNewFile,BufRead *.tex inoremap <localleader>sP \subparagraph{}<left>
" 	autocmd BufNewFile,BufRead *.tex inoremap <localleader>par \part{}<left>
" 	autocmd BufNewFile,BufRead *.tex inoremap <localleader>chap \chapter{}<left>
" 	autocmd BufNewFile,BufRead *.tex inoremap <localleader>app \appendix<Esc>o
"
" 	autocmd BufNewFile,BufRead *.tex inoremap <localleader>itm \begin{itemize}<Esc>o\item<Esc>o\end{itemize}<Esc>k$a
" 	autocmd BufNewFile,BufRead *.tex inoremap <localleader>enm \begin{enumerate}<Esc>o\item<Esc>o\end{enumerate}<Esc>k$a
" 	autocmd BufNewFile,BufRead *.tex inoremap <localleader>des \begin{description}<Esc>o\item[]<Esc>o\end{description}<Esc>k$i
"
" 	autocmd BufNewFile,BufRead *.tex inoremap <localleader>qote \begin{quote}<Esc>o\item<Esc>o\end{quote}<Esc>ka
" 	autocmd BufNewFile,BufRead *.tex inoremap <localleader>qota \begin{quotation}<Esc>o\item<Esc>o\end{quotation}<Esc>ka
" 	autocmd BufNewFile,BufRead *.tex inoremap <localleader>vers \begin{verse}<Esc>o<Esc>o\end{verse}<Esc>ka
"
" 	autocmd BufNewFile,BufRead *.tex inoremap <localleader>fig \begin[]{figure}<Esc>o<Esc>o\end{figure}<Esc>ka
" 	autocmd BufNewFile,BufRead *.tex inoremap <localleader>lsfig \listoffigures
" 	autocmd BufNewFile,BufRead *.tex inoremap <localleader>lstabl \listoftables
" 	autocmd BufNewFile,BufRead *.tex inoremap <localleader>tabl \begin[]{table}<Esc>o<Esc>o\end{table}<Esc>ka
"
" 	autocmd BufNewFile,BufRead *.tex inoremap <localleader>cent \begin{center}<Esc>o<Esc>o\end{center}<Esc>ka
" 	autocmd BufNewFile,BufRead *.tex inoremap <localleader>flet \begin{flushleft}<Esc>o<Esc>o\end{flushleft}<Esc>ka
" 	autocmd BufNewFile,BufRead *.tex inoremap <localleader>frit \begin{flushright}<Esc>o<Esc>o\end{flushright}<Esc>ka
"
" 	autocmd BufNewFile,BufRead *.tex inoremap <localleader>verb \begin{verbatim}<Esc>o<Esc>o\end{verbatim}<Esc>ka
" 	autocmd BufNewFile,BufRead *.tex inoremap <localleader>verb* \begin{verbatim*}<Esc>o<Esc>o\end{verbatim*}<Esc>ka
" 	autocmd BufNewFile,BufRead *.tex inoremap <localleader>dmat \begin{displaymath}<Esc>o<Esc>o\end{displaymath}<Esc>ka
" 	autocmd BufNewFile,BufRead *.tex inoremap <localleader>tabb \begin{tabbing}<Esc>o<Esc>o\end{tabbing}<Esc>a
"
" 	autocmd BufNewFile,BufRead *.tex inoremap <localleader>em \emph{}<left>
" 	autocmd BufNewFile,BufRead *.tex inoremap <localleader>rm \textrm{}<left>
" 	autocmd BufNewFile,BufRead *.tex inoremap <localleader>sf \textsf{}<left>
" 	autocmd BufNewFile,BufRead *.tex inoremap <localleader>md \textbf{}<left>
" 	autocmd BufNewFile,BufRead *.tex inoremap <localleader>bf \textbf{}<left>
" 	autocmd BufNewFile,BufRead *.tex inoremap <localleader>up \textup{}<left>
" 	autocmd BufNewFile,BufRead *.tex inoremap <localleader>tt \texttt{}<left>
" 	autocmd BufNewFile,BufRead *.tex inoremap <localleader>it \textit{}<left>
" 	autocmd BufNewFile,BufRead *.tex inoremap <localleader>sl \textsl{}<left>
" 	autocmd BufNewFile,BufRead *.tex inoremap <localleader>st \textsc{}<left>
"
" 	autocmd BufNewFile,BufRead *.tex inoremap <localleader>fn \footnote{}<left>
" 	autocmd BufNewFile,BufRead *.tex inoremap <localleader>mp \marginpar{}<left>
" 	autocmd BufNewFile,BufRead *.tex inoremap <localleader>nl \\<Esc>o
"
" 	autocmd BufNewFile,BufRead *.tex inoremap <localleader>mt \maketitle
" 	autocmd BufNewFile,BufRead *.tex inoremap <localleader>tof \tableofcontents
" 	autocmd BufNewFile,BufRead *.tex inoremap <localleader>pstyle \pagestyle{}<left>
" 	autocmd BufNewFile,BufRead *.tex inoremap <localleader>labl \label{}<left>
" 	autocmd BufNewFile,BufRead *.tex inoremap <localleader>ref \ref{}<left>
" 	autocmd BufNewFile,BufRead *.tex inoremap <localleader>pref \pref{}<left>
" 	"guillemets français
" 	autocmd BufNewFile,BufRead *.tex inoremap << «
" 	autocmd BufNewFile,BufRead *.tex inoremap >> »
" augroup END
" }}}

" HTML --------------- {{{
augroup html
	autocmd!
    " ne wrap pas sur les fichiers html
	autocmd BufNewFile,BufRead *.html setlocal nowrap
    " supprime une taille max de ligne
	autocmd BufNewFile,BufRead *.html setlocal textwidth=0
    " Handle vue files
    autocmd BufNewFile,BufRead *.vue setlocal filetype=vue
augroup END

" }}}

" TSX --------------- {{{
augroup html
	autocmd!
    " change le filetype pour le tsx
	autocmd BufNewFile,BufRead *.tsx setlocal filetype=javascript
augroup END

" }}}

" C/C++ ---------------- {{{
augroup C_Cpp
	autocmd!
	autocmd FileType c nnoremap <buffer> <localleader>co I//<Esc>
	autocmd FileType cpp nnoremap <buffer> <localleader>co I//<Esc>
	autocmd FileType c vnoremap <buffer> <localleader>co I//<Esc>
	autocmd FileType cpp vnoremap <buffer> <localleader>co I//<Esc>
	autocmd FileType c nnoremap <buffer> <localleader>htoc g_xo{<Esc>o}<Esc>
	autocmd FileType cpp nnoremap <buffer> <localleader>htoc g_xo{<Esc>o}<Esc>
	"a continuer : mapping pour transformer une déclaration en définition
	"enlève le ; final et ajoute { } à la ligne mais dans le mode visual
	"peut être qu'il y a des plugins qui font ça mieux que moi...
augroup END
" }}}

" VIM --------------- {{{
augroup vim_autocmd
	autocmd!
	autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}

" Markdown ----------- {{{
augroup markdown
	autocmd!
	autocmd BufNewFile,BufRead *.markdown setlocal textwidth=100
	autocmd BufNewFile,BufRead *.markdown setlocal expandtab
	autocmd BufNewFile,BufRead *.markdown setlocal tabstop=4
	autocmd BufNewFile,BufRead *.markdown setlocal shiftwidth=4

	"guillemets français
	autocmd BufNewFile,BufRead *.markdown inoremap << «
	autocmd BufNewFile,BufRead *.markdown inoremap >> »
augroup END
" }}}

" Assembleur -------- {{{

augroup nasm
    autocmd!
    autocmd FileType asm setlocal filetype=nasm
augroup END

" }}}

" Python -------- {{{
augroup python
    autocmd!
    autocmd FileType python setlocal foldmethod=indent
    autocmd FileType python setlocal foldlevel=99
    autocmd FileType python setlocal tabstop=4
    autocmd FileType python setlocal softtabstop=4
    autocmd FileType python setlocal shiftwidth=4
    autocmd FileType python setlocal textwidth=79
    autocmd FileType python setlocal expandtab
    autocmd FileType python setlocal autoindent
    autocmd FileType python setlocal fileformat=unix
augroup END
" }}}

" YAML -------- {{{
augroup yaml
    autocmd!
    autocmd FileType yaml setlocal tabstop=2
    autocmd FileType yaml setlocal shiftwidth=4
augroup END
" }}}
