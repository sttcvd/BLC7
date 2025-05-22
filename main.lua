function love.load()

    ht = love.graphics.getHeight()
    wdt = love.graphics.getWidth()
    setMatrix(3, 5)
end

function love.update(dt)
    
end

matrixOffset = 20 

function love.draw()
    drawReels(matrix)
end

matrix = {}

function setMatrix(rows, columns)
    for i = 1, rows, 1 do 
        matrix[i] = {}
        for j = 1, columns, 1 do
            matrix[i][j] = love.math.random(1, 5)
        end
    end
end

function drawReels(roll)
    for i = 1, #roll, 1 do
        love.graphics.print(roll[i], wdt / 2, (ht / 2) - 50 + (i * 50), 0 , 5, 5, matrixOffset, matrixOffset)
    end
end

