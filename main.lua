function love.load()
    
    ht = love.graphics.getHeight()
    wdt = love.graphics.getWidth()
end

function love.update(dt)

end

function love.draw()
    love.graphics.print('777', wdt / 2, ht / 2)
end