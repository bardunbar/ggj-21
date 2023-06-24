local gravity = 7 * 1/60

player = {
    x = 64,
    y = 64,
    v_x = 0,
    v_y = 0,
    grounded = false,
    moving = false,
    direction = 0,
    currentFrame = 0,
    numBounds = 0,
    bounding = false
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
    self.v_x, self.v_y = 0, 0
end