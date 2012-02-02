CM.Application = Backbone.Router.extend
  routes:
    '/': 'catchAll'

  initialize: ->
    @routers = {}
    @routers.people = new PeopleRouter()

  setPageView: (view) ->
    $("#body").empty().append(view.el)

  catchAll: ->
    console.log 'catchAll', arguments
