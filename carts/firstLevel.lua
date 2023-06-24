firstLevel = {}

function firstLevel:init(inGameContext)
    self.gameContext = inGameContext
end

function firstLevel:onEnterScreen()
    self.gameContext:resetState()
end

function firstLevel:onExitScreen()

end

function firstLevel:update()

end

function firstLevel:draw()
    rectfill(80,80,120,100,12)
    circfill(70,90,20,14)
    for i=1,4 do print(i) end

end