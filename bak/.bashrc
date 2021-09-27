branch() {
  git branch 2> /dev/null    \
     | grep \*               \
     | awk '{print$2}'       \
     | sed -e 's/^/(/g'      \
     | sed -e 's/$/)/g'
 }

colo() { tput setaf $1; }

PS1=' `tput bold``colo 162` \W: `tput sgr0``colo 0``branch``colo 0` \n λ  '

[ -f ~/.fzf.bash ] && . ~/.fzf.bash
