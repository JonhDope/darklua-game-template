local fs = require("@lune/fs")
local Process = require("@lune/process")

local OUTPUT_DIRECTORY = "out"

fs.removeDir(OUTPUT_DIRECTORY)
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