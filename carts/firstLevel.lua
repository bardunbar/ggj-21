firstLevel = {}
createLevel(firstLevel)
local super = levelBase

function firstLevel:init(inGameContext)
    super.init(self, inGameContext)
end

function firstLevel:onEnterScreen()
    super.onEnterScreen(self)
end

function firstLevel:onExitScreen()
    super.onExitScreen(self)
end

function firstLevel:update()
    super.update(self)
end

function firstLevel:draw()
    rectfill(80,80,120,100,12)
    circfill(70,90,20,14)
    for i=1,4 do print(i) end
    super.draw(self)
end