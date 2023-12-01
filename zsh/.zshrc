################################################################## powerlevel10k
# run p10k configure to config
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh

################################################################ Others
export PATH="$HOME/.local/bin:$PATH"

################################################################ Zimfw
ZIM_HOME=~/.zim
# Download zimfw plugin manager if missing.
if [[ ! -e ${ZIM_HOME}/zimfw.zsh ]]; then
  curl -fsSL --create-dirs -o ${ZIM_HOME}/zimfw.zsh \
      https://github.com/zimfw/zimfw/releases/latest/download/zimfw.zsh
fi
# Install missing modules, and update ${ZIM_HOME}/init.zsh if missing or outdated.
if [[ ! ${ZIM_HOME}/init.zsh -nt ${ZDOTDIR:-${HOME}}/.zimrc ]]; then
  source ${ZIM_HOME}/zimfw.zsh init -q
fi
# Initialize modules.
source ${ZIM_HOME}/init.zsh

############################################################## fzf
# Setup fzf
source /usr/share/doc/fzf/examples/key-bindings.zsh
source /usr/share/doc/fzf/examples/completion.zsh
# fd to replace find, note: add --hidden --no-ignore to show hidden or git ignored files
export FZF_DEFAULT_COMMAND="fd"
export FZF_ALT_C_COMMAND="fd --type d . $HOME/"
export FZF_ALT_C_OPTS="--preview 'tree -L 2 -C {}'"
export FZF_CTRL_T_OPTS="--preview 'bat -n --color=always --style=numbers --line-range=:500 {}'"
_fzf_compgen_path() {
  fd --follow . "$1"
}
_fzf_compgen_dir() {
  fd --type d --follow . "$1"
}

############################################################### ripgrep
export RIPGREP_CONFIG_PATH="$XDG_CONFIG_HOME/ripgrep/ripgreprc"

############################################################### rust
. "$HOME/.cargo/env"
