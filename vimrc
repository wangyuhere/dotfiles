set autoread
set autowrite     " Automatically :write before running commands
set backspace=2   " Backspace deletes like most programs in insert mode
set clipboard=unnamed " Use system clipboard for every yank
set colorcolumn=+1
set completeopt-=preview  " Disable auto complete preview window
set expandtab
set history=50
set incsearch     " do incremental searching
set laststatus=2  " Always display the status line
set lazyredraw
set list listchars=tab:»·,trail:·,nbsp:·
set mouse=a
set nobackup
set nocompatible
set noswapfile
set nowritebackup
set number
set numberwidth=5
set relativenumber
set ruler         " show the cursor position all the time
set ttyfast
set shiftround
set shiftwidth=2
set showcmd       " display incomplete commands
set spell
set splitbelow
set splitright
set tabstop=2
set textwidth=80
set visualbell
set wildmode=list:longest,list:full

source ~/.vimrc.bundles

let mapleader=" "
if exists('$TMUX')
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_SR = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=2\x7\<Esc>\\"
else
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_SR = "\<Esc>]50;CursorShape=2\x7"
end
let g:airline#extensions#tabline#enabled=1
let g:ctrlp_user_command=[".git/", "git --git-dir=%s/.git ls-files -oc --exclude-standard"]
let g:jsx_ext_required = 0
let g:neocomplete#enable_at_startup=1
let g:rspec_command="!bundle exec rspec {spec}"
let g:syntastic_check_on_open=1
let g:syntastic_eruby_ruby_quiet_messages={"regex": "possibly useless use of a variable in void context"}
let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute \"ng-"]
let g:syntastic_javascript_checkers=["eslint"]

let backgroundcolor=$COLOR_THEME
execute "set background=".backgroundcolor

colorscheme solarized
runtime macros/matchit.vim
filetype plugin indent on

" Tab completion
" will insert tab at beginning of line,
" will use completion if not at beginning
function! InsertTabWrapper()
  let col = col('.') - 1
  if !col || getline('.')[col - 1] !~ '\k'
    return "\<tab>"
  else
    return "\<c-n>"
  endif
endfunction

" Reserve status after run a command
function! Preserve(command)
  " Preparation: save last search, and cursor position.
  let _s=@/
  let l = line(".")
  let c = col(".")
  " Do the business:
  execute a:command
  " Clean up: restore previous search history, and cursor position
  let @/=_s
  call cursor(l, c)
endfunction

autocmd FileType go set noexpandtab
autocmd FileType go set nolist

inoremap <S-Tab> <c-n>
inoremap <Tab> <c-r>=InsertTabWrapper()<cr>
map  _/ <Plug>(easymotion-sn)
map , <Plug>(easymotion-prefix)
map <C-a> GVgg
map <C-n> :NERDTreeToggle<CR> " NERDtree
map <C-b> :copen<CR>
map <C-y> :cclose<CR>
map <Leader>1 1gt
map <Leader>2 2gt
map <Leader>3 3gt
map <Leader>4 4gt
map <Leader>ct :!ctags -R .<CR>
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
nmap <F8> :TagbarToggle<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-l> :wincmd l<CR>
nmap _$ :call Preserve("%s/\\s\\+$//e")<CR>  " remove trailing spaces
nmap _= :call Preserve("normal gg=G")<CR>  " format the whole file
nnoremap <Down> :cnext<CR>
nnoremap <Leader><Leader> <c-^>  " switch last two files
nnoremap <Leader>b :CtrlPBuffer<CR>
nnoremap <Leader>l :call RunLastSpec()<CR>
nnoremap <Leader>r :w<CR>
nnoremap <Leader>s :call RunNearestSpec()<CR>
nnoremap <Leader>t :call RunCurrentSpecFile()<CR>
nnoremap <Up> :cprevious<CR>
nnoremap g. g;
xnoremap <  <gv
xnoremap >  >gv

if filereadable($HOME . "/.vimrc.local")
  source ~/.vimrc.local
endif

