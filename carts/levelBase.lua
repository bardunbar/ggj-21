levelBase = {}

function createLevel(subclass)
    setmetatable(subclass, levelBase)
end

function levelBase:init(inGameContext)
    self.gameContext = inGameContext
end

function levelBase:onEnterScreen()
    self.gameContext:resetState()
end

function levelBase:onExitScreen()

end

function levelBase:update()
    self.gameContext.player:update()

    if btnp(5) then
        self.gameContext:completeLevel()
    end
end

function levelBase:draw()
    self.gameContext.player:draw()
    hud:draw()
end