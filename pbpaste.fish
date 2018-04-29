# Defined in - @ line 0
function pbpaste --description 'alias pbpaste=xsel --clipboard'
	xsel --clipboard $argv;
end
