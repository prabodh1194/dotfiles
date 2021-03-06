if [[ $(dirname $0) != "." ]]
then
	echo "Please cd to directory"
	exit;
fi

echo "Installing"

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

mv -v ~/.zshrc ~/.zshrc.old
ln -s $PWD/.zshrc ~/.zshrc

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

mkdir -p ~/.config/nvim
mv -v ~/.config/nvim/init.vim ~/.config/nvim/init.vim.old
ln -s $PWD/init.vim ~/.config/nvim/init.vim

mkdir -p ~/.config/nvim/plugin
ln -s $PWD/plugins.vim ~/.config/nvim/plugin/plugins.vim
