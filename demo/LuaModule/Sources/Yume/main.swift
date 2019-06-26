import Lua

let state = Lua.luaL_newstate()
Lua.luaL_openlibs(state)
Lua.luaL_loadfilex(state, "script.lua", nil)
if lua_pcallk(state, 0, 0, 0, 0, nil) == LUA_OK {
} else {
    print("load lua fail")
}

lua_getglobal(state, "hello")
if lua_pcallk(state, 0, 0, 0, 0, nil) == LUA_OK {
} else {
    print("execute function fail")
}
