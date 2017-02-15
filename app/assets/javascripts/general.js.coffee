
$(document).on "turbolinks:load", ->
    
  setTimeout (->
    $('body').fadeIn()
    return), 1000
  
  $('#wrapper').removeClass 'active'
  $('#sidebar').hide()
  
  $('#menu-toggle').click (e) ->
    e.preventDefault()
    $('#wrapper').toggleClass 'active'
    $('#sidebar').fadeToggle('fast')
    return
  return
