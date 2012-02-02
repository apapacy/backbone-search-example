window.CM ||={}

CM.bootstrapTwitterPlugins = ->

  # initialize all popover things
  $("a[rel=popover]").popover({
    offset: 10,
    html: true,
    width: 500
  })
