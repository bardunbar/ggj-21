#include mainMenu.lua
#include whiteboxLevel.lua

-- Current screen of the game
curscreen = nil
gameContext = {}

function _init()
    print("Hello Game Jam!")
    
    -- Create the player
    gameContext.player = {}
    local player = gameContext.player
    player.position = { x = 0, y = 0 } -- not sure what this should be yet

    -- init all screens
    mainMenu:init(gameContext)
    whiteboxLevel:init(gameContext)

    curscreen = mainMenu
end

function _update60()
    curscreen:update()
end

function _draw()
    cls()
    curscreen:draw()
end