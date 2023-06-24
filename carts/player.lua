local gravity = 7 * 1/60

player = {
    x = 64,
    y = 64,
    v_x = 0,
    v_y = 0,
    grounded = false
}

function player:update()

    -- Update Velocity

    -- Apply Gravity
    if not self.grounded then
        self.v_y += gravity
    end

    -- Update Position
    self.x += self.v_x
    self.y += self.v_y

    -- Solve Collision
    local val = mget((self.x+4)/8,(self.y+8)/8)
    if fget(val, 0) then
        self.y = flr((self.y)/8)*8
        self.grounded = true
    end
end

function player:draw()
    spr(1, self.x, self.y)
end


function player:reset_position(x, y)
    self.x, self.y = x, y
    self.v_x, self.v_y = 0, 0
end