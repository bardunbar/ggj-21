hud = {}

function hud:init(gameContext)
    self.gameContext = gameContext
end

function hud:draw()
    print("bounds: " .. self.gameContext.boundCount, 1, 121, 0)
end