# Vim Configuration

This repo stores the Vim configuration on my Linux machines. To setup the configuration on a
new machine, do the following:

## Setting up the Configuration File

1. Clone the repo to your `~/.vim/` directory.
2. Create your `~/.vimrc` file with the following command:

        echo "runtime vimrc" > ~/.vimrc

   so your `.vimrc` file will load the configuration in `~/.vim/vimrc` at runtime.

## Installing Plugins

To finalize the configuration, run `./install_plugins` to install the plugins that I use.
The install script will create any necessary directories that don't yet exist and install
each plugin in its appropriate directory. Below is a list of the plugins that the script
will install:

* [`gruvbox`](https://github.com/morhetz/gruvbox)
* [`nord-vim`](https://github.com/arcticicestudio/nord-vim)
* [`jedi-vim`](https://github.com/davidhalter/jedi-vim)
* [`python-syntax`](https://github.com/vim-python/python-syntax)
* [`vim-javascript`](https://github.com/pangloss/vim-javascript)
* [`vim-cpp-modern`](https://github.com/bfrg/vim-cpp-modern)
* [`nerdtree`](https://github.com/preservim/nerdtree)
* [`vim-airline`](https://github.com/vim-airline/vim-airline)
* [`vim-fugitive`](https://github.com/tpope/vim-fugitive)
* [`vim-gitgutter`](https://github.com/airblade/vim-gitgutter) (Note: if using
  tmux, then make sure to `set -g focus-events on` in your tmux.conf)
* [`indentLine`](https://github.com/Yggdroot/indentLine)
* [`rust.vim`](https://github.com/rust-lang/rust.vim)
