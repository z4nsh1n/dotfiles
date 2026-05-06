set -U fish_greeting ""
if status is-interactive
# Commands to run in interactive sessions can go here
end
fish_vi_key_bindings
function fish_prompt -d "Write out the prompt"
#     # This shows up as USER@HOST /home/user/ >, with the directory colored
#     # $USER and $hostname are set by fish, so you can just use them
#     # instead of using `whoami` and `hostname`
#     printf '%s@%s %s%s%s > ' $USER $hostname (set_color $fish_color_cwd) (prompt_pwd) (set_color --reset)
#printf '%s@%s %s%s%s %s>' $USER $hostname (set_color red)(echo $ZMX_SESSION)(set_color --reset) (prompt_pwd)
      printf '%s%s@%s%s %s%s%s%s%s%s%s >' \
        (set_color $fish_color_user) \
        $USER \
        (set_color $fish_color_host) \
        $hostname \
        (set_color red) \
        (echo $ZMX_SESSION) \
        (set_color $fish_color_cwd) \
        (prompt_pwd) \
        (set_color red) \
        (fish_git_prompt) \
        (set_color --reset)
        # $hostname #(set_color red)(echo $ZMX_SESSION)(set_color $fish_color_cwd) (prompt_pwd)(set_color --reset)(fish_git_prompt)
        # (set_color $fish_color_cwd) \
        # $USER  
        # (set_color --reset) \
        # $ZMX_SESSION 
        # $hostname 
        # (prompt_pwd) 
        #(git branch)
end

function history_search 
  history | fzf --no-sort | read -l command 
  if test $command
    commandline -rb $command
  end
end

bind -M insert ctrl-r history_search
# bind -M insert ctrl-r history-pager
bind -M insert ctrl-f forward-char

bind -M default --user alt-h backward word
bind -M default --user alt-l forward word
bind -M default --user ctrl-k up-or-search
bind -M default --user ctrl-j down-or-search

bind -M insert --user alt-h backward-word
bind -M insert --user alt-l forward-word
bind -M insert --user ctrl-k up-or-search
bind -M insert --user ctrl-j down-or-search
# bindkey "^k" up-line-or-history
# bindkey "^j" down-line-or-history
# bind -M default ctrl-p $fd

# bind -M default ctrl-r 'fd . -d 3 --hidden --exclude .git | fzf -e' repaint
bind -M default ctrl-p 'cd "$(zoxide query -i)"' repaint
bind -M insert ctrl-s dtach-session-switcher
bind -M insert ctrl-g dtach-sessionizer
# bind -M insert ctrl-s zmx-session-switcher repaint
# bind -M insert ctrl-w zmx-sessionizer repaint

# bind -M insert ctrl-r 'fd . -d 3 --hidden --exclude .git | fzf -e'
bind -M insert ctrl-p 'cd "$(zoxide query -i)"' repaint
# bind -M default ctrl-p 'cd "$(zoxide query -i)"^M'
#
# alias "nvim" "~/.local/share/bob/nvim-bin/nvim"
alias "qutebrowser" "qutebrowser --qt-flag disable-gpu"
alias "vi" "nvim"
alias "e" "nvim"
alias shot='grim -g "$(slurp)"'
alias zoom='grim -g "$(slurp)" ~/.tmp.png;feh ~/.tmp.png' 
alias giti="git init ."
alias gitl="git log"
alias gits="git status"
alias gitc="git commit"
#
# export PATH=~/.local/share/coursier/bin:~/.local/share/bob/nvim-bin/:~/.local/bin/:~/.cargo/bin/:~/.zvm/self/:~/.zvm/bin/:~/software/Nim/bin:~/.nimble/bin/:/usr/sbin/$PATH
# set -U fish_user_paths ~/.local/share/coursier/bin ~/.local/share/bob/nvim-bin/ ~/.local/bin/ ~/.cargo/bin/ ~/.zvm/self/ ~/.zvm/bin/ ~/software/Nim/bin ~/.nimble/bin/ $fish_user_paths
export EDITOR=nvim
export BROWSER=qutebrowser
export GOPATH=/home/zanshin/code/go/
export ODIN_ROOT=/home/zanshin/software/Odin/
export ELECTRON_OZONE_PLATFORM_HINT=auto
export TERM=ghostty

# to the end
zoxide init fish | source
