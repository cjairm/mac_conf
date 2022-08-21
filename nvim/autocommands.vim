""For IDE - easymotion
let mapleader=" "                  

"Space + s => search for letter
nmap s <Plug>(easymotion-overwin-f2)

"Space + m => to open menu 
nmap <Leader>m :NERDTreeFind<CR>

"Space + e => to Navigate into files
nmap <Leader>e :e. <CR>

"Space + l => Go Next Buffer
nmap <Leader>l :bn<CR>

"Space + h => Go Prev Buffer
nmap <Leader>h :bp<CR>

"Space + i => Prettier
nmap <Leader>i <Plug>(Prettier)

"Space + r => copy relative path
map <Leader>r :let @+ = expand("%")<CR>

"Space + t => copy full path
map <Leader>t :let @+ = expand("%:p")<CR>

"Space + y => clear search
map <leader>y :noh<CR>

"Fuzzy find
nnoremap <C-p> :FZF<CR>
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit'
  \}

let $FZF_DEFAULT_COMMAND = 'ag -g ""'
