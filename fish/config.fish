source /usr/share/cachyos-fish-config/cachyos-config.fish

# overwrite greeting
# potentially disabling fastfetch
#function fish_greeting
#    # smth smth
#end

# customizing pokemon-colorscripts and fastfetch on launch 
pokemon-colorscripts -r --no-title >/tmp/random-pokemon.txt

# Show fastfetch only in Konsole or WezTerm
if set -q KONSOLE_VERSION
    fastfetch
else if test "$TERM_PROGRAM" = WezTerm
    fastfetch
end

# enabling vim mode in fish shell
set -Ux EDITOR nvim

# adding aliases - himanshu
alias c='clear'
alias q='exit'
alias y='yazi'
alias hist='history | tac'
alias t='touch'
alias m='mkdir'
alias v='nvim'
alias vim='nvim'
alias cat='bat'

# typing practice
alias typing="tukai"

alias anime='fastanime --icons --preview --fzf anilist'

alias ew='nvim ~/.config/wezterm/wezterm.lua'

alias ed='nvim ~/.config/fish/config.fish'
alias done='source ~/.config/fish/config.fish'

# clearing history
alias chist='rm ~/.local/share/fish/fish_history;'

# enabling vim mode 
set -g fish_key_bindings fish_vi_key_bindings

set -x LIBVIRT_DEFAULT_URI qemu:///system

# initializing conda 
alias ac='source ~/miniconda3/etc/fish/conf.d/conda.fish'
starship init fish | source
