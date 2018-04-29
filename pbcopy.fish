# Defined in - @ line 0
function pbcopy --description 'alias pbcopy=xsel --clipboard --input'
	xsel --clipboard --input $argv;
end
