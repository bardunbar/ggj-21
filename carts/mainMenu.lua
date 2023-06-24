mainMenu = {}

function mainMenu:init(inGameContext)
    self.gameContext = inGameContext
end

function mainMenu:onEnterScreen()

end



-- Highlighting
local highlightColor = 6
local highlightGramesBetweenFlashes = 10
local highlightFrame = 0
local function updateHighlightColor()
    highlightFrame = highlightFrame + 1
    if highlightFrame > highlightGramesBetweenFlashes then
        highlightFrame = 0
        if highlightColor > 14 then
            highlightColor = 6
        else
            highlightColor = highlightColor + 1
        end
    end
end

function mainMenu:update()
    
end

function mainMenu:draw()
    updateHighlightColor()
    print("Out of Bounds", 10, 10, highlightColor)
end
