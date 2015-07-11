" .exrc for Holly
" Comments refer to the line below them
"
" shortcut for turning wrapped text into paragraphs
:map Q !}fmt
:set columns=80
" change the tabstop below if you don't like the default (which is 8 spaces)
" if you change tabstop it will change how it behaves in response to pressing
" the tab key, and how it *appears* to you, regardless of how it was written.
" This way, you can use 4, someone else can use 8, and the file will look
" right to both of you (the file itself will conform to the local settings of
" the reader).
:set tabstop=4       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.
":set shiftwidth=4    " Indents will have a width of 4 
":set softtabstop=4   " Sets the number of columns for a TAB set
":set expandtab       " Expand TABs to spaces, DON'T DO THIS

" show what line/column I am on
:set ruler
" show matching parentheses and braces
:set showmatch
:set scrolloff=3
:iabbr NULL $^{-/-}$
" don't yell at me when I mess up
:set visualbell
" syntax highlighting
syntax on
" let vi figure out the filetype so it knows how to apply highlighting
filetype plugin on
au BufRead,BufNewFile *.ino set filetype=arduino
"
" for encoding issues with Windows-produced files and Japanese 
"
:set enc=utf-8
:set fenc=utf-8
":set fencs=iso-2022-jp,euc-jp,cp932
"
" LaTeX customization below
"
" shortcut for inserting my own citation style in to LaTeX documents
:abbr CITE \mycite{}{}hhi 
" for LaTeX, makes all lists single-spaced rather than the default double
:abbr IIII \begin{packed_item}\end{packed_item}kA
:abbr EEEE \begin{packed_enum}\end{packed_enum}kA
:abbr DDDD \begin{packed_desc}\end{packed_desc}kA
:autocmd BufRead *.lyx set syntax=lyx foldmethod=syntax foldcolumn=3
:autocmd BufRead *.lyx syntax sync fromstart
