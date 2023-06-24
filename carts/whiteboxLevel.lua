whiteboxLevel = {}

-- Start required interface
function whiteboxLevel:init(inGameContext)
    self.gameContext = inGameContext
end

function whiteboxLevel:onEnterScreen()

end

function whiteboxLevel:onExitScreen()

end

function whiteboxLevel:update()

end

function whiteboxLevel:draw()
    map(0, 0, 0, 0, 16, 16)
    self.gameContext.player:draw()
end
-- End required interface