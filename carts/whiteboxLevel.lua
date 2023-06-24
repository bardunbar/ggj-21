whiteboxLevel = {}
createLevel(whiteboxLevel)
local super = levelBase

-- Start required interface
function whiteboxLevel:init(inGameContext)
    super.init(self, inGameContext)
end

function whiteboxLevel:onEnterScreen()
    super.onEnterScreen(self)
end

function whiteboxLevel:onExitScreen()
    super.onExitScreen(self)
end

function whiteboxLevel:update()
    super.update(self)
end

function whiteboxLevel:draw()
    map(0, 0, 0, 0, 16, 16)
    super.draw(self)
end

-- End required interface