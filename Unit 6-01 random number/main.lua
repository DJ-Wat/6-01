-----------------------------------------------------------------------------------------

--

-- command line Lua

--

-- show how to use an if statement

--  and random numbers

-- DJ Watson, April 1, 2019

-----------------------------------------------------------------------------------------



local answer = display.newImageRect ( "./assets/button.png", 50, 50)
answer.x = display.contentCenterX
answer.y = display.contentCenterY
local answerAsNumber = native.newTextField( display.contentCenterX, display.contentCenterY - 50, 100, 50)
answerAsNumber.id = ("answer textField")

-- io.write(numberToGuess)

local qText = display.newText ( "Pick a number from 1 to 6: ", display.contentCenterX, display.contentCenterY - 150, native.systemFont, 20 )
qText.id = ("question textField")

-- answer=io.read()


local function answerTouch( event )
math.randomseed (os.time())
numberToGuess = math.random( 1, 6 )

	if (numberToGuess == tonumber (answerAsNumber.text)) then
    	local correct = display.newText ( "Correct", display.contentCenterX, display.contentCenterY + 100, native.systemFont, 20)
    	correct:setTextColor (0,1,0)
		print("Answer:", numberToGuess)
		print("Input:", answerAsNumber.text)
	elseif (numberToGuess ~= tonumber (answerAsNumber.text)) then
		local incorrect = display.newText ( "Incorrect", display.contentCenterX, display.contentCenterY + 100, native.systemFont, 20)
		incorrect:setTextColor (1,0,0)
		print("Answer:", numberToGuess)
		print("Input:", answerAsNumber.text)
	end
end

answer:addEventListener('touch', answerTouch)