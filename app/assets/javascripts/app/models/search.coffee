window.Search = Backbone.Model.extend
  urlRoot: '/searches'

  setParams: (params) ->
    attrs = {}
    for pair in params.split("&")
      [key, value] = pair.split("=")
      attrs[key] = value
    @save(attrs)

  parse: (json) ->
    @people.reset json.people
    delete json.people

    return json

  toJSON: ->
    attrs = _.clone( this.attributes )
    delete attrs.people

    return { search: attrs }



