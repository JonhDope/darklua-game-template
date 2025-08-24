local Process = require("@lune/process")
Process.spawn("darklua", {
    "process",
    "--config",
    ".darklua.json",
    "src/",
    "out/"
})

Process.spawn("rojo", {
    "build",
    "build.project.json",
    "--output",
    "place.rbxlx",
})