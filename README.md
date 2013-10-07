Usage
=====

First, backup your existing `.vim` directory:

    mv ~/.vim ~/.vim-backup

And backup your configuration files:

    mv ~/.vimrc ~/.vimrc-backup
    mv ~/.gvimrc ~/.gvimrc-backup

Now clone this repository:

    git clone git://github.com/emancu/vim-files.git ~/.vim

In your `~/.vimrc` put this:

    source ~/.vim/vimrc.vim

And in your `~/.gvimrc` put this:

    source ~/.vim/gvimrc.vim

You may want to explore the `~/.vim/config` directory to see what's
included and `~/.vim/config/mappings.vim` to see how to use the
available tools.

Fuzzy Finder like TextMate plugin
---------------------------------

To use this plugin, you need ruby interpretation for your vim or MacVim.

To check if it's available, you can run a simple command like:

    :ruby

If the error displayed is:

    Argument required

You have ruby interpretation enabled! Otherwise, if error is like a:

    Sorry, the command is not available in this version

You have to compile your own vim, please check this site for instructions

    http://www.elblogolico.com.ar/2010/02/macvim-mi-editor.html

