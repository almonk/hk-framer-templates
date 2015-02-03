plugin.run = (contents, options) ->
	"""
#
# Begin Heroku styles
#

document.body.style.cursor = "auto" # Make Framer act like the web
Framer.Device.deviceType = 'desktop-browser-1440' # Remove to use any other device

# Heroku Dashboard sidebar

hkSidebar = new Layer
  width: 260
  height: Framer.Device.screen.height
  backgroundColor: '#534292'

hkSidebar.style =
  background: '-webkit-linear-gradient(top, #694f89 0%,#534292 100%)'

# Heroku search toolbar
  
hkToolbar = new Layer
  width: Framer.Device.screen.width - hkSidebar.width
  height: 56
  x: hkSidebar.width
  backgroundColor: 'white'

hkToolbar.style =
  boxShadow: '0px 1px 3px rgba(0,0,0,0.1)'
#
# End Heroku styles
#

#{contents}
	"""