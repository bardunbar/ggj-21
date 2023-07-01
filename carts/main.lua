
-- Current screen of the game
curscreen = nil
gameContext = {
    screens =
    {
        mainMenu = mainMenu,
        whiteboxLevel = whiteboxLevel,
        firstLevel = firstLevel
    },
    levelOrder =
    {
        "whiteboxLevel",
        "firstLevel",
    },
}

function gameContext:resetState()
    -- reset powerups
    reload(0x1000, 0x1000, 0x2000)

    -- reset player movement and position
    self.player:reset_position(64, -16)
    self.player.boundQueue = {}
    self.player.accumulatedGravity = 0

    -- add reset to counter
    self.player.numResets = self.player.numResets + 1 
end

function gameContext:goToScreen(screenKey, levelIndex)
    if curscreen then
        curscreen:onExitScreen()
    end
    curscreen = self.screens[screenKey]
    -- check if this screen is a level and if so set the level index
    self.levelIndex = levelIndex
    if not levelIndex then
        for i = 1, #self.levelOrder do
            if self.levelOrder[i] == screenKey then
                self.levelIndex = i
                break
            end
        end
    end
    curscreen:onEnterScreen()
end

function gameContext:completeLevel()
    self.isLevelComplete = true
end

function gameContext:nextLevel()
    self.isLevelComplete = false
    if self.levelIndex > 0 and self.levelIndex < #self.levelOrder then
        local newLevelIndex = self.levelIndex + 1
        self:goToScreen(self.levelOrder[newLevelIndex], newLevelIndex)
    end
end

function gameContext:hasNextLevel()
    return self.levelIndex and self.levelIndex < #self.levelOrder
end

-- Main functions

function _init()
    -- Assign player to the context
    gameContext.player = player
    hud:init(gameContext)
    for _, screen in pairs(gameContext.screens) do
        screen:init(gameContext)
    end

    music(0)

    gameContext:goToScreen("mainMenu")
end

function _update60()
    utilities:update()
    curscreen:update()
end

function _draw()
    cls()
    curscreen:draw()
    utilities:draw()
end