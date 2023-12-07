# Evaluate

This is a simple Neovim plugin to execute math operations.

## Install
The way I tested if this plugin works is with __Packer__.
```lua
use { "NeddM/evaluate" }
```

You also need to call the __setup__ method on the _init.lua_. The best way to do it is to create `./lua/evaluate-config/init.lua`.

Inside this _init.lua_ you have to add this line:
```lua
require("evaluate").setup()
```

And then, call this file in the main _init.lua_:
```lua
require('evaluate-config')
```
