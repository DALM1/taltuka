local enemy = require("src.enemy")

local game = {}
local attack = { active = false, x = 0, y = 0, width = 50, height = 10 }

function game.update(dt)
    if love.keyboard.isDown("a") then
        attack.active = true
        attack.x = player.x + player.attackRange
        attack.y = player.y
    else
        attack.active = false
    end

    if attack.active then
        if attack.x < enemy.x + enemy.width and
           attack.x + attack.width > enemy.x and
           attack.y < enemy.y + enemy.height and
           attack.y + attack.height > enemy.y then
            enemy.health = enemy.health - 10
        end
    end
end

function game.draw()
    if attack.active then
        love.graphics.setColor(1, 0, 0)
        love.graphics.rectangle("fill", attack.x, attack.y, attack.width, attack.height)
        love.graphics.setColor(1, 1, 1)
    end

    love.graphics.print("Health: " .. enemy.health, 10, 10)
end

return game
