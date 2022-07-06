require("nvim-treesitter.configs").setup({
  -- A list of parser names, or "all"
  ensure_installed = "all",

  highlight = {
    -- `false` will disable the whole extension
    enable = true,

    -- NOTE: these are the names of the parsers and not the filetype. (for example if you want to
    -- disable highlighting for the `tex` filetype, you need to include `latex` in this list as this is
    -- the name of the parser)
    -- list of language that will be disabled
    disable = {},

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
  incremental_selection = {
    enable = true,
    keymaps = { -- mappings for incremental selection (visual mappings)
      -- node_incremental = "grn", -- increment to the upper named parent
      -- scope_incremental = "grc", -- increment to the upper scope (as defined in locals.scm)
      -- init_selection = 'gnn', -- maps in normal mode to init the node/scope selection
      -- node_decremental = "grm" -- decrement to the previous node
      -- init_selection = "<CR>",
      -- scope_incremental = "<CR>",
      node_incremental = "v",
      node_decremental = "V",
    },
  },
})

