window.CM ||={}

CM.highlightCurrentTab = ->
  pathname = window.location.pathname
  [empty, controller, action] = pathname.split("/")
  $('.tabs li').each ->
    $this = $(this)
    if $this.hasClass(controller)
      $this.addClass 'active'
