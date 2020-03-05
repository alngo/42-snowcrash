IP=10.11.200.99

case $1 in
	level01)
		cat ./level00/flag 2>/dev/null | pbcopy 2>/dev/null
		;;
	level02)
		cat ./level01/flag 2>/dev/null | pbcopy 2>/dev/null
		;;
	level03)
		cat ./level02/flag 2>/dev/null | pbcopy 2>/dev/null
		;;
	level04)
		cat ./level03/flag 2>/dev/null | pbcopy 2>/dev/null
		;;
esac

ssh $1@$IP -p 4242
