# lua-zlog
Lua binding for zlog.

## Installation
* Download and install zlog from: https://github.com/HardySimpson/zlog.
* Update the Makefile if needed to point at the correct include/lib paths.
* Run make (will produce `zlog.so`)


## Example
```lua
local zlog = require("zlog").init("zlog.conf")
local category = zlog:category("my_catgory")

category:info("Info message from lua-zlog!")
zlog:finish()
```

## Doc
`lua-zlog` exposes a simple interface.

### zlog.init(confpath)
Initialize the zlog environment (this calls zlog_init(confpath).

Params:
* **confpath** zlog conf path

Return:
* **lzlog** lzlog context to use in order to create a category instance.

### zlog:category(name), zlog:get_category(name)
Create a category instance.

Params:
* **name** Category name

Return:
* **category** Category instance.

### zlog:finish()
Invoke the zlog_fini method (gc, etc.)
No need to manual invocation, the method invokes the `__gc` (invoked automatically by the Lua VM).

### Category methods
The following methods share similar interface, all of them do not return any value.
### category:info, category:fatal, category:error, category:warn, category:notice

Params:
* **message[string]** Message to log

