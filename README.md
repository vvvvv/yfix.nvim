# yfix

Neovim plugin to keep the screen centered.  

## Configure

The plugin needs to be initialised using 

```lua
require('yfix').setup()
```

However you can pass in config options which default to:

```lua
{
  -- center y axis in insert mode
  insert_mode = true,
  -- center y axis in normal mode
  normal_mode = true,
}
```

## Installation  

### Packer 

```lua 
use "vvvvv/yfix"
require("yfix").setup()
```
