# yfix

Neovim plugin to keep the screen centered.  

[yfix in action](https://user-images.githubusercontent.com/65471094/199067693-e7df1d9f-dd66-4a7c-a721-370a49437ece.webm)


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
