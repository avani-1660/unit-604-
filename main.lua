-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------


display.setDefault("background", 0, 235, 0)


local ageTextField = native.newTextField( display.contentCenterX, display.contentCenterY - 100, 250, 50 )
ageTextField.id = "age text Field"

local enterAgeText = display.newText( "Enter your age" , 160, 100, native.systemFont, 20)
enterAgeText.id = "enter age"
enterAgeText:setFillColor( 1, 1, 1)

local dayTextField = native.newTextField( display.contentCenterX, display.contentCenterY + 50, 250, 50 )
dayTextField.id = "day text Field"

local enterDayText = display.newText( "Enter the day" , 160, 250, native.systemFont, 20)
enterDayText.id = "enter day"
enterDayText:setFillColor( 1, 1, 1)

local check = display.newImageRect( "assets/check.png", 150, 100 )
check.x = display.contentCenterX
check.y = 400
check.id = "check button" 

local output = display.newText( " " , 160,10, native.systemFont, 20)
output.id = "output text"
output:setFillColor( 0, 0, 255)

local function checkButtonTouch( event )
	
	local age = tonumber(ageTextField.text)
	local day = dayTextField.text
 
	if (day == "Tuesday" or day == "Thursday") or (age >= 12 and age <= 21) then
		output.text = "You are eligible for student pricing"
	else
		output.text = "You must pay regular price"
	end
end

check:addEventListener( 'touch' , checkButtonTouch)

