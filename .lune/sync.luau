local task = require("@lune/task")
local Process = require("@lune/process")

task.spawn(Process.spawn, "darklua", {
    "process",
    "--config",
    ".darklua.json",
    "--watch",
    "src/",
    "out/"
})

task.spawn(Process.spawn, "rojo", {
    "serve",
    "build.project.json"
})


