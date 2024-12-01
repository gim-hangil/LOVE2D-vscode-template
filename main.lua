-- Use Local Lua Debugger on debug
if arg[2] == "debug" then
  require("lldebugger").start()
end

function love.load()
end

function love.update(dt)
end

function love.draw()
end

-- Highlight the line where the error occurred along with the error message
local love_errorhandler = love.errorhandler
function love.errorhandler(msg)
    if lldebugger then
        error(msg, 2)
    else
        return love_errorhandler(msg)
    end
end
