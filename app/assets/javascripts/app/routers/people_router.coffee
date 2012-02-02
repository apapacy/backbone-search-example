window.PeopleRouter = Backbone.Router.extend
  routes:
    'people':         'people'
    'people?*params': 'query'

  initialize: ->
    @pages = {}
    @pages.people = new PeoplePageView(people: cm.people)

  people: ->
    cm.people.fetch()
    cm.app.setPageView(@peoplePage())

  query: (params) ->
    cm.search.setParams(params)
    cm.app.setPageView(@peoplePage())

  peoplePage: ->
    unless @rendered
      @pages.people.render()
      @rendered = true
    @pages.people
