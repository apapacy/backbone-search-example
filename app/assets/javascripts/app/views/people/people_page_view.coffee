window.PeoplePageView = Backbone.View.extend
  className:
    'PeoplePageView'

  initialize: (options) ->
    @template = HandlebarsTemplates["people/index"]
    @searchView = new PeopleSearchView(search: cm.search)
    @peopleTable = new PeopleTableView(people: cm.people)

  render: ->
    $(@el).html @template()
    @$('#table').html(@peopleTable.render().el)
    @$('#search').html(@searchView.render().el)
    return this


