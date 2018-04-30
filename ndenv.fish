set -x PATH "$HOME/.anyenv/envs/ndenv/bin" $PATH
set -x PATH "$HOME/.ndenv/shims" $PATH

command ndenv rehash 2> /dev/null

function ndenv
	set command $argv[1]
	set -e argv[1]

	switch "$command"
	case rehash shell
		source (ndenv sh-"$command" $argv|psub)
	case '*'
		command ndenv "$command" $argv
	end
end

