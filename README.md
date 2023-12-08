# Calculate

This is a simple Neovim plugin to execute math operations. Just type the math operation like you do in a calculator, and it will return you the result.

![1](https://media.licdn.com/dms/image/D4D22AQHtAjVMxaYC6g/feedshare-shrink_800/0/1702030527571?e=1704931200&v=beta&t=mY2ozB7co26_1vrUaDvBk5qQyZpKRwBiyhoitIhHYUg)

![2](https://media.licdn.com/dms/image/D4D22AQHRtrwMJf8ZoA/feedshare-shrink_800/0/1702030527318?e=1704931200&v=beta&t=UbXdMHzMJFMjsTj3NvNsqK_aovjaAsqJVvPPnCCEsM0)

![3](https://media.licdn.com/dms/image/D4D22AQFdfOf1bISSeQ/feedshare-shrink_800/0/1702030527448?e=1704931200&v=beta&t=SixrQcLOsvZbhA-1qMSfTI5I_Sg_1TVEDxLoM1p2HfM)

## Install
The way I tested if this plugin works is with __Packer__.
```lua
use { "NeddM/calculate" }
```

You also need to call the __setup__ method on the _init.lua_. The best way to do it is to create `./lua/calculate-config/init.lua`.

Inside this _init.lua_ you have to add this line:
```lua
require("calculate").setup()
```

And then, call this file in the main _init.lua_:
```lua
require('calculate-config')
```
