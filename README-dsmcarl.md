* from old install did not load:

    use { "andythigpen/nvim-coverage", commit = "4634dfb00961a86948518c7e6f85737c24364308", requires = "nvim-lua/plenary.nvim", config = function() require("coverage").setup() end, }
    or
    require'luasnip.loaders.from_snipmate'.load()

# Changes

* added Pipfile as a project detection pattern
* added buffer navigation keymaps 
