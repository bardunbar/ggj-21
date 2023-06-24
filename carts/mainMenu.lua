mainMenu = {}

function mainMenu:init(inGameContext)
    self.gameContext = inGameContext

    self.highlightedButton = 1
    self.buttonOptions = { "Start Game", "Credits", "Another Button" }
end

function mainMenu:onEnterScreen()

end

-- Buttons
local xoffset = 20
local ystart = 40
local yoffset = 10

-- Highlighting
local highlightColor = 8
local highlightFramesBetweenFlashes = 10
local highlightFrame = 0
local function updateHighlightColor()
    highlightFrame = highlightFrame + 1
    if highlightFrame > highlightFramesBetweenFlashes then
        highlightFrame = 0
        if highlightColor > 14 then
            highlightColor = 8
        else
            highlightColor = highlightColor + 1
        end
    end
end

function mainMenu:upInput()
    if not self.lastUpInput then
        self.highlightedButton = self.highlightedButton - 1
        if self.highlightedButton < 1 then
            self.highlightedButton = #self.buttonOptions
        end
    end
end

function mainMenu:downInput()
    if not self.lastDownInput then
        self.highlightedButton = self.highlightedButton + 1
        if self.highlightedButton > #self.buttonOptions then
            self.highlightedButton = 1
        end
    end
end

function mainMenu:update()
    if btn(2) then
        self:upInput()
    elseif btn(3) then
        self:downInput()
    end

    self.lastUpInput = btn(2)
    self.lastDownInput = btn(3)
end

function mainMenu:draw()
    updateHighlightColor()
    print("Out of Bounds", 30, 30, 7)

    for i = 1, #self.buttonOptions do
        local isHighlighted = i == self.highlightedButton
        local prefix = isHighlighted and " > " or "  "
        local color = isHighlighted and highlightColor or 6
        print(prefix .. self.buttonOptions[i], xoffset, yoffset*i + ystart, color)
    end
end
