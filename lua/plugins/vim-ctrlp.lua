return {
    "ctrlpvim/ctrlp.vim",
    config = function ()
        local G = require('G')
        G.cmd([[
        let g:ctrlp_working_path_mode = 'cra'
        set wildignore+=*/tmp/*,*.so,*.swp,*.zip    " 排除文件
        let g:ctrlp_custom_ignore = {
            \ 'dir':  '\v[\/]\.(git|hg|svn)$',
            \ 'file': '\v\.(exe|so|a|run|bak|dll)$',
            \ 'link': 'some_bad_symbolic_links',
            \ }
        ]])
    end
}
