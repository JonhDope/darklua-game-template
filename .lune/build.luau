local fs = require("@lune/fs")
local Process = require("@lune/process")

local OUTPUT_DIRECTORY = "out"

if fs.isDir(OUTPUT_DIRECTORY) then
    fs.removeDir(OUTPUT_DIRECTORY)
end
Process.spawn("darklua", {
    "process",
    "--config",
    ".darklua.json",
    "src/",
    OUTPUT_DIRECTORY.. "/"
})

Process.spawn("rojo", {
    "build",
    "build.project.json",
    "--output",
    "place.rbxlx",
})