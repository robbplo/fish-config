# Starship prompt
starship init fish | source

set -gx EDITOR (which nvim)

source ~/.asdf/asdf.fish

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"


# Abbreviations
## Navigation
abbr -a -- cc cd\ \(find\ \~/\ -type\ d\ -regex\ \'^\[^\\.\]+\$\'\ \|\ fzf\)
abbr -a -- p cd\ \(find\ \~/projects\ -maxdepth\ 2\ -type\ d\ -regex\ \'^\[^\\.\]+\$\'\ \|\ fzf\)
abbr -a -- cf 'cd (find ~/.config -maxdepth 1 -type d | fzf) && nvim'

## Git
abbr -a -- ga 'git add'
abbr -a -- gc 'git commit'
abbr -a -- gcam 'git commit -am'
abbr -a -- gco 'git checkout'
abbr -a -- gcp 'git cherry-pick'
abbr -a -- gm 'git merge'
abbr -a -- nah 'git reset --hard'
abbr -a -- mr 'glab mr view -w'
abbr -a -- pr 'gh pr checkout'

## Programs
abbr -a -- sail 'bash vendor/bin/sail'
abbr -a -- art 'php artisan'
abbr -a -- doco docker-compose

## Utility
abbr -a -- a 'wl-paste >'
abbr -a -- yt 'youtube-dl -x --audio-format mp3'
abbr -a -- mixwatch inotifywait\ -rmq\ --include\ \'\\.\(exs\?\|lua\)\$\'\ -e\ modify\ .\ \|\ mix\ test\ --stale\ --listen-on-stdin
