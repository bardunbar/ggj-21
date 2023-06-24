whiteboxLevel = {}

-- Start required interface
function whiteboxLevel:init(inGameContext)
    self.gameContext = inGameContext
end

function whiteboxLevel:onEnterScreen()
    self.gameContext.player:reset_position(64, -16)
end

function whiteboxLevel:onExitScreen()

end

function whiteboxLevel:update()
    self.gameContext.player:update()
end

function whiteboxLevel:draw()
    map(0, 0, 0, 0, 16, 16)
    self.gameContext.player:draw()
end
-- End required interface