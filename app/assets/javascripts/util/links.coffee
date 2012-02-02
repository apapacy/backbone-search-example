window.CM ||={}

CM.bindNavigationLinks = ->
  $('.navigate').click (e) ->
    cm.app.navigate($(this).attr('href'), true)
    return false
