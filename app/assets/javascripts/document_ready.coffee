window.cm ||= {}

cm.search = new Search()
cm.people = new People({
  search: cm.search
})
cm.app = new CM.Application()

($ document).ready ->
  # Start Backbone History
  Backbone.history.start(pushState: true)

  # nom nom nom noms
  CM.bootstrapTwitterPlugins()
