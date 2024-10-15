local player = {}

function player.load()
    player.image = love.graphics.newImage("assets/images/player.png")
    player.x = 50
    player.y = 50
    player.speed = 200
    player.attackRange = 50
end

function player.update(dt)
    if love.keyboard.isDown("right") then
        player.x = player.x + player.speed * dt
    elseif love.keyboard.isDown("left") then
        player.x = player.x - player.speed * dt
    end

    if love.keyboard.isDown("down") then
        player.y = player.y + player.speed * dt
    elseif love.keyboard.isDown("up") then
        player.y = player.y - player.speed * dt
    end
end

function player.draw()
    love.graphics.draw(player.image, player.x, player.y)
end

return player
