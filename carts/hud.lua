hud = {}

function hud:init(gameContext)
    self.gameContext = gameContext
end

function hud:update()
    if self.gameContext.isLevelComplete then
        if btnp(4) then
            self.gameContext:nextLevel()
        end
    end
end

function hud:draw()
    print("bounds: " .. self.gameContext.boundCount, 1, 121, 0)
    if self.gameContext.isLevelComplete then
        print("level complete", 36, 54, utilities:getHighlightColor())
        print("PRESS z TO GO TO NEXT LEVEL", 11, 74, 11)
    end
end