local gravity = 7 * 1/60

player = {
    x = 64,
    y = 64,
    dx = 0,
    dy = 0,
    grounded = false,
    moving = false,
    direction = 0,
    currentFrame = 0,
    numBounds = 0,
    bounding = false

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
    self.dy += gravity
    -- if not self.grounded then
    -- end

    -- Update Position
    self.x += self.dx
    self.y += self.dy


    -- Solve Collisions --
    local val = mget((self.x+4)/8,(self.y+8)/8)
    if fget(val, 0) then
        self.y = flr((self.y)/8)*8
        self.grounded = true
        self.dy = 0
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
    self.moving = self.dx ~= 0 or self.dy ~= 0
end

function player:draw()
    if(player.grounded == true and player.moving == false) then
        -- play stationary animation
        if(player.currentFrame < 600) then
            spr(5, self.x, self.y)
            player.currentFrame = player.currentFrame + 1
        else
            if(player.currentFrame < 800) then
                spr(6, self.x, self.y)
                player.currentFrame = player.currentFrame + 1
            else
                spr(6, self.x, self.y)
                player.currentFrame = 0
            end
        end
    else
        -- check for motion and play animation for that motion
        spr(5, self.x, self.y)
    end
end


function player:reset_position(x, y)
    self.x, self.y = x, y
    self.dx, self.v_y = 0, 0
end