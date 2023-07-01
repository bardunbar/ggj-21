whiteboxLevel = {}
createLevel(whiteboxLevel)
local super = levelBase

-- Start required interface
function whiteboxLevel:init(inGameContext)
    super.init(self, inGameContext)
    self.mx, self.my = 0, 0
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
    super.draw(self)
end

-- End required interface