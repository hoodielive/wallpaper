# Export

# local bin
export PATH=$HOME/.local/bin:$PATH

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Nim
export PATH=$HOME/.nimble/bin:$PATH

# Pretty Manpages.
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# Cargo/Rust
export PATH="/home/enilo/.cargo/bin:$PATH"

# Export the EDITOR and VISUAL envvars.
export EDITOR=nvim
export VISUAL=nvim

# Ruby
export PATH=/home/enilo/.local/share/gem/ruby/3.0.0/bin:$PATH

# Laravel
export PATH=~/.config/composer/vendor/bin:$PATH

# Eval
eval "$(starship init zsh)"

# Node
export PATH=~/.npm-global/bin:$PATH

# Aliases
alias mv="mv -v"
alias cp="cp -v"
alias nv="nvim"
alias cat="bat --plain"
alias sz="source ~/.zshrc"
alias oa="nvim ~/.aliases.zsh"
alias clones="cd ~/Clones"
alias gnv="cd ~/.config/nvim"
alias lnv="cd ~/.config/lvim"
alias purge="echo "" > $1"
alias lunar="cd ~/.local/share/lunarvim/lvim/lua/lvim"
alias gtc="cd ~/.config"
alias program="ssh enilo@programmer"
alias nvi="nvim"
#alias nvim="~/.local/bin/lvim"
alias themer="ls ~/.oh-my-zsh/themes"
alias dope="cd ~/Clones/dope"
alias dopel="ll ~/Clones/dope"
alias ll="exa --long --icons"
alias llg="exa --long --icons --git"
alias vlrst=clear
alias hl="highlight"
alias eve="eval $(ssh-agent -s)"
alias gitssh="ssh-add ~/.ssh/git_ecdsa && ssh -T git@github.com"
alias bitch="eve; gitssh"
alias eguntest="ssh-add ~/.ssh/egungun_ecdsa && ssh -T enilo@10.0.1.25"
alias egun="eve; eguntest"
alias nimcode="cd ~/Clones/nim/2023"
alias modc="cd ~/Clones/modernc/2023"
alias modrb="cd ~/Clones/modernruby/2023"
alias modcpp="cd ~/Clones/moderncpp/2023/"
alias modcs="cd ~/Clones/moderncsharp/2023"
alias modjs="cd ~/Clones/modernjs/2023"
alias modvue="cd ~/Clones/vue/2023"
alias modpy="cd ~/Clones/modernpy/2023"
alias modrs="cd ~/Clones/modernrs/2023"
alias modgo="cd ~/Clones/moderngo/2023"
alias gamedev="cd ~/Clones/gamedev/2023"
alias code="/usr/bin/code-insiders"
alias makeher="make -C ../build"
alias cbuildher="cmake -S . -B ../build"
alias mkdir="mkdir -v"
alias tsc="tsc --noImplicitReturns --noFallthroughCasesInSwitch --strict --noUnusedLocals"
alias hog="ps -eo pcpu,pid,user,args | sort -k1 -r -n | head -10"
alias \?="ddgr"
alias envc="nvim ~/.config/nvim/lua/user/init.lua"
# dotnet tool run csharp-ls or dotnet csharp-ls

function mkcd() { mkdir -p $1 && cd $1 }
function cdf() { cd *$1*/ } # stolen from garyberhardt who stole it from @topfunky lol
function up()
{
    local DIR=$PWD
    local TARGET=$1
    while [ ! -e $DIR/$TARGET -a $DIR != "/" ]; do
        DIR=$(dirname $DIR)
    done
    test $DIR != "/" && echo $DIR/$TARGET
}

# Edit a note
function note() {
    local dropbox=$(find ~/Dropbox/* | selecta)
    if [[ -n "$dropbox" ]]; then
        (cd ~/Dropbox && vi "$dropbox")
    fi
}

export PATH=~/.npm-global/bin:$PATH
export RUST_BACKTRACE=1 #or full
