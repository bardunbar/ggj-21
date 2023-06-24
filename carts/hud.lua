hud = {}

function hud:init(gameContext)
    self.gameContext = gameContext
end

function hud:draw()
    print("bounds: " .. self.gameContext.boundCount, 1, 121, 0)
    if self.gameContext.isLevelComplete then
        print("level complete", 36, 54, utilities:getHighlightColor())
    end
end