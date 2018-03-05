
-----------------------------------------------------------------------------------------
--
-- main.lua
--
-- Created by: Wendi Yu
-- Created on: Mar 2018
-- 
-- This file makes an object scroll across the screen
-----------------------------------------------------------------------------------------

-- hide the status bar
display.setStatusBar(display.HiddenStatusBar)

-- local variables to this entire file
local scrollSpeed = 5
local scrollSpeed1 = 4

-- background image with width and height
local backgroundImage = display.newImageRect("./assets/textures/background.png", 2048, 1536)
backgroundImage.x = display.contentCenterX
backgroundImage.y = display.contentCenterY
backgroundImage.id = "winter background image"

-- character image with width and height
local NinjiaGirl = display.newImageRect("./assets/sprites/Ninjia.png", 500, 500)
NinjiaGirl.x = 0
NinjiaGirl.y = display.contentHeight - 200 -- note I am using not the center but the height of the diaplay
NinjiaGirl.id = "Ninjia Girl"

local Robot = display.newImageRect("./assets/sprites/Robot2.png", 500, 500)
Robot.x = 2048 
Robot.y = display.contentHeight - 200 -- note I am using not the center but the height of the diaplay
Robot.id = "Robot"


local function MoveImage(event)
	-- add the scroll speed to the x-value of the image
    NinjiaGirl.x = NinjiaGirl.x + scrollSpeed
    Robot.x = Robot.x - scrollSpeed1
    Robot.alpha = Robot.alpha - 0.0000000000000001
    print( display.fps )  -- note this displays how fast the current refresh is
end

-- MoveNinjiaGirl will be called at program start over and over (60 frames or times per second)
Runtime:addEventListener("enterFrame", MoveImage)