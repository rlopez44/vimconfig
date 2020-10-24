# Vim Configuration

This repo stores the Vim configuration on my Linux machines. To setup the configuration on a
new machine, do the following:

## Setting up the Configuration File

1. Clone the repo to your `~/.vim/` directory.
2. Create your `~/.vimrc` file with the following command:

        echo "runtime vimrc" > ~/.vimrc

   so your `.vimrc` file will load the configuration in `~/.vim/vimrc` at runtime.

## Plugins to Install

The following plugins should be installed in `~/.vim/pack/` to finalize the configuration.

* Install to `~/.vim/pack/color/start/`
    * [`gruvbox`](https://github.com/morhetz/gruvbox)
* Install to `~/.vim/pack/syntax/start/`
    * [`jedi-vim`](https://github.com/davidhalter/jedi-vim)
    * [`python-syntax`](https://github.com/vim-python/python-syntax)
    * [`vim-javascript`](https://github.com/pangloss/vim-javascript)
* Install to `~/.vim/pack/dist/start/`
    * [`nerdtree`](https://github.com/preservim/nerdtree)
    * [`vim-airline`](https://github.com/vim-airline/vim-airline)
    * [`vim-fugitive`](https://github.com/tpope/vim-fugitive)
    * [`vim-gitgutter`](https://github.com/airblade/vim-gitgutter) (Note: if using
      tmux, then make sure to `set -g focus-events on` in your tmux.conf)
