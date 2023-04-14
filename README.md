This repo houses the neovim config that I use, most all of it is Lua except for Ideavim.vim which is for configuration of jetbrains IDEs vim plugin and vsvim.vim which is for the Visual Studio plugin.

keybinds between neovim, jetbrains and visual studio ides should be very similar for what is supported. Major items currently lacking support are
- Git Hunk commands

# Instructions
clone into `~/.config/nvim`

run command `cp -r ~/.config/nvim/site ~/.local/share/nvim/`

open neovim and `:PlugInstall` and `:MasonUpdate`

run `:checkhealth` - correct any issues with the system (language installs that are not available or the correct version).

close and reopen then `:Mason`, install the language servers that you would like. This might require other components to be installed on the system.

## IntellIJ IDEA 
open IDEA and install the jetbrains vim plugin.

in the bottom left of the IDE once the plugin is installed, should be a vim logo. Clicking on this will bring up a menu where you can select to edit the .ideavim config file.

Copy and paste the contents of ideavim.vim into this file.

Restart IDEA to have the changes take effect

## Visual Studio
open Visual studio and install the VsVim and VsNerdX plugins. Copy the vsvim.vim file from this repo `${WINDOWS_HOME_DIR}/vimfiles/.vsvimrc`.

Restart visual studio
