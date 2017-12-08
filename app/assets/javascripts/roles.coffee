# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
@del_role_group_right_body_f = (link)->
  if confirm("Вы уверены?")
    link.parent().find("input[type=hidden].remove_fields").first().val("1")
    link.parent().parent().parent().parent().hide()
  false
@del_role_group_right_f = ->
  $('a.remove_role_group_right').on 'click', ->
    window.del_role_group_right_body_f($(this))
    false
  false
@add_role_group_right_f = ->
  $('#add_role_group_right_link').on 'click', ->
    new_id = new Date().getTime()
    regexp = new RegExp("new_role_group_right", "g")
    content = $(this).attr('data-content')
    content = content.replace(regexp, new_id)
    $(this).parent().parent().after(content)
    panel = $(this).parent().parent().parent().find('.panel-info').first()
    panel.find('a.remove_role_group_right').on 'click', ->
      window.del_role_group_right_body_f($(this))
      false    
    false
    
@roles_ready_f = ->
  window.add_role_group_right_f()
  window.del_role_group_right_f()

$(document).ready @roles_ready_f
$(document).on 'page:load', @roles_ready_f


@del_permition_role_body_f = (link)->
  if confirm("Вы уверены?")
    link.parent().find("input[type=hidden].remove_fields").first().val("1")
    link.parent().parent().parent().parent().hide()
  false
@del_permition_role_f = ->
  $('a.remove_permition_role').on 'click', ->
    window.del_permition_role_body_f($(this))
    false
  false
@add_permition_role_f = ->
  $('#add_permition_role_link').on 'click', ->
    new_id = new Date().getTime()
    regexp = new RegExp("new_permition_role", "g")
    content = $(this).attr('data-content')
    content = content.replace(regexp, new_id)
    $(this).parent().parent().after(content)
    panel = $(this).parent().parent().parent().find('.panel-info').first()
    panel.find('a.remove_permition_role').on 'click', ->
      window.del_permition_role_body_f($(this))
      false    
    false
    
@roles_ready_f = ->
  window.add_permition_role_f()
  window.del_permition_role_f()

$(document).ready @roles_ready_f
$(document).on 'page:load', @roles_ready_f
