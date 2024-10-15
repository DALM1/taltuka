local enemy = {}

function enemy.load()
    enemy.x = 400
    enemy.y = 200
    enemy.width = 50
    enemy.height = 50
    enemy.health = 100
end

function enemy.update(dt)
end

function enemy.draw()
    love.graphics.setColor(0, 1, 0)
    love.graphics.rectangle("fill", enemy.x, enemy.y, enemy.width, enemy.height)
    love.graphics.setColor(1, 1, 1)
end

return enemy
