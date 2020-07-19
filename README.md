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

* [`gruvbox`](https://github.com/morhetz/gruvbox)
* [`jedi-vim`](https://github.com/davidhalter/jedi-vim)
* [`nerdtree`](https://github.com/preservim/nerdtree)
* [`python-syntax`](https://github.com/vim-python/python-syntax)

Install `gruvbox` to `~/.vim/pack/color/start/` and the other three plugins to
`~/.vim/pack/syntax/start/` by cloning the corresponding repos into these directories.
