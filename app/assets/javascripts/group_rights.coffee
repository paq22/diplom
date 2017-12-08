# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
@del_right_group_permition_body_f = (link)->
  if confirm("Вы уверены?")
    link.parent().find("input[type=hidden].remove_fields").first().val("1")
    link.parent().parent().parent().parent().hide()
  false
@del_right_group_permition_f = ->
  $('a.remove_right_group_permition').on 'click', ->
    window.del_right_group_permition_body_f($(this))
    false
  false
@add_right_group_permition_f = ->
  $('#add_right_group_permition_link').on 'click', ->
    new_id = new Date().getTime()
    regexp = new RegExp("new_right_group_permition", "g")
    content = $(this).attr('data-content')
    content = content.replace(regexp, new_id)
    $(this).parent().parent().after(content)
    panel = $(this).parent().parent().parent().find('.panel-info').first()
    panel.find('a.remove_right_group_permition').on 'click', ->
      window.del_right_group_permition_body_f($(this))
      false    
    false
    
group_right_ready = ->
  window.add_right_group_permition_f()
  window.del_right_group_permition_f()

#$(document).ready information_system_ready
$(document).on 'page:load', group_right_ready
$(document).on 'turbolinks:load', group_right_ready
