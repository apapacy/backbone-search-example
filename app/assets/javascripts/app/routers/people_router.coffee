window.PeopleRouter = Backbone.Router.extend
  routes:
    'people':         'people'
    'people?*params': 'query'

  initialize: ->
    @pages = {}
    @pages.people = new PeoplePageView(people: cm.people)

  people: ->
    cm.people.fetch()
    cm.app.setPageView(@pages.people.render())

  query: (params) ->
    cm.search.setParams(params)
    cm.app.setPageView(@pages.people.render())
