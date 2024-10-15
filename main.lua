local player = require("src.player")
local enemy = require("src.enemy")
local game = require("src.game")

function love.load()
    player.load()
    enemy.load()
end

function love.update(dt)
    player.update(dt)
    enemy.update(dt)
    game.update(dt)
end

function love.draw()
    player.draw()
    enemy.draw()
    game.draw()
end
