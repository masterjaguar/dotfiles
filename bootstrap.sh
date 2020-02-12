cd "$(dirname "${BASH_SOURCE}")";

#git pull origin master;

function doIt() {
	rsync -v --exclude ".git/" \
		--exclude "_config.yml" \
		--exclude "bootstrap.sh" \
		--exclude "README.md" \
		-avh --no-perms . ~;
	test -f ~/.bash_profile && source ~/.bash_profile ;
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
	doIt;
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
	echo "";
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		doIt;
	fi;
fi;
unset doIt;
