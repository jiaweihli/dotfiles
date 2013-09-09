alias ..="cd .."
alias ....="cd ../.."
alias ......="cd ../../.."

# usage: echo "Hello" | copybuf
alias copybuf="xclip && xclip -o | xclip -i -selection secondary && xclip -o | xclip -i -selection clipboard"

# Arch Linux specific
case `uname -r` in
*ARCH)
orphans() {
  if [[ ! -n $(pacaur -Qdt) ]]; then
    echo no orphans to remove
  else
    sudo pacaur -Rs $(pacaur -Qdtq)
  fi
}
esac
