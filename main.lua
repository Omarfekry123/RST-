-----------------------------------------------------------------------------------------

--

-- Created by: Matsuru Hoshi

-- Created on: May 22, 2019

--

-- This file contains TypeLearner, a game to pratice your keyboard typing.

-----------------------------------------------------------------------------------------



local background = display.setDefault( "background", 67/255, 53/255, 34/255)



local rect = display.newRect( display.contentCenterX, display.contentCenterY, display.actualContentWidth, display.actualContentHeight)

rect:setFillColor( 0, 0, 0)

rect.alpha = 0



local key = display.newImageRect( "assets/key.png", 150, 150)

key.x = display.contentCenterX

key.y = 190



local enter = display.newImageRect( "assets/enter.png", 50, 50)

enter.x = 370

enter.y = 290



local letterEnterButton = display.newImageRect( "assets/enter2.png", 40, 40)

letterEnterButton.x = 10

letterEnterButton.y = 200



local startButton = display.newImageRect( "assets/start.png", 60, 47)

startButton.x = 475

startButton.y = 180


local windowsButton = display.newImageRect( "assets/windows button.png", 20, 20)

windowsButton.x = 200

windowsButton.y = 70

windowsButton.id = "windows"



local apple = display.newImageRect( "assets/apple.png", 20, 18)

apple.x = 280

apple.y = 70

apple.id = "apple"


local slowEnterButton = display.newImageRect( "assets/enter2.png", 30, 30)

slowEnterButton.x = 310	

slowEnterButton.y = 185

slowEnterButton.alpha = 0



local nameBox = native.newTextField(display.contentCenterX, 290, 170, 30)



local nameText = display.newText( "", display.contentCenterX, 80, "Times", 10)



local letterNumberText = display.newText( "Choose the number \n of letters",1, 130, "Times", 10)



local letterNumberTextBox = native.newTextField( 1, display.contentCenterY, 80, 30)



local osText = display.newText( "Choose your opertating system.", display.contentCenterX, 30, "Times", 10)




local timeUp = display.newText( "", 30, 40, "Times", 10)



local percentage = display.newText( "", 100, 40, "Times", 10)



local slowRect = display.newRect( display.contentCenterX, display.contentCenterY, display.actualContentWidth, display.actualContentHeight)

slowRect:setFillColor( 0, 0, 0)

slowRect.alpha = 0



local slowText = display.newText( "", display.contentCenterX, 140, "Times", 10)



local slowWord = display.newText( "", display.contentCenterX, 157, "Times", 10)



local endText = display.newText( "", display.contentCenterX, 80, "Times", 13)



local correct = 0

local pressed = 0

local percent = 0

local a = 0

local score = 0 

local letters = 0

local name = 0

			    



local function let( event )

	letters = tonumber(letterNumberTextBox.text)

	print(letters)

end



letterEnterButton:addEventListener( "touch", let)



windowsKeys = {}



windowsKeys[1] = {83, 114} -- 1 

windowsKeys[1].id = "49"

windowsKeys[2] = {110, 114} -- 2

windowsKeys[2].id = "50"

windowsKeys[3] = {137, 114} -- 3

windowsKeys[3].id = "51"

windowsKeys[4] = {167, 114} -- 4

windowsKeys[4].id = "52"

windowsKeys[5] = {194, 114} -- 5

windowsKeys[5].id = "53"

windowsKeys[6] = {218, 114} -- 6

windowsKeys[6].id = "54"

windowsKeys[7] = {248, 114} -- 7

windowsKeys[7].id = "55"

windowsKeys[8] = {273, 114} -- 8

windowsKeys[8].id = "56"

windowsKeys[9] = {299, 114} -- 9

windowsKeys[9].id = "57" 

windowsKeys[10] = {329, 114} -- 0

windowsKeys[10].id = "48"

windowsKeys[11] = {97, 143} -- q

windowsKeys[11].id = "81"

windowsKeys[12] = {127, 143} -- w

windowsKeys[12].id = "87"

windowsKeys[13] = {152, 143} -- e

windowsKeys[13].id = "69"

windowsKeys[14] = {180, 143} -- ` r

windowsKeys[14].id = "82"

windowsKeys[15] = {208, 143} -- t

windowsKeys[15].id = "84"

windowsKeys[16] = {233, 143} -- y

windowsKeys[16].id = "89"

windowsKeys[17] = {260, 143} -- u

windowsKeys[17].id = "85"

windowsKeys[18] = {288, 143} -- i

windowsKeys[18].id = "73"

windowsKeys[19] = {315, 143} -- o

windowsKeys[19].id = "79"

windowsKeys[20] = {106, 171.5} -- p

windowsKeys[20].id = "65"

windowsKeys[21] = {132, 171.5} -- a

windowsKeys[21].id = "83"

windowsKeys[22] = {157, 171.5} -- s

windowsKeys[22].id = "68"

windowsKeys[23] = {185, 171.5} -- d

windowsKeys[23].id = "70"

windowsKeys[24] = {213, 171.5} -- f

windowsKeys[24].id = "71"

windowsKeys[25] = {239, 171.5} -- g

windowsKeys[25].id = "72"

windowsKeys[26] = {267, 171.5} -- = h

windowsKeys[26].id = "74"

windowsKeys[27] = {295, 171.5} -- j

windowsKeys[27].id = "75"

windowsKeys[28] = {321, 171.5} -- k

windowsKeys[28].id = "76"

windowsKeys[29] = {119, 200.5} -- num /

windowsKeys[29].id = "90"

windowsKeys[30] = {144, 200.5} -- *

windowsKeys[30].id = "88"

windowsKeys[31] = {171.5, 200.5} -- num -

windowsKeys[31].id = "67"

windowsKeys[32] = {198.5, 200.5} -- tab

windowsKeys[32].id = "86"

windowsKeys[33] = {226, 200.5} -- q

windowsKeys[33].id = "66"

windowsKeys[34] = {253, 200.5} -- w

windowsKeys[34].id = "78"

windowsKeys[35] = {281, 200.5} -- e

windowsKeys[35].id = "77"






macKeys = {}



macKeys[1] = {83, 114} -- escape

macKeys[1].id = "49"

macKeys[2] = {110, 114} -- ~

macKeys[2].id = "50"

macKeys[3] = {137, 114} -- 1

macKeys[3].id = "51"

macKeys[4] = {167, 114} -- 2

macKeys[4].id = "52"

macKeys[5] = {194, 114} -- 3

macKeys[5].id = "53"

macKeys[6] = {218, 114} -- 4

macKeys[6].id = "54"

macKeys[7] = {248, 114} -- 5

macKeys[7].id = "55"

macKeys[8] = {273, 114} -- 6

macKeys[8].id = "56"

macKeys[9] = {299, 114} -- 7

macKeys[9].id = "57"

macKeys[10] = {329, 114} -- 8

macKeys[10].id = "48"

macKeys[11] = {97, 143} -- 9

macKeys[11].id = "81"

macKeys[12] = {127, 143} -- 0

macKeys[12].id = "87"

macKeys[13] = {152, 143} -- -

macKeys[13].id = "69"

macKeys[14] = {180, 143} -- =

macKeys[14].id = "82"

macKeys[15] = {208, 143} -- delete back

macKeys[15].id = "84"

macKeys[16] = {233, 143} -- tab

macKeys[16].id = "89"

macKeys[17] = {260, 143} -- q

macKeys[17].id = "85"

macKeys[18] = {288, 143} -- w

macKeys[18].id = "73"

macKeys[19] = {315, 143} -- e

macKeys[19].id = "79"

macKeys[20] = {106, 171.5} -- r

macKeys[20].id = "65"

macKeys[21] = {132, 171.5} -- t

macKeys[21].id = "83"

macKeys[22] = {157, 171.5} -- y

macKeys[22].id = "68"

macKeys[23] = {185, 171.5} -- u

macKeys[23].id = "70"

macKeys[24] = {213, 171.5} -- i

macKeys[24].id = "71"

macKeys[25] = {239, 171.5} -- o

macKeys[25].id = "72"

macKeys[26] = {267, 171.5} -- p

macKeys[26].id = "74"

macKeys[27] = {295, 171.5} -- [ }

macKeys[27].id = "75"

macKeys[28] = {321, 171.5} -- ] }

macKeys[28].id = "76"

macKeys[29] = {119, 200.5} -- | \

macKeys[29].id = "90"

macKeys[30] = {144, 200.5} -- caps lock

macKeys[30].id = "88"

macKeys[31] = {171.5, 200.5} -- a

macKeys[31].id = "67"

macKeys[32] = {198.5, 200.5} -- s

macKeys[32].id = "86"

macKeys[33] = {226, 200.5} -- d

macKeys[33].id = "66"

macKeys[34] = {253, 200.5} -- f

macKeys[34].id = "78"

macKeys[35] = {281, 200.5} -- g

macKeys[35].id = "77"




-- Words to be used if 20 twenty keys are pressed. Look at slowDown() on line 337.

words = {"play", "name", "die", "sleep", "hello", 

"amazing", "what", "continue", "felow", "soccer", "back", "really", 

"go away", "inside", "goooo", "breakfast", "extraordinary"} 



--print (t[40].id)

--print( t[2][1])



--local myTable = { 'a', 'b', 'c', 'd' }



--i = math.random(1, 2)

--print(t[i][1])

--print(t[i][2])

--print( t[ math.random( #t ) ] )



-- To check if namePrint() has been called on start()

local functCheck = 0

local functCheck2 = 0

local functCheck3 = 0

local functCheck4 = 0

local functCheck5 = 0

-- To check if start() has been called on



--local function keys( event )

--	if (event.keyName == "a" or event.keyName == "j") and (event.phase == "down") then

--		print("Key '".. event.keyName .. "' was pressed " .. event.phase)

--		return true

--	end

--end



local function macCheck( event )

	windowsKeys = nil

	print("You are running macOS")

end



local function windowsCheck( event )

	macKeys = nil

	print("You are running Windows")	

end



local function namePrint( event )

	if (nameBox.text ~= "") then

		nameText.text = "Hi, ".. nameBox.text ..". Welcome!"

		print("name")

		name = nameBox.text

		functCheck = functCheck + 1

		nameText:setFillColor( 1, 1, 1)

	else

		functCheck2 = functCheck2 +1

		print("write your name")

		nameText.text = "Write your name."

	end

end

	

local function finish()

	display.remove(timeUp)

	display.remove(keyboard)

	display.remove(light)

	display.remove(percentage)

	rect.alpha = 1

	score = (correct / a) * 100

	endText.text = "You got a score of: " .. math.round(score) 

end

local function slowCheck( event )

	if (slowTextBox.text == tostring(words[r])) then

		slowRect.alpha = 0

		display.remove(slowTextBox)

		slowText.text = ""

		slowWord.text = ""

		slowEnterButton.alpha = 0

		light.alpha = 0.5

	end

end



local function slowDown()

	r = math.random(1, 17)

	slowRect.alpha = 0.9

	slowTextBox = native.newTextField( display.contentCenterX, 185, 100, 13	)

	native.setKeyboardFocus( slowTextBox )

	slowText.text = "Type the following word to continue."

	slowWord.text = tostring(words[r])

	slowEnterButton.alpha = 1

	light.alpha = 0

	slowEnterButton:addEventListener( "touch", slowCheck)

	print("hey whats up!!")

end







local function keyCheck()

	local function keys( event )

		if (windowsKeys == nil) then

			if ((tostring(event.nativeKeyCode) == macKeys[i].id) and (event.phase == "down")) then

				print(event.nativeKeyCode)

				correct = correct + 1

				print("correct : " .. correct)

				i = math.random(1, 35)

				x = macKeys[i][1]

				y = macKeys[i][2]

				light.x = x

				light.y = y

			end

		elseif ((tostring(event.nativeKeyCode) == windowsKeys[i].id) and (event.phase == "down")) then

			correct = correct + 1

			print("correct : " .. correct)

			i = math.random(1, 35)

			x = windowsKeys[i][1]

			y = windowsKeys[i][2]

			light.x = x

			light.y = y

		end

		if (event.phase == "down") then

			pressed = pressed + 1

			percent = (correct / pressed) * 100

			percentage.text = "Accuracy: " .. math.round(percent) .. "%"

			print("pressed: ".. pressed)

			--print("Current Key keyCode: ".. event.nativeKeyCode)

			functCheck5	= functCheck5 + 1

			if (pressed == letters) then

				finish()

				local f = display.newImageRect( "assets/testmark.png", 150, 150)

				f:write(name .. ", your accuracy is: ".. percent .. " \n")

				f:write(name .. ", your time is: " .. a .. " \n")

				f:write(name .. ", your number of correct letters is: ".. correct .. " \n")

				f:write(name .. ", your number of pressed letters is: ".. pressed .. " \n")

			    f:close()

			end

			if ((pressed ~= letters) and ((pressed % 20) == 0)) then

				slowDown()

			end

		end

	end

	Runtime:addEventListener( "key", keys)

end



local function createLight()

	-- local x = table stuff

	-- local y = table stuff 

	--x = t[ math.random( t[1][1], t[2][1] ) ] 

	--y = t[ math.random( t[1][2], t[2][2] ) ] 

	--print(x)

	--print(y)

	--a = "63, 81"

	--tonumber(a)

	if (windowsKeys == nil ) then

		i = math.random(1, 35)

		x = macKeys[i][1]

		y = macKeys[i][2]

		light = display.newRoundedRect( x, y, 17, 17, 2)

		light:setFillColor( 0, 0, 0)

		light.alpha = 0.5

	elseif (macKeys == nil) then

		--i = math.random(1, 40)

		--x = windowsKeys[i][1]

		--y = windowsKeys[i][2]

		light = display.newRoundedRect( 377, 180.5, 17, 17, 2)

		light:setFillColor( 0, 0, 0)

		light.alpha = 0.5

	end

	keyCheck()

end



--local function continue()

--	if (functCheck5 >= 1) then

--		print("functCkeck5: "..functCheck5)

--		print("dfd:".. pressed)

--		if (pressed >= 1) then

--			print("dfd")

--			i = math.random(1, 40)

--			x = t[i][1]

--			y = t[i][2]

--			light.x = x

--			light.y = y

--		end

--	end

--end



local function game()

	if (functCheck3 >= 1) then

		createLight()

	end

	functCheck4 = functCheck4 + 1

	print("functCheck4: " .. functCheck4)

	--continue()

end 



local function time()

	-- a is the time in seconds. It is created on line 56.

	a = a + 1

	print("a: "..a)

	timeUp.text = "Timer: " .. a

	--percent = (correct / pressed) * 100

	--percentage.text = "Accuracy: " .. math.round(percent) .. "%"

	--display.newText("Timer: " .. a .. 

end



local function start( event )

	if (functCheck >= 1) then

		display.remove(startButton)

		display.remove(enterButon)

		display.remove(nameBox)

		display.remove(nameText)

		display.remove(intstructionText)

		display.remove(osText)

		display.remove(windowsButton)

		display.remove(appleButton)

		display.remove(letterNumberText)

		display.remove(letterNumberTextBox)

		display.remove(letterEnterButton)

		key.y = 150

		key.width = 400

		key.height = 222

		timer.performWithDelay( 1000, time, 0)

		functCheck3 = functCheck3 + 1

	elseif (functCheck2 >= 1) then

		nameText:setFillColor( 1, 0, 0)

	else 

		nameText.text = "Write your name."

		print(functCheck)

		print(functCheck2)

	end

	timer.performWithDelay( 1000, game )

end



apple:addEventListener( "touch", macCheck)

windowsButton:addEventListener( "touch", windowsCheck)

enter:addEventListener( "touch", namePrint)

startButton:addEventListener( "touch", start)





---- Called when a key event has been received

--local function onKeyEvent( event )

--    local message = "Key '" .. event.keyName .. "' has key code: " .. tostring( event.nativeKeyCode )

--    print( message )

--    print( event.nativeKeyCode)

--    return false

--end

-- 

---- Add the key event listener

--Runtime:addEventListener( "key", onKeyEvent )----