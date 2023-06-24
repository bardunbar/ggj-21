
-- Current screen of the game
curscreen = nil
gameContext = {}

function gameContext:resetState()
    self.boundCount = 0
    self.player:reset_position(64, -16)
end

function gameContext:goToScreen(screenKey)
    if curscreen then
        curscreen:onExitScreen()
    end
    curscreen = self.screens[screenKey]
    curscreen:onEnterScreen()
end

-- Main functions

function _init()
    -- Assign player to the context
    gameContext.player = player
    player:draw()
    -- gameContext.player:draw()

    gameContext.screens =
    {
        mainMenu = mainMenu,
        whiteboxLevel = whiteboxLevel
    }

    hud:init(gameContext)
    for _, screen in pairs(gameContext.screens) do
        screen:init(gameContext)
    end

    gameContext:goToScreen("mainMenu")
end

function _update60()
    curscreen:update()
end

function _draw()
    cls()
    curscreen:draw()
end