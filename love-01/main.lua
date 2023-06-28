-- function love.quit()
-- 	print("Thanks for playing! Come back soon!")
-- end

io.stdout:setvbuf("no")

function love.draw()
	local width, height = love.graphics.getWidth(), love.graphics.getHeight()
	love.graphics.print("Hello World!", width / 2, height / 2)
  love.graphics.draw(Image, (width - Image_width) / 2, (height- Image_height) / 2)
end

function love.load()
 	Image = love.graphics.newImage("permissions.png")
	Image_width = Image:getWidth()
	Image_height = Image:getHeight()
end

-- show image permission.png before user exit game
function love.quit()
	if love.window.showMessageBox("Quit", "Are you sure you want to quit?", {"yes", "no"}) == 1 then
		print("Thanks for playing. Please play again soon!")
		return false
	else
		return true
	end
end
