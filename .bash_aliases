alias ..="cd .."
alias ....="cd ../.."

# usage: echo "Hello" | copybuf
alias copybuf="xclip && xclip -o | xclip -i -selection secondary && xclip -o | xclip -i -selection clipboard"
