window.People = Backbone.Collection.extend
  url: '/people'
  model: Person

  initialize: (options={}) ->
    if options.search
      @search = options.search
      @search.people = @

