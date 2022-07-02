set -x __NV_PRIME_RENDER_OFFLOAD 1 
set -x __GLX_VENDOR_LIBRARY_NAME nvidia
set -x TEXMACS_PATH $HOME/TeXmacs-2.1.1-i386-pc-linux-gnu/

set -x PAGER batcat
set -x EDITOR nvim

alias dotfiles='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'

alias adt=$HOME/MGLTools-1.5.7/bin/adt
alias prepare_receptor=$HOME/ADFRsuite-1.0/bin/prepare_receptor
alias prepare_flexible_receptor=$HOME/ADFRsuite-1.0/bin/prepare_flexible_receptor.py
alias prepare_ligand=$HOME/ADFRsuite-1.0/bin/prepare_ligand
alias reduce=$HOME/ADFRsuite-1.0/bin/reduce
alias agfr=$HOME/ADFRsuite-1.0/bin/agfr

alias ra=lf
alias vim=nvim
alias vi=nvim
alias bat=batcat
alias fd=fdfind

function mkcd
  mkdir -p $argv
  cd $argv
end

function plip-run
  docker run --rm \
  -v $PWD:/results \
  -w /results \
  -u $(id -u $USER):$(id -g $USER) \
  pharmai/plip:latest -i $argv -yv
end
