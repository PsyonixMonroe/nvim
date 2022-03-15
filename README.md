This repo houses the neovim config that I use, most all of it is Lua except for Ideavim.vim which is for configuration of jetbrains IDEs vim plugin.

keybinds between neovim and jetbrains ides should be very similar for what is supported. Major items currently lacking support are
- Git Hunk commands

# Instructions
clone into `~/.config/nvim`

open neovim and `:PlugInstall`

run `:checkhealth` - correct any issues with the system (language installs that are not available or the correct version).

close and reopen then `:LspInstallInfo`, install the language servers that you would like. This might require other components to be installed on the system.

