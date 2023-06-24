#include mainMenu.lua
#include whiteboxLevel.lua

-- Current screen of the game
curscreen = nil

function _init()
    print("Hello Game Jam!")
    curscreen = mainMenu
end

function _update60()
    curscreen:update()
end

function _draw()
    cls()
    curscreen:draw()
end