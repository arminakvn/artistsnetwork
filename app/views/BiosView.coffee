application = require('application')
BiosModel = require 'models/biosModel'
BiosCollection = require 'models/biosCollection'
# Bios = new BiosCollection
BioView = require 'views/BioView'	
# bioView = new BioView()

module.exports = class BiosView extends Backbone.Marionette.LayoutView
	template: 'views/templates/bios'
	id: 'bios'
	$el: $('#bios')
	
	#shoud be bios
	# childView: bioView

	initialize: ->
		# Bios.fetch
		# 	success: (data) =>
		# 		# models: data.toJSON()
		# 		console.log data.toJSON()
		# 		text = data.toJSON
		# 		@render
		# @regionManager.addRegion {regionBios: "#region-bios"}
		# Bios.fetch
		# 	success: (data) =>
		# 		models: data.toJSON()
		# 	done: (data)->
		# 		console.log "Bios view"
		# 		@collection = Bios
		# 		console.log "Nodes", Bios
		# 	@collection = Bios	
		# @listenTo(@model, "add:foo", @modelChanged);
    	# @listenTo(@collection, "add", @render)
	
	onShow: ->
		$(document).ready =>
			# @el = $('#region-bios')
			d3.json 'http://localhost:3001/bios', (error, text) =>
				console.log "text", text

		# text = []
		# for models in @collection.models
		# 	console.log models
		# 	text.push @model.attribute.FirstParagraph
		# console.log text
		# console.log @collection
		# for models in @collection.models
			# console.log models
				_margin = 
					t: 20
					l: 30
					b: 30
					r: 30
				width = 800
				height = 800
				Height = height
				Width = width
				# @el = $('#region-bios')
				@_textDomEl = document.createElement('div')
				# console.log "@el", @el
				@el = @$el
				@el.append @_textDomEl
				# $(@_textDomEl).attr( "id", "#{@id}" )
				@_textDomObj = $(@_textDomEl).attr( "id", "#{@id}" )
				@_textDomObj.css('width', Width/2)
				@_textDomObj.css('height', Height)
				@_textDomObj.css('background-color', 'white')
				@_textDomObj.css('overflow', 'visibile')
				
				# console.log "@text", text
				@_d3text = d3.select(@_textDomEl).append('div').attr("width", width + _margin.l + _margin.r).attr("height", height + _margin.t + _margin.b)#.append("g")
				.attr("transform", "translate(" + _margin.l + "," + _margin.t + ")")
				.append("ul").style("list-style-type", "none").style("padding-left", "0px")
				.attr("width", Width/3 )
				.attr("height", Height-80)
				@_d3li = @_d3text
				.selectAll("li")
			    .data(text)
			    .enter()
			    .append("li")
			    @_d3li.style("font-family", "Helvetica")
			    .style("line-height", "2")
			    .style("border", "0px solid gray")
			    .style("margin-top", "15px")
			    .style("padding-top", "15px")
			    .style("padding-bottom", "15px")
			    .style("padding-right", "20px")
			    .style("padding-left", "40px")
			    .attr("id", (d, i) =>
			       	"line-#{i}" 
			     	)
			    .text((d,i) =>
			      # console.log d
			      	d.FirstParagraph   
			    	)
			    .style("font-size", "12px")
			    .style("color", "rgb(72,72,72)" )
			    .on("mouseover", (d,i) ->
			      	console.log @, this
			      	$(this).css('cursor','pointer')
			      	d3.select(this).transition().duration(0).style("color", "black").style("background-color", "rgb(208,208,208) ").style "opacity", 1
			      	return 
			     ).on("mouseenter", (d,i) =>
			      	console.log "@stttttttt", this
			      	id = "line-#{i}"
			      	# @addNode(d)
			      	# @addLink(1, 1)
			      	application.vent.trigger "addNodes", d
			     ).on("mouseout", (d,i) ->
			      	d3.select(this).transition().duration(1000).style("color", "rgb(72,72,72)").style("background-color", "white").style "opacity", 1
			      	return
			    )  
			    .transition().duration(1).delay(1).style("opacity", 1)
		