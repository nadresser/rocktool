--[[

new file!

]]
io.stdout:setvbuf("no")

bag = {
	rocks = {


	}

}

function bag:addRock(color)
	bag.rocks[#bag.rocks +1 ] = color
	-- body
end



function bag:showrocks()
	print(table.concat(bag.rocks, ", "))
end

function bag:pickARock()
	print(bag.rocks[math.random(1, #bag.rocks)])
end

bag:addRock ("red")
bag:addRock ("white")


 --
math.randomseed(os.time())

function bag:empty()
	bag.rocks = {}

bag:addRock ("red")
bag:addRock ("white")

end
-- graphibcal stuff



-- controls

function love.keypressed(key)
	if key == "r" then
		bag:addRock("red")
	elseif key == "w" then
		bag:addRock("white")
	elseif key == "return" then
		bag:showrocks()
		bag:pickARock()
	elseif key == "e" then
		bag:empty()
	end

end


bag:showrocks()

bag:pickARock()

