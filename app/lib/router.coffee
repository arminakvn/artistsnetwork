application = require('application')
# HomeView = require('views/HomeView')
# NetworkView = require('views/NetworkView')
BiosView = require('views/BiosView')
BiosModel = require 'models/biosModel'
BiosCollection = require 'models/biosCollection'
# Bios = new BiosCollection
# Create a Controller, giving it the callbacks for our Router.
# MyController = Marionette.Controller.extend(
#   home: ->
#   profile: ->
# )
# # Instantiate it
# myController = new MyController
# # Pass it into the Router
# myRouter = new (Marionette.AppRouter)(
#   controller: myController
#   appRoutes:
#     'home': 'home'
#     'profile': 'profile')




# MyRouter = Backbone.Marionette.AppRouter.extend(
#   appRoutes: 'some/route': 'someMethod'
#   routes: 'some/otherRoute': 'someOtherMethod'
#   someOtherMethod: ->
#     # do something here.
#     return
# )
# MyController = Marionette.Controller.extend(
#   home: ->
#   profile: ->
# )
# # Instantiate it
# myController = new MyController
# # Pass it into the Router


module.exports = class Router extends Backbone.Marionette.AppRouter
	ViewController = Marionette.Controller.extend(
		bios: ->
			# Bios = new BiosCollection()
			# Bios.fetch
			# 	done: (data) ->
			# 		models: data.toJSON()
			# 		# console.log data.toJSON()
			# 		text = data.toJSON
			# 		# @render
			# 		console.log "bios", Bios
			bv = new BiosView#(collection:Bios)
			application.layout.content.show(bv)
		# network: ->
		# 	nv = new networkkView(collection:text)
		# 	application.layout.content.show(nv)
	)
	ViewController = new ViewController
	controller: ViewController
	appRoutes:
		# '': 'home'
		# 'network': 'network'
		'bios' : 'bios'

	# home: =>
	# 	hv = new HomeView()
	# 	application.layout.content.show(hv)
	
	