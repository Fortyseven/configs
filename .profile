# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
        . "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ]; then
    PATH="$HOME/bin:$HOME/bin/ai:$HOME/bin/video:$HOME/bin/ai/llm-scripts:$HOME/.cargo/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ]; then
    PATH="$HOME/.local/bin:$PATH"
fi

if [ -d "$HOME/opt" ]; then
    PATH="$HOME/opt:$PATH"
fi

. ~/.prompt.sh

alias vim="~/bin/nvim"
alias du2="ncdu --color dark -x --exclude .git --exclude node_modules --si"
alias detox="detox -v"
alias mmdc="npx -p @mermaid-js/mermaid-cli mmdc"
alias 010="wine '/mnt/c/Program Files/010 Editor/010Editor.exe'"
alias iv="wine ~/.wine/drive_c/apps/iv/i_view32.exe"
alias ls="exa  --octal-permissions --group-directories-first -sextension --git"
alias lsd="lsd -gXFN --header"
alias df2="duf -hide loops,fuse,special"
alias du3="dust -D -d1"

# ---------------

# alias go-blog="clear && cd ~/dev/n47/network47.org && code ."
alias cls='printf "\033c"'
alias xclip-forreal='xclip -selection clipboard'
alias gopy='. ./.venv/bin/activate'
alias gopy2='. ./venv/bin/activate'
alias goconda='conda activate `basename $PWD`'
alias mdless='frogmouth'
alias audio-restart='pulseaudio -k && sudo alsa force-reload'
alias pass='~/bin/keepass /cloud/nextcloud/_Backups/Junk.kdbx'
alias hexdump="xxd -g 1 -a -c 32"
alias twitch-chat='chatterino'
alias ??='gh copilot suggest -t shell'
alias ??explain='gh copilot explain'
# alias ol_describe_image="ollama run bakllava:latest Describe this video game screenshot for a blind man: "
# alias llm-llama="llm -m 'llama3.1'"
alias ol_serve="OLLAMA_FLASH_ATTENTION=1 OLLAMA_KV_CACHE_TYPE=q4_0 OLLAMA_ORIGINS='*' OLLAMA_HOST=0.0.0.0 OLLAMA_CONTEXT_LENGTH=65535 /usr/bin/ollama serve"
alias ol_serve_no_fa="OLLAMA_ORIGINS='*' /usr/bin/ollama serve"
alias ol_serve_debug="OLLAMA_DEBUG=1 OLLAMA_ORIGINS='*' OLLAMA_CONTEXT_LENGTH=65535 /usr/bin/ollama serve"
alias chterm_gnome="sudo update-alternatives --config x-terminal-emulator"
alias vite-starter="npm create vite@latest"
alias dump-vscode-ext="code --list-extensions | xargs -L 1 echo ext install"
alias v3d="/usr/bin/f3d"
alias vimg="qimgv"
alias flush-dns="sudo resolvectl flush-caches"
alias meme="find ~/Pictures/memes/ |  fzf --preview='catimg -l -w 64 -H 64 {}' | xclip -selection clipboard"
alias yt-subtitles="yt-dlp --write-auto-subs --skip-download --convert-subs srt"
alias sgrep="~/bin/ai/sgrep/sgrep -model_path /models/googlenews/GoogleNews-vectors-negative300.bin -C 4 -n"
alias rdp="remmina"
alias pushtemp="cd $(mktemp -d)"
alias ipinfo='f() { curl "ipinfo.io/$1"; }; f'
alias mister_ssh="ssh -o PreferredAuthentications=password -o PubkeyAuthentication=no root@192.168.50.217"
alias weather="curl https://wttr.in/06457"
alias ssh-pw="ssh -o PreferredAuthentications=password -o PubkeyAuthentication=no"
#eval "$(github-copilot-cli alias -- "$0")"

alias twitch_getuser="twitch api get users -q login=$1"

vidsmooth60() {
    ffmpeg -i $1 -filter:v "minterpolate='fps=60':scd=0" $1.smooth60.webm
}
vidsmooth120() {
    ffmpeg -i $1 -filter:v "minterpolate='fps=120':scd=0" $1.smooth120.webm
}

#export PAGER="most"
export EDITOR="/usr/bin/nvim"
export GIT_EXTERNAL_DIFF=difft

# export QT_STYLE_OVERRIDE=kvantum

source ~/dev/wp-completion.bash

# export ROKU_HOST=192.168.50.92

export PATH=$PATH:/usr/local/go/bin

export STEAM_COMPAT_DATA_PATH=/home/fortyseven/.local/share/Steam/steamapps/compatdata
export STEAM_COMPAT_CLIENT_INSTALL_PATH=/home/fortyseven/.steam/steam

boop() {
    local last="$?"
    if [[ "$last" == '0' ]]; then
        spd-say ok -p 100 -r 20 # good
    else
        spd-say shit -p -100 -R -100 #bad
    fi
    $(exit "$last")
}

. "/home/fortyseven/.deno/env"

export PATH=$PATH:~/go/bin

neofetch --ascii "$(fortune | cowsay -e oO -W 25)"

echo
