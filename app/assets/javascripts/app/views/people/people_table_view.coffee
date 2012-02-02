window.PeopleTableView = Backbone.View.extend
  className:
    'PeopleTableView'

  initialize: (options) ->
    @template = HandlebarsTemplates["people/table"]

    @people = options.people
    @people.on('reset', @render, @)

  render: ->
    $(@el).html @template(@context())
    return this

  context: ->
    people: @people.toJSON()
