"" Syntaxhervorhebung
syntax on

"" Farbschema
"" weitere Schemata sind im Verzeichnis /usr/local/share/vim/vim63/colors/ aufgelistet
"colorscheme darkblue
"colorscheme two2tango
colorscheme jellybeans

""Zeilennumerirung
set number
set list

"" immer die Statuszeile mit dem Dateinamen anzeigen
set ls=2

"" automatischer Zeilenumbruch, wenn die Zeile zu lang ist
set wrap
" set nowrap

""Highlighting search matche
set hlsearch
""Show the next match while entering a search
set incsearch

"" Suchfunktion ignoriert Groß- und Kleinschreibung
set ignorecase

"" Kompatibilitätsmodus zu vi abschalten
set nocompatible

""auschließen des vi-conf-files
set noexrc

set noerrorbells "nicht piepsen, wenn man an Textbegrenzungen anstößt o.ä.
"set showcmd

"set showmode

""Zeile und Spalte anzeigen
set ruler

"filetype plugin indent on
"" Wieviele Leerzeichen lang ist ein Tabulator?
set tabstop=2
"" Ersetze Tabulatoren durch Leerzeichen
set expandtab
"" Einrückungstiefe
set shiftwidth=2
"" alternative Einrückungsstile
set autoindent
" set smartindent

"" zeigt beim Schließen von Klammern kurz an, wo sie geöffnet wurde
set showmatch

" let g:airline_theme = 'powerlineish'
" if !exists('g:airline_powerline_fonts')
"    " Use the default set of separators with a few customizations
"    let g:airline_left_sep=' ›'  " Slightly fancier than '>'
"    let g:airline_right_sep='‹ ' " Slightly fancier than '<'
"endif

" Environment
"set directory=$XDG_CACHE_HOME/vim,~/,/tmp
"set backupdir=$XDG_CACHE_HOME/vim,~/,/tmp
"set viminfo+=n$XDG_CACHE_HOME/vim/viminfo
"set runtimepath=$XDG_CONFIG_HOME/vim,$XDG_CONFIG_HOME/vim/after,$VIM,$VIMRUNTIME
"let $MYVIMRC="$XDG_CONFIG_HOME/vim/vimrc"

