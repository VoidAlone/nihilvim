local ls = require('luasnip')
require("luasnip.loaders.from_vscode").load({
    paths = {"./snippets/",}
})
require('luasnip.loaders.from_vscode').lazy_load()
ls.filetype_extend('cpp', {'unreal'})
