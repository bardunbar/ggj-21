utilities = {}

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

local debugString
function printDebug(inDebugString)
    debugString = inDebugString
end

function remove(t, indexToRemove)
    local result = t[indexToRemove]
    for i = indexToRemove, #t do
        t[i] = t[i + 1]
    end
    return result
end

function utilities:update()
    updateHighlightColor()
end

function utilities:draw()
    if debugString then
        print(debugString, 0, 0, 8)
    end
end

function utilities:getHighlightColor()
    return highlightColor
end