package = "WSAPI"

version = "1.6-1"

description = {
  summary = "Lua Web Server API",
  detailed = [[
    WSAPI is an API that abstracts the web server from Lua web applications. This is the rock
    that contains the base WSAPI libraries plus the CGI adapters.
  ]],
  license = "MIT/X11",
  homepage = "http://www.keplerproject.org/wsapi"
}

dependencies = { "luafilesystem >= 1.6.2" }

source = {
  url = "http://www.keplerproject.org/files/wsapi-1.6.tar.gz"
}

build = {
  type = "builtin",
  modules = {
    ["wsapi.common"] = "src/wsapi/common.lua",
    ["wsapi.request"] = "src/wsapi/request.lua",
    ["wsapi.response"] = "src/wsapi/response.lua",
    ["wsapi.util"] = "src/wsapi/util.lua",
    ["wsapi.cgi"] = "src/wsapi/cgi.lua",
    ["wsapi.sapi"] = "src/wsapi/sapi.lua",
    ["wsapi.ringer"] = "src/wsapi/ringer.lua",
    ["wsapi.mock"] = "src/wsapi/mock.lua",
  },
  copy_directories = { "samples", "doc", "tests" },
  install = { bin = { "src/launcher/wsapi.cgi" } }
}
