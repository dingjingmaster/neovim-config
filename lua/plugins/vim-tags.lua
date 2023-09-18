return {
    "r-hata/tags-generator.vim",
    config = function ()
        local G = require('G')
        G.cmd([[
            let curDir = expand('%:p:h')
            let name = substitute(curDir, '/', '_', 'g')
            let tagFile = '~/.cache/tags/ctag' . name . '.tags'
            let g:tags_command = 'ctags --sort=yes --extras=+fFgpqrs --c-kinds=+px --fields=+aCeEfFikKlmnNpPrRsStxzZ --if0=yes --output-format=e-ctags --tag-relative=never -R -o ~/.cache/tags/ctag' . name . '.tags'
            let g:gtags_command = g:tags_command
            augroup ctagsCmd
                autocmd VimEnter * execute 'GenerateTags'
                autocmd VimEnter * execute 'set tags=' . tagFile
            augroup END
            " autocmd BufWritePost * call system(g:tags_command)
            autocmd BufWritePost * execute 'GenerateTags'
        ]])
    end
}
