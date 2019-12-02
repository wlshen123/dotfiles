# dotfiles

## vimrc

To use this vimrc, simply download the vimrc file and put it in your home folder.

To do this from the command line:

```bash
curl -o ~/.vimrc https://raw.githubusercontent.com/wlshen123/dotfiles/master/.vimrc
```

This vimrc uses Vundle for plugin management. Visit the [Vundle github page](https://github.com/VundleVim/Vundle.vim)
for details on how to use Vundle

For this vimrc, all that's required for installation is downloading the vimrc itself,
cloning the Vundle repository, and installing the plugins

To clone the Vundle repository, run:

```bash
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

To install the plugins, either:

run `:PluginInstall` from inside vim, or:

run `vim +PluginInstall +qall` from the terminal

After that, everything should work out of the box.

This vim config uses `-` as the leader by default.

Below is a table of commands defined by the vimrc

### Normal mode
| Command Shortcut  | Description                           |
| :---------------- | :----------                           |
| `-h1`             | creates a header1                     |
| `-h2`             | creates a header2                     |
| `-h3`             | creates a header3                     |
| `-ev`             | opens the vimrc file                  |
| `-sv`             | runs the vimrc file                   |
| `-i3`             | opens the i3 config file              |
| `-q`              | closes the current vim buffer         |
| `-s`              | writes the current vim buffer         |
| `-f`              | types `:tabf`                         |
| `-ff`             | opens NERDTREE                        |
| `-t`              | types `:term`                         |
| `-tl`             | runs `ls` in an integrated terminal   |
| `-tm`             | types `:term make`                    |
| `-tt`             | starts an integrated terminal session |
| `-1`              | moves to tab 1                        |
| `-2`              | moves to tab 2                        |
| `-3`              | moves to tab 3                        |
| `-4`              | moves to tab 4                        |
| `-5`              | moves to tab 5                        |
| `-6`              | moves to tab 6                        |
| `-7`              | moves to tab 7                        |
| `-8`              | moves to tab 8                        |
| `-9`              | moves to tab 9                        |

### Insert Mode
| Command Shortcut  | Description                       |
| :---------------- | :----------                       |
| `Ctrl + u`        | makes the current word uppercase  |


### Visual Mode
| Command Shortcut | Description |
| :--------------- | :---------- |


Below is a table of settings set by the vimrc

| Setting           | Value     | Description                                       |
| :------           | :----     | :------------------------------------------------ |
| autoindent        | on        | generated new lines will indent automatically     |
| colorscheme       | codedark  | vs-code-like colorscheme                          |
| expandtab         | on        | tabs become spaces                                |
| hlsearch          | on        | search (/) results are highlighted                |
| incsearch         | on        | search (/) displays results as you type           |
| number            | on        | line numbers on the left                          |
| relativenumber    | on        | relative line numbers on the left                 |
| shiftwidth        | 4         | "shifting" in visual mode will shift by 4 spaces  |
| softtabstop       | 4         | pressing tab will generate 4 spaces               |
| tabstop           | 4         | the "\t" delimiter will expand to 4 spaces        |
| wrap              | off       | lines go on forever                               |


## i3config

Very similar to default. Key binding-wise, `jkl;` was moved to `hjkl` for better compatibility.
Horizontal split was moved to `$mod+n`

Certain apps run on startup, and some are bound to corresponding workspaces.

TODO: add a table of startup apps and workspaces bindings
