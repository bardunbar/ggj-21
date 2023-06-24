
-- Current screen of the game
curscreen = nil
gameContext = {}

function _init()
    print("Hello Game Jam!")

    -- Assign player to the context
    gameContext.player = player

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