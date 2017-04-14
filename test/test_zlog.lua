local zlog = require("zlog")
assert(zlog._VERSION)
local zlogi = zlog.init("test/zlog.conf")
local cat = zlogi:category("lzlog")
cat:fatal("fatal message")
cat:error("error message")
cat:warn("warn message")
cat:notice("notice message")
cat:debug("debug message")
cat:info("info message")

local ncat = zlogi:category("ncat")
print(ncat:info("ncat info"))
zlog = nil
collectgarbage()


