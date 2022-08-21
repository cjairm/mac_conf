""For IDE - easymotion
let mapleader=" "                  

"Space + s
nmap <Leader>s <Plug>(easymotion-s2)                    

"Space + m => to open menu 
nmap <Leader>m :NERDTreeFind<CR>

"Space + w => to save
nmap <Leader>w :w<CR>

"Space + q => to quit
nmap <Leader>q :q<CR>

"Space + e => to Navigate into files
nmap <Leader>e :e. <CR>

"Space + tc => Create new tab
nmap <Leader>tc :tabe<CR>

"Space + tn => Go Next Tab
nmap <Leader>tn :tabn<CR>

"Space + tp => Go Prev Tab
nmap <Leader>tp :tabp<CR>

"Space + l => Go Next Buffer
nmap <Leader>l :bn<CR>

"Space + h => Go Prev Buffer
nmap <Leader>h :bp<CR>

"Space + i => Prettier
nmap <Leader>i <Plug>(Prettier)

"Fuzzy find
nnoremap <C-p> :FZF<CR>
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit'
  \}

let $FZF_DEFAULT_COMMAND = 'ag -g ""'
