application = require('application')

application.module 'PersonModule', (PersonModule, App, Backbone, Marionette, $, _) ->
  @startWithParent = false
  PersonModule.Controller =

      PersonModule: =>
        console.log "makePersonModule"
        return
      Location: =>
        application.ViewController.network()
        
        


      # write methods
      # # getAllNodes
      # # getNodesBy(name, value)

  class PersonModule.Router extends Marionette.AppRouter
    appRoutes:
      "PersonModule" : "PersonModule"
      'location' : 'Location'

  API = 

    PersonModule: () ->
      PersonModule.Controller.PersonModule()   

    Location: () ->
      application.vent.trigger "network"
      

  PersonModule.addInitializer ->
    new PersonModule.Router
      controller: API 
  PersonModule.addInitializer ->
    module.exports = class PersonView extends Backbone.Marionette.LayoutView
          template: 'views/templates/person'
          id: 'person-graph'
          el: '#person-graph'
          # ui: 'switch-person' : '#person-graph'
          # triggers: 'click @ui.switch-person' : 'switch-person:do:view'
          # regions:
          #   person: "#person-graph"
        initialize: ->
        onShow: ->
            $(document).ready =>
            links = [
              {
                'source': 0
                'target': 1
                'value': 2
              }
              {
                'source': 0
                'target': 3
                'value': 2
              }
              {
                'source': 0
                'target': 24
                'value': 2
              }
              {
                'source': 0
                'target': 50
                'value': 2
              }
              {
                'source': 0
                'target': 53
                'value': 2
              }
              {
                'source': 0
                'target': 54
                'value': 2
              }
              {
                'source': 0
                'target': 59
                'value': 2
              }
              {
                'source': 0
                'target': 65
                'value': 3
              }
              {
                'source': 0
                'target': 68
                'value': 2
              }
              {
                'source': 0
                'target': 73
                'value': 2
              }
              {
                'source': 0
                'target': 94
                'value': 2
              }
              {
                'source': 0
                'target': 97
                'value': 2
              }
              {
                'source': 1
                'target': 3
                'value': 2
              }
              {
                'source': 1
                'target': 7
                'value': 2
              }
              {
                'source': 1
                'target': 24
                'value': 2
              }
              {
                'source': 1
                'target': 50
                'value': 2
              }
              {
                'source': 1
                'target': 53
                'value': 2
              }
              {
                'source': 1
                'target': 54
                'value': 2
              }
              {
                'source': 1
                'target': 59
                'value': 2
              }
              {
                'source': 1
                'target': 60
                'value': 2
              }
              {
                'source': 1
                'target': 65
                'value': 2
              }
              {
                'source': 1
                'target': 68
                'value': 2
              }
              {
                'source': 1
                'target': 73
                'value': 2
              }
              {
                'source': 1
                'target': 94
                'value': 2
              }
              {
                'source': 1
                'target': 97
                'value': 2
              }
              {
                'source': 1
                'target': 98
                'value': 2
              }
              {
                'source': 2
                'target': 4
                'value': 2
              }
              {
                'source': 2
                'target': 99
                'value': 2
              }
              {
                'source': 3
                'target': 5
                'value': 2
              }
              {
                'source': 3
                'target': 6
                'value': 2
              }
              {
                'source': 3
                'target': 19
                'value': 2
              }
              {
                'source': 3
                'target': 24
                'value': 3
              }
              {
                'source': 3
                'target': 25
                'value': 2
              }
              {
                'source': 3
                'target': 26
                'value': 2
              }
              {
                'source': 3
                'target': 30
                'value': 2
              }
              {
                'source': 3
                'target': 31
                'value': 2
              }
              {
                'source': 3
                'target': 100
                'value': 2
              }
              {
                'source': 3
                'target': 34
                'value': 2
              }
              {
                'source': 3
                'target': 39
                'value': 2
              }
              {
                'source': 3
                'target': 41
                'value': 2
              }
              {
                'source': 3
                'target': 42
                'value': 2
              }
              {
                'source': 3
                'target': 49
                'value': 2
              }
              {
                'source': 3
                'target': 50
                'value': 2
              }
              {
                'source': 3
                'target': 52
                'value': 2
              }
              {
                'source': 3
                'target': 53
                'value': 3
              }
              {
                'source': 3
                'target': 54
                'value': 2
              }
              {
                'source': 3
                'target': 56
                'value': 2
              }
              {
                'source': 3
                'target': 59
                'value': 3
              }
              {
                'source': 3
                'target': 60
                'value': 2
              }
              {
                'source': 3
                'target': 65
                'value': 2
              }
              {
                'source': 3
                'target': 66
                'value': 2
              }
              {
                'source': 3
                'target': 68
                'value': 2
              }
              {
                'source': 3
                'target': 69
                'value': 4
              }
              {
                'source': 3
                'target': 70
                'value': 2
              }
              {
                'source': 3
                'target': 72
                'value': 2
              }
              {
                'source': 3
                'target': 73
                'value': 2
              }
              {
                'source': 3
                'target': 101
                'value': 2
              }
              {
                'source': 3
                'target': 82
                'value': 2
              }
              {
                'source': 3
                'target': 84
                'value': 2
              }
              {
                'source': 3
                'target': 86
                'value': 2
              }
              {
                'source': 3
                'target': 102
                'value': 2
              }
              {
                'source': 3
                'target': 89
                'value': 2
              }
              {
                'source': 3
                'target': 91
                'value': 4
              }
              {
                'source': 3
                'target': 93
                'value': 4
              }
              {
                'source': 3
                'target': 94
                'value': 5
              }
              {
                'source': 3
                'target': 103
                'value': 3
              }
              {
                'source': 3
                'target': 97
                'value': 3
              }
              {
                'source': 3
                'target': 104
                'value': 3
              }
              {
                'source': 4
                'target': 5
                'value': 3
              }
              {
                'source': 4
                'target': 32
                'value': 2
              }
              {
                'source': 4
                'target': 38
                'value': 3
              }
              {
                'source': 4
                'target': 39
                'value': 3
              }
              {
                'source': 4
                'target': 80
                'value': 2
              }
              {
                'source': 4
                'target': 99
                'value': 7
              }
              {
                'source': 5
                'target': 6
                'value': 2
              }
              {
                'source': 5
                'target': 32
                'value': 3
              }
              {
                'source': 5
                'target': 38
                'value': 4
              }
              {
                'source': 5
                'target': 39
                'value': 5
              }
              {
                'source': 5
                'target': 80
                'value': 4
              }
              {
                'source': 5
                'target': 99
                'value': 3
              }
              {
                'source': 5
                'target': 94
                'value': 2
              }
              {
                'source': 5
                'target': 105
                'value': 3
              }
              {
                'source': 5
                'target': 104
                'value': 2
              }
              {
                'source': 6
                'target': 39
                'value': 2
              }
              {
                'source': 6
                'target': 104
                'value': 2
              }
              {
                'source': 7
                'target': 40
                'value': 2
              }
              {
                'source': 7
                'target': 57
                'value': 2
              }
              {
                'source': 7
                'target': 106
                'value': 2
              }
              {
                'source': 7
                'target': 63
                'value': 2
              }
              {
                'source': 7
                'target': 68
                'value': 2
              }
              {
                'source': 7
                'target': 83
                'value': 2
              }
              {
                'source': 7
                'target': 94
                'value': 3
              }
              {
                'source': 7
                'target': 107
                'value': 2
              }
              {
                'source': 7
                'target': 108
                'value': 2
              }
              {
                'source': 7
                'target': 104
                'value': 2
              }
              {
                'source': 8
                'target': 89
                'value': 2
              }
              {
                'source': 9
                'target': 31
                'value': 3
              }
              {
                'source': 9
                'target': 53
                'value': 2
              }
              {
                'source': 9
                'target': 59
                'value': 2
              }
              {
                'source': 9
                'target': 68
                'value': 2
              }
              {
                'source': 9
                'target': 72
                'value': 2
              }
              {
                'source': 9
                'target': 78
                'value': 2
              }
              {
                'source': 9
                'target': 79
                'value': 2
              }
              {
                'source': 9
                'target': 85
                'value': 2
              }
              {
                'source': 9
                'target': 109
                'value': 2
              }
              {
                'source': 9
                'target': 95
                'value': 2
              }
              {
                'source': 9
                'target': 96
                'value': 2
              }
              {
                'source': 9
                'target': 104
                'value': 2
              }
              {
                'source': 9
                'target': 110
                'value': 2
              }
              {
                'source': 10
                'target': 40
                'value': 2
              }
              {
                'source': 10
                'target': 51
                'value': 2
              }
              {
                'source': 10
                'target': 111
                'value': 2
              }
              {
                'source': 10
                'target': 89
                'value': 3
              }
              {
                'source': 11
                'target': 19
                'value': 2
              }
              {
                'source': 11
                'target': 20
                'value': 2
              }
              {
                'source': 12
                'target': 84
                'value': 2
              }
              {
                'source': 12
                'target': 94
                'value': 2
              }
              {
                'source': 13
                'target': 90
                'value': 3
              }
              {
                'source': 13
                'target': 112
                'value': 3
              }
              {
                'source': 14
                'target': 108
                'value': 2
              }
              {
                'source': 15
                'target': 33
                'value': 2
              }
              {
                'source': 15
                'target': 48
                'value': 2
              }
              {
                'source': 15
                'target': 68
                'value': 2
              }
              {
                'source': 15
                'target': 84
                'value': 2
              }
              {
                'source': 15
                'target': 113
                'value': 2
              }
              {
                'source': 16
                'target': 22
                'value': 2
              }
              {
                'source': 16
                'target': 48
                'value': 3
              }
              {
                'source': 16
                'target': 63
                'value': 2
              }
              {
                'source': 16
                'target': 114
                'value': 3
              }
              {
                'source': 17
                'target': 31
                'value': 2
              }
              {
                'source': 17
                'target': 57
                'value': 2
              }
              {
                'source': 17
                'target': 88
                'value': 2
              }
              {
                'source': 17
                'target': 93
                'value': 2
              }
              {
                'source': 17
                'target': 96
                'value': 2
              }
              {
                'source': 17
                'target': 104
                'value': 2
              }
              {
                'source': 18
                'target': 41
                'value': 2
              }
              {
                'source': 19
                'target': 24
                'value': 2
              }
              {
                'source': 19
                'target': 37
                'value': 2
              }
              {
                'source': 19
                'target': 41
                'value': 2
              }
              {
                'source': 19
                'target': 48
                'value': 2
              }
              {
                'source': 19
                'target': 50
                'value': 2
              }
              {
                'source': 19
                'target': 58
                'value': 2
              }
              {
                'source': 19
                'target': 62
                'value': 2
              }
              {
                'source': 19
                'target': 68
                'value': 2
              }
              {
                'source': 19
                'target': 75
                'value': 3
              }
              {
                'source': 19
                'target': 81
                'value': 2
              }
              {
                'source': 19
                'target': 102
                'value': 2
              }
              {
                'source': 19
                'target': 113
                'value': 2
              }
              {
                'source': 19
                'target': 115
                'value': 2
              }
              {
                'source': 19
                'target': 93
                'value': 2
              }
              {
                'source': 19
                'target': 103
                'value': 2
              }
              {
                'source': 19
                'target': 116
                'value': 2
              }
              {
                'source': 20
                'target': 22
                'value': 2
              }
              {
                'source': 20
                'target': 36
                'value': 2
              }
              {
                'source': 20
                'target': 37
                'value': 2
              }
              {
                'source': 20
                'target': 45
                'value': 2
              }
              {
                'source': 20
                'target': 73
                'value': 2
              }
              {
                'source': 20
                'target': 79
                'value': 2
              }
              {
                'source': 20
                'target': 113
                'value': 2
              }
              {
                'source': 21
                'target': 117
                'value': 2
              }
              {
                'source': 22
                'target': 31
                'value': 2
              }
              {
                'source': 22
                'target': 36
                'value': 2
              }
              {
                'source': 22
                'target': 41
                'value': 2
              }
              {
                'source': 22
                'target': 45
                'value': 3
              }
              {
                'source': 22
                'target': 46
                'value': 4
              }
              {
                'source': 22
                'target': 48
                'value': 2
              }
              {
                'source': 22
                'target': 49
                'value': 2
              }
              {
                'source': 22
                'target': 52
                'value': 2
              }
              {
                'source': 22
                'target': 53
                'value': 3
              }
              {
                'source': 22
                'target': 59
                'value': 2
              }
              {
                'source': 22
                'target': 63
                'value': 2
              }
              {
                'source': 22
                'target': 73
                'value': 2
              }
              {
                'source': 22
                'target': 79
                'value': 3
              }
              {
                'source': 22
                'target': 118
                'value': 2
              }
              {
                'source': 23
                'target': 94
                'value': 2
              }
              {
                'source': 24
                'target': 41
                'value': 2
              }
              {
                'source': 24
                'target': 42
                'value': 2
              }
              {
                'source': 24
                'target': 50
                'value': 2
              }
              {
                'source': 24
                'target': 51
                'value': 2
              }
              {
                'source': 24
                'target': 53
                'value': 2
              }
              {
                'source': 24
                'target': 54
                'value': 2
              }
              {
                'source': 24
                'target': 59
                'value': 2
              }
              {
                'source': 24
                'target': 65
                'value': 2
              }
              {
                'source': 24
                'target': 68
                'value': 2
              }
              {
                'source': 24
                'target': 73
                'value': 2
              }
              {
                'source': 24
                'target': 119
                'value': 2
              }
              {
                'source': 24
                'target': 120
                'value': 2
              }
              {
                'source': 24
                'target': 93
                'value': 2
              }
              {
                'source': 24
                'target': 94
                'value': 2
              }
              {
                'source': 24
                'target': 103
                'value': 2
              }
              {
                'source': 24
                'target': 97
                'value': 2
              }
              {
                'source': 25
                'target': 34
                'value': 2
              }
              {
                'source': 26
                'target': 49
                'value': 2
              }
              {
                'source': 26
                'target': 52
                'value': 2
              }
              {
                'source': 26
                'target': 66
                'value': 2
              }
              {
                'source': 26
                'target': 69
                'value': 2
              }
              {
                'source': 27
                'target': 121
                'value': 2
              }
              {
                'source': 28
                'target': 108
                'value': 2
              }
              {
                'source': 28
                'target': 122
                'value': 2
              }
              {
                'source': 29
                'target': 46
                'value': 2
              }
              {
                'source': 29
                'target': 123
                'value': 2
              }
              {
                'source': 29
                'target': 124
                'value': 2
              }
              {
                'source': 30
                'target': 59
                'value': 2
              }
              {
                'source': 30
                'target': 70
                'value': 2
              }
              {
                'source': 30
                'target': 73
                'value': 2
              }
              {
                'source': 30
                'target': 89
                'value': 2
              }
              {
                'source': 30
                'target': 93
                'value': 2
              }
              {
                'source': 31
                'target': 52
                'value': 2
              }
              {
                'source': 31
                'target': 53
                'value': 3
              }
              {
                'source': 31
                'target': 55
                'value': 2
              }
              {
                'source': 31
                'target': 63
                'value': 2
              }
              {
                'source': 31
                'target': 68
                'value': 2
              }
              {
                'source': 31
                'target': 72
                'value': 2
              }
              {
                'source': 31
                'target': 79
                'value': 2
              }
              {
                'source': 31
                'target': 85
                'value': 2
              }
              {
                'source': 31
                'target': 125
                'value': 2
              }
              {
                'source': 31
                'target': 93
                'value': 2
              }
              {
                'source': 31
                'target': 97
                'value': 2
              }
              {
                'source': 31
                'target': 109
                'value': 2
              }
              {
                'source': 31
                'target': 95
                'value': 2
              }
              {
                'source': 31
                'target': 104
                'value': 2
              }
              {
                'source': 32
                'target': 38
                'value': 2
              }
              {
                'source': 32
                'target': 39
                'value': 3
              }
              {
                'source': 32
                'target': 99
                'value': 2
              }
              {
                'source': 33
                'target': 61
                'value': 2
              }
              {
                'source': 33
                'target': 68
                'value': 2
              }
              {
                'source': 33
                'target': 83
                'value': 2
              }
              {
                'source': 33
                'target': 84
                'value': 2
              }
              {
                'source': 33
                'target': 113
                'value': 2
              }
              {
                'source': 33
                'target': 126
                'value': 2
              }
              {
                'source': 34
                'target': 117
                'value': 2
              }
              {
                'source': 35
                'target': 48
                'value': 2
              }
              {
                'source': 36
                'target': 37
                'value': 2
              }
              {
                'source': 36
                'target': 40
                'value': 2
              }
              {
                'source': 36
                'target': 41
                'value': 2
              }
              {
                'source': 36
                'target': 42
                'value': 2
              }
              {
                'source': 36
                'target': 45
                'value': 2
              }
              {
                'source': 36
                'target': 53
                'value': 2
              }
              {
                'source': 36
                'target': 58
                'value': 4
              }
              {
                'source': 36
                'target': 59
                'value': 2
              }
              {
                'source': 36
                'target': 61
                'value': 2
              }
              {
                'source': 36
                'target': 73
                'value': 2
              }
              {
                'source': 36
                'target': 76
                'value': 2
              }
              {
                'source': 36
                'target': 79
                'value': 2
              }
              {
                'source': 36
                'target': 91
                'value': 2
              }
              {
                'source': 36
                'target': 113
                'value': 2
              }
              {
                'source': 36
                'target': 98
                'value': 2
              }
              {
                'source': 37
                'target': 40
                'value': 2
              }
              {
                'source': 37
                'target': 48
                'value': 2
              }
              {
                'source': 37
                'target': 68
                'value': 2
              }
              {
                'source': 37
                'target': 73
                'value': 2
              }
              {
                'source': 37
                'target': 113
                'value': 2
              }
              {
                'source': 38
                'target': 39
                'value': 4
              }
              {
                'source': 38
                'target': 80
                'value': 3
              }
              {
                'source': 38
                'target': 99
                'value': 3
              }
              {
                'source': 38
                'target': 105
                'value': 2
              }
              {
                'source': 39
                'target': 80
                'value': 3
              }
              {
                'source': 39
                'target': 99
                'value': 3
              }
              {
                'source': 39
                'target': 94
                'value': 2
              }
              {
                'source': 39
                'target': 105
                'value': 2
              }
              {
                'source': 39
                'target': 104
                'value': 2
              }
              {
                'source': 40
                'target': 48
                'value': 2
              }
              {
                'source': 40
                'target': 49
                'value': 2
              }
              {
                'source': 40
                'target': 51
                'value': 3
              }
              {
                'source': 40
                'target': 64
                'value': 2
              }
              {
                'source': 40
                'target': 68
                'value': 2
              }
              {
                'source': 40
                'target': 73
                'value': 2
              }
              {
                'source': 40
                'target': 101
                'value': 2
              }
              {
                'source': 40
                'target': 127
                'value': 2
              }
              {
                'source': 40
                'target': 89
                'value': 3
              }
              {
                'source': 40
                'target': 126
                'value': 2
              }
              {
                'source': 40
                'target': 94
                'value': 2
              }
              {
                'source': 40
                'target': 116
                'value': 2
              }
              {
                'source': 41
                'target': 42
                'value': 2
              }
              {
                'source': 41
                'target': 46
                'value': 2
              }
              {
                'source': 41
                'target': 53
                'value': 2
              }
              {
                'source': 41
                'target': 58
                'value': 2
              }
              {
                'source': 41
                'target': 59
                'value': 2
              }
              {
                'source': 41
                'target': 61
                'value': 2
              }
              {
                'source': 41
                'target': 91
                'value': 2
              }
              {
                'source': 41
                'target': 113
                'value': 2
              }
              {
                'source': 41
                'target': 103
                'value': 2
              }
              {
                'source': 41
                'target': 96
                'value': 2
              }
              {
                'source': 42
                'target': 50
                'value': 2
              }
              {
                'source': 42
                'target': 115
                'value': 2
              }
              {
                'source': 42
                'target': 93
                'value': 2
              }
              {
                'source': 42
                'target': 98
                'value': 3
              }
              {
                'source': 43
                'target': 71
                'value': 2
              }
              {
                'source': 43
                'target': 94
                'value': 2
              }
              {
                'source': 44
                'target': 128
                'value': 2
              }
              {
                'source': 45
                'target': 49
                'value': 2
              }
              {
                'source': 45
                'target': 52
                'value': 2
              }
              {
                'source': 45
                'target': 53
                'value': 2
              }
              {
                'source': 45
                'target': 79
                'value': 2
              }
              {
                'source': 46
                'target': 53
                'value': 2
              }
              {
                'source': 46
                'target': 129
                'value': 2
              }
              {
                'source': 46
                'target': 79
                'value': 2
              }
              {
                'source': 46
                'target': 118
                'value': 2
              }
              {
                'source': 47
                'target': 117
                'value': 2
              }
              {
                'source': 48
                'target': 53
                'value': 2
              }
              {
                'source': 48
                'target': 63
                'value': 3
              }
              {
                'source': 48
                'target': 68
                'value': 2
              }
              {
                'source': 48
                'target': 113
                'value': 2
              }
              {
                'source': 49
                'target': 53
                'value': 2
              }
              {
                'source': 49
                'target': 87
                'value': 2
              }
              {
                'source': 50
                'target': 53
                'value': 2
              }
              {
                'source': 50
                'target': 54
                'value': 2
              }
              {
                'source': 50
                'target': 59
                'value': 2
              }
              {
                'source': 50
                'target': 60
                'value': 2
              }
              {
                'source': 50
                'target': 65
                'value': 2
              }
              {
                'source': 50
                'target': 68
                'value': 2
              }
              {
                'source': 50
                'target': 73
                'value': 2
              }
              {
                'source': 50
                'target': 75
                'value': 2
              }
              {
                'source': 50
                'target': 94
                'value': 2
              }
              {
                'source': 50
                'target': 97
                'value': 2
              }
              {
                'source': 50
                'target': 130
                'value': 2
              }
              {
                'source': 50
                'target': 98
                'value': 2
              }
              {
                'source': 51
                'target': 68
                'value': 2
              }
              {
                'source': 51
                'target': 131
                'value': 2
              }
              {
                'source': 51
                'target': 132
                'value': 2
              }
              {
                'source': 51
                'target': 127
                'value': 2
              }
              {
                'source': 51
                'target': 89
                'value': 2
              }
              {
                'source': 51
                'target': 120
                'value': 2
              }
              {
                'source': 51
                'target': 97
                'value': 2
              }
              {
                'source': 52
                'target': 73
                'value': 2
              }
              {
                'source': 52
                'target': 89
                'value': 2
              }
              {
                'source': 52
                'target': 97
                'value': 2
              }
              {
                'source': 53
                'target': 54
                'value': 2
              }
              {
                'source': 53
                'target': 58
                'value': 2
              }
              {
                'source': 53
                'target': 59
                'value': 3
              }
              {
                'source': 53
                'target': 61
                'value': 2
              }
              {
                'source': 53
                'target': 63
                'value': 2
              }
              {
                'source': 53
                'target': 65
                'value': 2
              }
              {
                'source': 53
                'target': 68
                'value': 2
              }
              {
                'source': 53
                'target': 72
                'value': 2
              }
              {
                'source': 53
                'target': 73
                'value': 2
              }
              {
                'source': 53
                'target': 79
                'value': 2
              }
              {
                'source': 53
                'target': 82
                'value': 2
              }
              {
                'source': 53
                'target': 102
                'value': 2
              }
              {
                'source': 53
                'target': 89
                'value': 2
              }
              {
                'source': 53
                'target': 91
                'value': 2
              }
              {
                'source': 53
                'target': 113
                'value': 2
              }
              {
                'source': 53
                'target': 93
                'value': 2
              }
              {
                'source': 53
                'target': 94
                'value': 3
              }
              {
                'source': 53
                'target': 97
                'value': 2
              }
              {
                'source': 54
                'target': 57
                'value': 2
              }
              {
                'source': 54
                'target': 59
                'value': 2
              }
              {
                'source': 54
                'target': 65
                'value': 2
              }
              {
                'source': 54
                'target': 68
                'value': 2
              }
              {
                'source': 54
                'target': 73
                'value': 2
              }
              {
                'source': 54
                'target': 83
                'value': 2
              }
              {
                'source': 54
                'target': 94
                'value': 2
              }
              {
                'source': 54
                'target': 97
                'value': 2
              }
              {
                'source': 55
                'target': 125
                'value': 2
              }
              {
                'source': 56
                'target': 91
                'value': 2
              }
              {
                'source': 56
                'target': 113
                'value': 2
              }
              {
                'source': 56
                'target': 107
                'value': 2
              }
              {
                'source': 57
                'target': 61
                'value': 2
              }
              {
                'source': 57
                'target': 63
                'value': 2
              }
              {
                'source': 57
                'target': 68
                'value': 2
              }
              {
                'source': 57
                'target': 83
                'value': 2
              }
              {
                'source': 57
                'target': 88
                'value': 2
              }
              {
                'source': 57
                'target': 96
                'value': 2
              }
              {
                'source': 57
                'target': 104
                'value': 2
              }
              {
                'source': 58
                'target': 59
                'value': 2
              }
              {
                'source': 58
                'target': 61
                'value': 2
              }
              {
                'source': 58
                'target': 91
                'value': 2
              }
              {
                'source': 58
                'target': 113
                'value': 2
              }
              {
                'source': 59
                'target': 61
                'value': 2
              }
              {
                'source': 59
                'target': 65
                'value': 2
              }
              {
                'source': 59
                'target': 68
                'value': 2
              }
              {
                'source': 59
                'target': 70
                'value': 2
              }
              {
                'source': 59
                'target': 73
                'value': 2
              }
              {
                'source': 59
                'target': 78
                'value': 2
              }
              {
                'source': 59
                'target': 82
                'value': 2
              }
              {
                'source': 59
                'target': 89
                'value': 2
              }
              {
                'source': 59
                'target': 91
                'value': 3
              }
              {
                'source': 59
                'target': 113
                'value': 2
              }
              {
                'source': 59
                'target': 93
                'value': 2
              }
              {
                'source': 59
                'target': 94
                'value': 2
              }
              {
                'source': 59
                'target': 97
                'value': 2
              }
              {
                'source': 59
                'target': 95
                'value': 2
              }
              {
                'source': 60
                'target': 94
                'value': 2
              }
              {
                'source': 60
                'target': 98
                'value': 3
              }
              {
                'source': 61
                'target': 91
                'value': 2
              }
              {
                'source': 61
                'target': 113
                'value': 2
              }
              {
                'source': 61
                'target': 126
                'value': 2
              }
              {
                'source': 62
                'target': 75
                'value': 2
              }
              {
                'source': 62
                'target': 102
                'value': 2
              }
              {
                'source': 63
                'target': 68
                'value': 2
              }
              {
                'source': 63
                'target': 79
                'value': 2
              }
              {
                'source': 63
                'target': 83
                'value': 3
              }
              {
                'source': 63
                'target': 104
                'value': 2
              }
              {
                'source': 64
                'target': 68
                'value': 2
              }
              {
                'source': 64
                'target': 76
                'value': 2
              }
              {
                'source': 64
                'target': 89
                'value': 2
              }
              {
                'source': 65
                'target': 68
                'value': 2
              }
              {
                'source': 65
                'target': 73
                'value': 2
              }
              {
                'source': 65
                'target': 94
                'value': 2
              }
              {
                'source': 65
                'target': 97
                'value': 2
              }
              {
                'source': 65
                'target': 108
                'value': 2
              }
              {
                'source': 66
                'target': 69
                'value': 2
              }
              {
                'source': 67
                'target': 133
                'value': 2
              }
              {
                'source': 68
                'target': 70
                'value': 2
              }
              {
                'source': 68
                'target': 72
                'value': 2
              }
              {
                'source': 68
                'target': 73
                'value': 2
              }
              {
                'source': 68
                'target': 127
                'value': 2
              }
              {
                'source': 68
                'target': 83
                'value': 2
              }
              {
                'source': 68
                'target': 84
                'value': 2
              }
              {
                'source': 68
                'target': 85
                'value': 2
              }
              {
                'source': 68
                'target': 88
                'value': 2
              }
              {
                'source': 68
                'target': 89
                'value': 2
              }
              {
                'source': 68
                'target': 113
                'value': 3
              }
              {
                'source': 68
                'target': 94
                'value': 2
              }
              {
                'source': 68
                'target': 97
                'value': 2
              }
              {
                'source': 68
                'target': 109
                'value': 2
              }
              {
                'source': 68
                'target': 95
                'value': 2
              }
              {
                'source': 68
                'target': 104
                'value': 2
              }
              {
                'source': 69
                'target': 134
                'value': 2
              }
              {
                'source': 69
                'target': 91
                'value': 3
              }
              {
                'source': 69
                'target': 94
                'value': 3
              }
              {
                'source': 69
                'target': 107
                'value': 2
              }
              {
                'source': 70
                'target': 87
                'value': 2
              }
              {
                'source': 70
                'target': 89
                'value': 3
              }
              {
                'source': 70
                'target': 93
                'value': 2
              }
              {
                'source': 71
                'target': 94
                'value': 2
              }
              {
                'source': 72
                'target': 79
                'value': 2
              }
              {
                'source': 72
                'target': 85
                'value': 2
              }
              {
                'source': 72
                'target': 94
                'value': 2
              }
              {
                'source': 72
                'target': 95
                'value': 2
              }
              {
                'source': 72
                'target': 104
                'value': 2
              }
              {
                'source': 73
                'target': 135
                'value': 2
              }
              {
                'source': 73
                'target': 85
                'value': 2
              }
              {
                'source': 73
                'target': 89
                'value': 2
              }
              {
                'source': 73
                'target': 94
                'value': 2
              }
              {
                'source': 73
                'target': 97
                'value': 2
              }
              {
                'source': 73
                'target': 95
                'value': 2
              }
              {
                'source': 74
                'target': 94
                'value': 2
              }
              {
                'source': 74
                'target': 136
                'value': 2
              }
              {
                'source': 75
                'target': 102
                'value': 2
              }
              {
                'source': 75
                'target': 108
                'value': 2
              }
              {
                'source': 76
                'target': 89
                'value': 2
              }
              {
                'source': 77
                'target': 107
                'value': 2
              }
              {
                'source': 78
                'target': 79
                'value': 2
              }
              {
                'source': 78
                'target': 91
                'value': 2
              }
              {
                'source': 78
                'target': 92
                'value': 2
              }
              {
                'source': 78
                'target': 96
                'value': 2
              }
              {
                'source': 78
                'target': 110
                'value': 2
              }
              {
                'source': 79
                'target': 96
                'value': 2
              }
              {
                'source': 79
                'target': 110
                'value': 2
              }
              {
                'source': 80
                'target': 99
                'value': 2
              }
              {
                'source': 80
                'target': 105
                'value': 3
              }
              {
                'source': 81
                'target': 93
                'value': 2
              }
              {
                'source': 82
                'target': 91
                'value': 2
              }
              {
                'source': 82
                'target': 92
                'value': 2
              }
              {
                'source': 82
                'target': 93
                'value': 2
              }
              {
                'source': 83
                'target': 104
                'value': 2
              }
              {
                'source': 84
                'target': 113
                'value': 2
              }
              {
                'source': 84
                'target': 94
                'value': 2
              }
              {
                'source': 85
                'target': 95
                'value': 2
              }
              {
                'source': 85
                'target': 104
                'value': 2
              }
              {
                'source': 86
                'target': 97
                'value': 2
              }
              {
                'source': 87
                'target': 89
                'value': 2
              }
              {
                'source': 87
                'target': 93
                'value': 2
              }
              {
                'source': 87
                'target': 116
                'value': 2
              }
              {
                'source': 88
                'target': 96
                'value': 2
              }
              {
                'source': 88
                'target': 104
                'value': 2
              }
              {
                'source': 89
                'target': 120
                'value': 2
              }
              {
                'source': 89
                'target': 93
                'value': 2
              }
              {
                'source': 90
                'target': 136
                'value': 2
              }
              {
                'source': 90
                'target': 112
                'value': 3
              }
              {
                'source': 91
                'target': 113
                'value': 2
              }
              {
                'source': 91
                'target': 94
                'value': 3
              }
              {
                'source': 91
                'target': 103
                'value': 2
              }
              {
                'source': 92
                'target': 93
                'value': 2
              }
              {
                'source': 93
                'target': 96
                'value': 2
              }
              {
                'source': 93
                'target': 104
                'value': 2
              }
              {
                'source': 94
                'target': 103
                'value': 2
              }
              {
                'source': 94
                'target': 97
                'value': 2
              }
              {
                'source': 94
                'target': 136
                'value': 3
              }
              {
                'source': 94
                'target': 107
                'value': 3
              }
              {
                'source': 94
                'target': 108
                'value': 2
              }
              {
                'source': 94
                'target': 137
                'value': 2
              }
              {
                'source': 94
                'target': 104
                'value': 3
              }
              {
                'source': 95
                'target': 104
                'value': 2
              }
              {
                'source': 96
                'target': 104
                'value': 2
              }
              {
                'source': 96
                'target': 110
                'value': 2
              }
            ]
            nodes = [
              {
                'name': 'Abdullah Al Saadi'
                'group': 6
              }
              {
                'name': 'Abdulnasser Gharem'
                'group': 6
              }
              {
                'name': 'Adam Henein'
                'group': 1
              }
              {
                'name': 'Adel Abidin'
                'group': 4
              }
              {
                'name': 'Adham Wanly'
                'group': 1
              }
              {
                'name': 'Ahmad Osman'
                'group': 1
              }
              {
                'name': 'Ahmed Alsoudani'
                'group': 1
              }
              {
                'name': 'Ahmed Mater'
                'group': 3
              }
              {
                'name': 'Aisha Khalid'
                'group': 6
              }
              {
                'name': 'Akram Zaatari'
                'group': 1
              }
              {
                'name': 'Ala Ebtekar'
                'group': 6
              }
              {
                'name': 'Amar Kanwar'
                'group': 2
              }
              {
                'name': 'Amir H. Fallah'
                'group': 3
              }
              {
                'name': 'Ammar Al Attar'
                'group': 3
              }
              {
                'name': 'Athier'
                'group': 3
              }
              {
                'name': 'Ay e Erkmen'
                'group': 5
              }
              {
                'name': 'Ayreen Anastas'
                'group': 5
              }
              {
                'name': 'Basim Magdy '
                'group': 1
              }
              {
                'name': 'Burak Arikan'
                'group': 5
              }
              {
                'name': 'CAMP'
                'group': 2
              }
              {
                'name': 'Cevdet Erek'
                'group': 5
              }
              {
                'name': 'Dia Al-Azzawi '
                'group': 4
              }
              {
                'name': 'Doa Aly'
                'group': 5
              }
              {
                'name': 'Ebtisam Abdulaziz'
                'group': 3
              }
              {
                'name': 'Eungie Joo'
                'group': 6
              }
              {
                'name': 'Fahrelnissa Zeid'
                'group': 4
              }
              {
                'name': 'Farid Belkahia'
                'group': 4
              }
              {
                'name': 'Farshid Maleki'
                'group': 8
              }
              {
                'name': 'Fateh Moudarres'
                'group': 3
              }
              {
                'name': 'Fatima Al Qadiri'
                'group': 7
              }
              {
                'name': 'Fay al Baghriche '
                'group': 6
              }
              {
                'name': 'Fouad Elkoury'
                'group': 1
              }
              {
                'name': 'Gamal el-Sigini'
                'group': 1
              }
              {
                'name': 'Gita Meh'
                'group': 5
              }
              {
                'name': 'Hafidh al-Droubi'
                'group': 4
              }
              {
                'name': 'Haig Aivazian'
                'group': 5
              }
              {
                'name': 'Hala Elkoussy'
                'group': 5
              }
              {
                'name': 'Halil Altindere'
                'group': 5
              }
              {
                'name': 'Hamed Nada'
                'group': 1
              }
              {
                'name': 'Hamed Owais'
                'group': 1
              }
              {
                'name': 'Hamra Abbas'
                'group': 6
              }
              {
                'name': 'Haris Epaminonda'
                'group': 5
              }
              {
                'name': 'Haroon Mirza '
                'group': 2
              }
              {
                'name': 'Hassan Massoudy'
                'group': 3
              }
              {
                'name': 'Hesam Rahmanian'
                'group': 10
              }
              {
                'name': 'Hrair Sarkissian'
                'group': 5
              }
              {
                'name': 'Iman Issa'
                'group': 5
              }
              {
                'name': 'Ismail al-Shaikhly'
                'group': 4
              }
              {
                'name': 'Jalal Toufic'
                'group': 5
              }
              {
                'name': 'Jananne Al-Ani'
                'group': 4
              }
              {
                'name': 'Jawad Al Malhi'
                'group': 6
              }
              {
                'name': 'Jayce Salloum'
                'group': 6
              }
              {
                'name': 'Jumana Emil Abboud'
                'group': 4
              }
              {
                'name': 'Lamia Joreige'
                'group': 6
              }
              {
                'name': 'Lamya Gargash'
                'group': 6
              }
              {
                'name': 'Lara Baladi'
                'group': 1
              }
              {
                'name': 'Larissa Sansour'
                'group': 5
              }
              {
                'name': 'Laurent Grasso'
                'group': 1
              }
              {
                'name': 'Lawrence Abu Hamdan '
                'group': 5
              }
              {
                'name': 'Maha Maamoun'
                'group': 6
              }
              {
                'name': 'Manal Al Dowayan'
                'group': 2
              }
              {
                'name': 'Mariam Ghani'
                'group': 5
              }
              {
                'name': 'Marwan Rechmaoui'
                'group': 2
              }
              {
                'name': 'Melik Ohanian'
                'group': 5
              }
              {
                'name': 'Meri  Alg n Ringborg '
                'group': 6
              }
              {
                'name': 'Moataz Nasr'
                'group': 6
              }
              {
                'name': 'Mohammed Melehi'
                'group': 4
              }
              {
                'name': 'Mohsen Ahmadvand'
                'group': 9
              }
              {
                'name': 'Mona Hatoum'
                'group': 6
              }
              {
                'name': 'Mona Saudi'
                'group': 4
              }
              {
                'name': 'Monir Shahroudy Farmanfarmaian'
                'group': 6
              }
              {
                'name': 'Mounir Al-Shaarani'
                'group': 3
              }
              {
                'name': 'mounir fatmi'
                'group': 1
              }
              {
                'name': 'Mounira Al Solh'
                'group': 6
              }
              {
                'name': 'Murtaza Vali'
                'group': 3
              }
              {
                'name': 'N.S. Harsha'
                'group': 2
              }
              {
                'name': 'Nevin Aladag'
                'group': 6
              }
              {
                'name': 'Nicky Nodjoumi'
                'group': 3
              }
              {
                'name': 'Nil Yalter'
                'group': 1
              }
              {
                'name': 'Rabih Mrou '
                'group': 5
              }
              {
                'name': 'Ragheb Ayad'
                'group': 1
              }
              {
                'name': 'Rasheed Araeen'
                'group': 2
              }
              {
                'name': 'Rashid Masharawi'
                'group': 6
              }
              {
                'name': 'Reem Al Ghaith'
                'group': 5
              }
              {
                'name': 'Robert MacPherson'
                'group': 3
              }
              {
                'name': 'Rosalind Nashashibi'
                'group': 1
              }
              {
                'name': 'Rula Halawani'
                'group': 4
              }
              {
                'name': 'Runa Islam'
                'group': 6
              }
              {
                'name': 'Sa dane Afif'
                'group': 1
              }
              {
                'name': 'Shahzia Sikander'
                'group': 6
              }
              {
                'name': 'Shaikha Al Mazrou'
                'group': 3
              }
              {
                'name': 'Sharif Waked'
                'group': 5
              }
              {
                'name': 'Steve Reinke'
                'group': 6
              }
              {
                'name': 'Susan Hefuna'
                'group': 6
              }
              {
                'name': 'Tarek Al-Ghoussein'
                'group': 3
              }
              {
                'name': 'Yto Barrada'
                'group': 1
              }
              {
                'name': 'Ziad Antar'
                'group': 1
              }
              {
                'name': 'Taysir Batniji'
                'group': 6
              }
              {
                'name': 'Yazan Khalili'
                'group': 2
              }
              {
                'name': 'Seif Wanly'
                'group': 1
              }
              {
                'name': 'Georges Sabbagh'
                'group': 4
              }
              {
                'name': 'Nadia Kaabi-Linke'
                'group': 4
              }
              {
                'name': 'Sarah Abu Abdallah'
                'group': 2
              }
              {
                'name': 'Tarek Atoui'
                'group': 5
              }
              {
                'name': 'Zineb Sedira'
                'group': 1
              }
              {
                'name': 'Youssef Kamel'
                'group': 1
              }
              {
                'name': 'Lulwah Al-Homoud'
                'group': 3
              }
              {
                'name': 'Walid Siti'
                'group': 3
              }
              {
                'name': 'Youssef Abdelk '
                'group': 3
              }
              {
                'name': 'Walid Raad'
                'group': 1
              }
              {
                'name': 'Zoulikha-Bouabdellah'
                'group': 1
              }
              {
                'name': 'Pouran-Jinchi'
                'group': 6
              }
              {
                'name': 'Zeinab Al Hashemi'
                'group': 3
              }
              {
                'name': 'Simryn Gill'
                'group': 5
              }
              {
                'name': 'Ren  Gabri'
                'group': 5
              }
              {
                'name': 'Sophia Al Maria'
                'group': 2
              }
              {
                'name': 'Wael Shawky'
                'group': 6
              }
              {
                'name': 'Khalid al-Jader'
                'group': 4
              }
              {
                'name': 'Sherif El Azma'
                'group': 5
              }
              {
                'name': 'Rayyane Tabet'
                'group': 6
              }
              {
                'name': 'Shirin Neshat'
                'group': 6
              }
              {
                'name': 'Nargess Hashemi'
                'group': 8
              }
              {
                'name': 'Ziad Dalloul'
                'group': 3
              }
              {
                'name': 'Khalid Al Gharaballi'
                'group': 7
              }
              {
                'name': 'Nadia Ayari'
                'group': 7
              }
              {
                'name': 'Setareh Shahbazi'
                'group': 1
              }
              {
                'name': 'Sophie Ernst'
                'group': 5
              }
              {
                'name': 'Raeda Saadeh'
                'group': 6
              }
              {
                'name': 'Niyaz-Azadikhah'
                'group': 10
              }
              {
                'name': 'Mona Marzouk'
                'group': 5
              }
              {
                'name': 'Waheeda Malullah'
                'group': 6
              }
              {
                'name': 'Naeem Mohaiemen'
                'group': 6
              }
              {
                'name': 'Nida Sinnokrot'
                'group': 6
              }
              {
                'name': 'Shahrzad Changalvaee'
                'group': 9
              }
              {
                'name': 'Rachid Kora chi'
                'group': 4
              }
              {
                'name': 'Raed Yassin'
                'group': 6
              }
              {
                'name': 'Wafaa Bilal'
                'group': 3
              }
              {
                'name': 'Youssef Nabil'
                'group': 3
              }
            ]
            #d3 code mainly from http://bl.ocks.org/mbostock/4062045 and http://bl.ocks.org/mbostock/2706022
            width = 1200
            height = 700
            color = d3.scale.category20()
            svg = d3.select('person-graph').append('svg').attr('width', width).attr('height', height)
            force = d3.layout.force().nodes(nodes).links(links).size([
              width
              height
            ]).linkDistance(60).charge(-500).linkStrength(0.7).gravity(0.3).on('tick', tick).start()
            link = svg.selectAll('.link').data(force.links()).enter().append('line').attr('class', 'link').style('stroke', 'lightgray').style('stroke-width', (d) ->
              Math.sqrt d.value
            )
            node = svg.selectAll('.node').data(force.nodes()).enter().append('g').attr('class', 'node').on('mouseover', mouseover).on('mouseout', mouseout).on('touchstart', mouseover).on('touchend', mouseout).call(force.drag).on('dblclick', connectedNodes)

            tick = ->
              link.attr('x1', (d) ->
                d.source.x
              ).attr('y1', (d) ->
                d.source.y
              ).attr('x2', (d) ->
                d.target.x
              ).attr 'y2', (d) ->
                d.target.y
              node.attr 'transform', (d) ->
                'translate(' + d.x + ',' + d.y + ')'
              return

            mouseover = ->
              d3.select(this).select('circle').transition().duration(750).attr 'r', 12
              d3.select(this).select('text').transition().duration(750).style 'font-size', '20px'
              return

            mouseout = ->
              d3.select(this).select('circle').transition().duration(750).attr 'r', 5
              d3.select(this).select('text').transition().duration(750).style 'font-size', '10px'
              return

            searchNode = ->
              `var node`
              #find the node
              selectedVal = document.getElementById('search').value
              node = svg.selectAll('.node')
              if selectedVal == 'none'
                node.style('stroke', 'white').style 'stroke-width', '1'
              else
                selected = node.filter((d, i) ->
                  `var link`
                  d.name != selectedVal
                )
                selected.style 'opacity', '0'
                link = svg.selectAll('.link')
                link.style 'opacity', '0'
                d3.selectAll('.node, .link').transition().duration(3000).style 'opacity', 1
              return

            #This function looks up whether a pair are neighbours  

            neighboring = (a, b) ->
              linkedByIndex[a.index + ',' + b.index]

            #do it

            connectedNodes = ->
              if toggle == 0
                #Reduce the opacity of all but the neighbouring nodes
                d = d3.select(this).node().__data__
                node.style 'opacity', (o) ->
                  if neighboring(d, o) | neighboring(o, d) then 1 else 0.1
                link.style 'opacity', (o) ->
                  if d.index == o.source.index | d.index == o.target.index then 1 else 0.1
                toggle = 1
              else
                #Put them back to opacity=1
                node.style 'opacity', 1
                link.style 'opacity', 1
                toggle = 0
              return

            node.append('circle').style('fill', (d) ->
              color d.group
            ).attr 'r', 5
            node.append('text').attr('x', 14).attr('dy', '.35em').text (d) ->
              d.name
            #SEARCH BOX 
            #code from http://www.coppelia.io/2014/07/an-a-to-z-of-extra-features-for-the-d3-force-layout/
            optArray = []
            i = 0
            while i < nodes.length - 1
              optArray.push nodes[i].name
              i++
            optArray = optArray.sort()
            # $ ->
            #   $('#search').autocomplete source: optArray
            #   return
            #SUBNET HIGHLIGHT
            #code from http://www.coppelia.io/2014/07/an-a-to-z-of-extra-features-for-the-d3-force-layout/
            #Toggle stores whether the highlighting is on
            toggle = 0
            #Create an array logging what is connected to what
            linkedByIndex = {}
            i = 0
            while i < nodes.length
              linkedByIndex[i + ',' + i] = 1
              i++
            links.forEach (d) ->
              linkedByIndex[d.source.index + ',' + d.target.index] = 1
              return

      # ---
      # generated by js2coffee 2.0.1
            @on "switch-person:do:view", =>
            console.log "switch-person trigger"
            # @biosView = new BiosView()      
            # @regionBios.show(@biosView)
            # @orgGraphView = new OrgGraphView()
            # @regionGraph.show(@orgGraphView)
            # application.GraphModule.Controller.makeOrgGraph()
    @layout = new PersonView()
    # console.log personView
    console.log application
    # application.layout.header.show("headerView")
    @layout.render()


  # The context of the function is also the module itself
  this == PersonModule

  # => true
  # Private Data And Functions
  # --------------------------
  myData = 'this is private data'

  # Public Data And Functions
  # -------------------------
  PersonModule.someData = 'public data'

  PersonModule.makePersonModule = () ->
    console.log "makePersonModule"

  