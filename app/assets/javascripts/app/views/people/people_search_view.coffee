window.PeopleSearchView = Backbone.View.extend
  className:
    'SearchPeopleView'

  events:
    'submit #search': 'searchPeople'

  initialize: (options) ->
    @template = HandlebarsTemplates["people/search"]
    @search = options.search
    @search.on('change', @change, @)

  render: ->
    $(@el).html @template(@context())
    return this

  context: ->
    query: @search.get('q')

  searchPeople: (e) ->
    @search.save(q: @getQuery())
    return false

  getQuery: ->
    @$('#q').val()

  change: (search) ->
    @$("#q").val(search.get('q'))
    cm.app.navigate("/people?q=#{search.get('q')}", false)
