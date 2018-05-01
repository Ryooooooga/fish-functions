set -x PATH "$HOME/.anyenv/envs/pyenv/bin" $PATH
set -x PATH '$HOME/.pyenv/shims' $PATH
set -x PYENV_SHELL fish

source '$HOME/.anyenv/envs/pyenv/completions/pyenv.fish'
command pyenv rehash 2> /dev/null

function pyenv
	set command $argv[1]
	set -e argv[1]

	switch "$command"
	case rehash shell
		source (pyenv "sh-$command" $argv|psub)
	case '*'
	command pyenv "$command" $argv
	end
end

