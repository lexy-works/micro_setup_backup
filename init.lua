local micro = import("micro")
local config = import("micro/config")


local micro = import("micro")
local config = import("micro/config")
function save_run(bp)
    bp:Save()
    bp:Quit()
end

function init()
    config.MakeCommand("save_run", save_run, config.NoComplete)
    config.TryBindKey("Alt-n", "command:save_run", true)
end
