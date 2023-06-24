player = {
    x = 64,
    y = 64,
    v_x = 0,
    v_y = 0,
}

function player:update()

    -- Apply Gravity

end

function player:draw()
    spr(1, self.x, self.y)
end