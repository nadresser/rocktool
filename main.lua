--[[

new file!

]]
io.stdout:setvbuf("no")

bag = {
	rocks = {


	}

}

roundCounter = 0
pickHistory = {}


function bag:addRock(color)
	bag.rocks[#bag.rocks +1 ] = color
	-- body
end



function bag:showrocks()
	print(table.concat(bag.rocks, ", "))
end

function bag:pickARock()
	pick = bag.rocks[math.random(1,#bag.rocks)]

	print(table.concat(pickHistory, ", "))
	pickHistory[roundCounter] = pick
	
end

function bag:endRound()
	bag.rocks = {}

bag:addRock ("red")
bag:addRock ("white")
roundCounter = roundCounter+1
	if roundCounter == 2 then
		bag:addRock("white")
		bag:addRock("red")
-- this is where on round three we will add the rocks from round 1 and 2
	end
end



math.randomseed(os.time())




-- graphibcal stuff



-- controls

function love.keypressed(key)
	if key == "r" then
		bag:addRock("red")
	elseif key == "w" then
		bag:addRock("white")
	
	elseif key == "e" or 
			key == "return" then
		bag:showrocks()
		bag:pickARock()
		bag:endRound()
		print(roundCounter)
		print(pick)
	end

end


bag:showrocks()

bag:pickARock()



-- game start
bag:addRock("red")
bag:addRock("white")

