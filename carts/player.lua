local gravity = 7 * 1/60

player = {
    x = 64,
    y = 64,
    dx = 0,
    dy = 0,
    grounded = false,
    moving = false,
    direction = 0,
    currentFrame = 0

}

function player:update()

    -- Set up initial assumptions and data
    local startx = self.x
    self.dx=0
    self.grounded = false

    -- Update Velocity
    if btn(0) then --left
        self.dx=-2
    end
    if btn(1) then --right
        self.dx=2
    end

    -- Apply Gravity
    if not self.grounded then
        self.dy += gravity
    end

    -- Update Position
    self.x += self.dx
    self.y += self.dy


    -- Solve Collisions --
    local val = mget((self.x+4)/8,(self.y+8)/8)
    if fget(val, 0) then
        self.y = flr((self.y)/8)*8
        self.grounded = true
    end

    local xoffset=0
    if self.dx>0 then xoffset=7 end

    local h=mget((self.x + xoffset) / 8, (self.y + 7) / 8)
    if fget(h,0) then
        --they hit a wall so move them
        --back to their original pos.
        --it should really move them to
        --the edge of the wall but this
        --mostly works and is simpler.
        self.x = startx
    end

    -- Set animation state variables
    self.direction = self.dx > 0 and 1 or self.dx < 0 and 0 or self.direction

end

function player:draw()
    spr(1, self.x, self.y)
end


function player:reset_position(x, y)
    self.x, self.y = x, y
    self.dx, self.v_y = 0, 0
end