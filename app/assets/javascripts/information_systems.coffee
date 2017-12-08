# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
@del_permition_body_f = (link)->
  if confirm("Вы уверены?")
    link.parent().find("input[type=hidden].remove_fields").first().val("1")
    link.parent().parent().parent().parent().hide()
  false
@del_permition_f = ->
  $('a.remove_permition').on 'click', ->
    window.del_permition_body_f($(this))
    false
  false
@add_permition_f = ->
  $('#add_permition_link').on 'click', ->
    new_id = new Date().getTime()
    regexp = new RegExp("new_permition", "g")
    content = $(this).attr('data-content')
    content = content.replace(regexp, new_id)
    $(this).parent().parent().after(content)
    panel = $(this).parent().parent().parent().find('.panel-info').first()
    panel.find('a.remove_permition').on 'click', ->
      window.del_permition_body_f($(this))
      false    
    false
    
information_system_ready = ->
  window.add_permition_f()
  window.del_permition_f()

#$(document).ready information_system_ready
$(document).on 'page:load', information_system_ready
$(document).on 'turbolinks:load', information_system_ready

