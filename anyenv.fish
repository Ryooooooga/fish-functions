set -x PATH "$HOME/.anyenv/bin" $PATH

source "/home/ryoga/.anyenv/libexec/../completions/anyenv.fish"

function anyenv
  set command $argv[1]
  set -e argv[1]

  command anyenv "$command" $argv
end

