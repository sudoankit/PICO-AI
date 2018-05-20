pico-8 cartridge // http://www.pico-8.com
version 16
__lua__
--paddle

padx = 52
pady = 122
padw = 24
padh = 4

--ball

ballx = 64
bally = 64
ballsize = 3
ballxdir = 5
ballydir = -3


function movepaddle()
	if btn(0) then
		padx -= 3
	elseif btn(1) then 
		padx += 3
	end 
end

function moveball()
	ballx += ballxdir
	bally += ballydir
end

function bounceball()

--left

	if ballx < ballsize then
		ballxdir =- ballxdir
		sfx(0)	
	end

	if ballx > 128 - ballsize then
		ballxdir =- ballxdir
		sfx(0)
	end
	
	if bally < ballsize then
		ballydir =- ballydir
		sfx(0)
	end
	
end

	
function _update()
	
	movepaddle()
	bounceball() 
	moveball()	
	
end


function _draw()

	rectfill(0,0,128,128,3)
	
	rectfill(padx,pady,padx+padw,pady+padh,15)
	
	--draw the ball
	circfill(ballx, bally,ballsize,15)

end

__map__
0000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__sfx__
00010000247502775026750277502a750147501f750217500e750117501175004750107500d7500e75006750047501b7502075022750227501d7502c7502c7502a7500975031750257502a7502f7503175036750
