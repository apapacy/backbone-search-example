window.CM ||={}

# Called from rails erb templates.
CM.setErrorExplanation = (prefix, errors) ->
  $(document).ready ->
    for key in _.keys(errors)
      id     = "#{prefix}_#{key}"
      $input = $("##{id}")
      $field = $input.parent()
      $container = $field.parent()
      message = errors[key]

      $container.addClass('error')
      $field.append("<span class='help-inline'>#{key} #{message}</span>")
