if [[ $(dirname $0) != "." ]]
then
	echo "Please cd to directory"
	exit;
fi

echo "Installing"

mv -v ~/.bashrc ~/.bashrc.old
ln -s $PWD/.bashrc ~/.bashrc

mv -v ~/.envrc ~/.envrc.old
ln -s $PWD/.envrc ~/.envrc

mv -v ~/.bash_funcs ~/.bash_funcs.old
ln -s $PWD/.bash_funcs ~/.bash_funcs

mv -v ~/.aliases_bash ~/.aliases_bash.old
ln -s $PWD/.aliases_bash ~/.aliases_bash

mv -v ~/.vimrc ~/.vimrc.old
ln -s $PWD/.vimrc ~/.vimrc

mv -v ~/.config/nvim/init.vim ~/.config/nvim/init.vim.old
ln -s $PWD/init.vim ~/.config/nvim/init.vim

ln -s $PWD/plugins.vim ~/.config/nvim/plugin/plugins.vim
