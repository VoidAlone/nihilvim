Some quick layout stuff
``` bash
.
└── lua
    ├── config
    │   ├── dap
    │   │   └── adapters #this is where I keep individual profiles for my debug adapters
    │   ├── lsp
    │   ├── snacks
    │   ├── themes
    │   └── utility
    ├── core
    └── plugins
        ├── dap
        ├── lsp
        ├── themes
        ├── utility
        ├── visual
        └── writing
```
## Core Directory

Used for basic setup. General LSP settings, Lazy Package Manager, a few keybinds, and some options.

## Plugins

This is where all of my plugins go in accordance with how Lazy expects. I have a few subdirectories for categories, but those directories have to be specified in the `../core/lazy.lua` file

## Config

My config directory is laid out similarly to my plugins directory just for ease of navigation. I have utilities, LSP, and DAP as main directories. LSP is for thinks like blink.cmp, conform, and lsp-config. The recent API change has somewhat deprecated the lsp-config, but it still provides sane defaults. I use the correct API in my lsp-config.lua file.

lsp-config.lua is used to set specific settings for a given language server, but beyond that, all you really need to do is enable the language server you want.

To check if a language server is available (installed on your system, preferably with your package manager or alternatively with Mason) you can do `:echo executable('clangd')` for example. If it prints 1, neovim can see your lsp. You can also do `:LspInfo` to see if your language server is up and running.

# NOTE

There's a little bit of inconsistency in my layout as I've learned things, but generally speaking the layout is solid. Some plugins, I just configure directly in the "opts" field if a plugin supports it. Otherwise, I'll set up a config file in my config directory.
