mainMenu = {}

local function onStartGame()
    mainMenu.gameContext:goToScreen("whiteboxLevel")
end

local function onOpenCredits()

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
    self.highlightedButton = self.highlightedButton - 1
    if self.highlightedButton < 1 then
        self.highlightedButton = #self.buttonOptions
    end
end

function mainMenu:downInput()
    self.highlightedButton = self.highlightedButton + 1
    if self.highlightedButton > #self.buttonOptions then
        self.highlightedButton = 1
    end
end

-- Start required interface
function mainMenu:init(inGameContext)
    self.gameContext = inGameContext

    self.highlightedButton = 1
    self.buttonOptions = { 
        { text = "START GAME", onPress = onStartGame }, 
        { text = "CREDITS", onPress = onOpenCredits}, 
    }
end

function mainMenu:onEnterScreen()

end

function mainMenu:onExitScreen()

end

function mainMenu:update()
    if btnp(2) then
        self:upInput()
    elseif btnp(3) then
        self:downInput()
    end
    if btnp(4) then
        self.buttonOptions[self.highlightedButton].onPress()
    end
end

function mainMenu:draw()
    updateHighlightColor()
    print("out of bounds", 30, 30, 7)

    for i = 1, #self.buttonOptions do
        local isHighlighted = i == self.highlightedButton
        local prefix = isHighlighted and " > " or "  "
        local color = (isHighlighted and highlightColor) or 6
        print(prefix .. self.buttonOptions[i].text, xoffset, yoffset*i + ystart, color)
    end
end
-- End required interface