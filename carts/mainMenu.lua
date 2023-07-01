mainMenu = {}

local function onStartGame()
    -- mainMenu.gameContext:goToScreen("firstLevel")
    mainMenu.gameContext:goToScreen("whiteboxLevel")
end

local function onOpenCredits()

end

-- Buttons
local xoffset = 20
local ystart = 40
local yoffset = 10

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
    print("out of bounds", 30, 30, 7)

    for i = 1, #self.buttonOptions do
        local isHighlighted = i == self.highlightedButton
        local prefix = isHighlighted and " > " or "  "
        local color = (isHighlighted and utilities:getHighlightColor()) or 6
        print(prefix .. self.buttonOptions[i].text, xoffset, yoffset*i + ystart, color)
    end
end
-- End required interface