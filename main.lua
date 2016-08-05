
local composer = require( "composer" )

-- Hide status bar
display.setStatusBar( display.HiddenStatusBar )

-- Seed the random number generator
math.randomseed( os.time() )

-- Include Corona Ads
local coronaAds = require( "plugin.coronaAds" )
local apiKey = ""

-- Corona Ads listener function
local function adListener( event )

	-- Successful initialization of Corona Ads
	if ( event.phase == "init" ) then
		composer.setVariable( "coronaAdsInitialized", true )
	end
end

-- Initialize Corona Ads
coronaAds.init( apiKey, adListener )

-- Reserve channel 1 for background music
audio.reserveChannels( 1 )
-- Reduce the overall volume of the channel
audio.setVolume( 0.5, { channel=1 } )

-- Go to the menu screen
composer.gotoScene( "menu" )
