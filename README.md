Vim plugin to compile and run tests using scons commands


## Installation
### Install with Vundle
Add following line in your .vimrc:

```Plugin "nemausus/vim-scons"```

Reload ```.vimrc``` and ```:PlugingInstall``` to install the plugin.

### Install with Vim-Plug
Add following line in your .vimrc:

```Plug "nemausus/vim-scons"```

Reload ```.vimrc``` and ```:PlugInstall``` to install the plugin.

## Usage
Plugin adds following keyboard mappings

<leader>sd Compile current file in debug mode.
<leader>so Compile current file in opt mode.
<leader>st Run current test.
<leader>sa Run all tests from current file.

If you want to define your own custom mappings these can disabled by

```let g:scons_disable_mapping = 1```
