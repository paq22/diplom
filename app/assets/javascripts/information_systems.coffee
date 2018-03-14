# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
@del_permition_body_f = (link)->
  if confirm("Вы уверены?")
    link.parent().find("input[type=hidden].remove_fields").first().val("1")
    link.parent().parent().parent().parent().parent().hide()
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
    $(this).parent().parent().parent().find('#qq2').prepend(content)
    panel = $(this).parent().parent().parent().find('.card-header').first()
    panel.find('a.remove_permition').on 'click', ->
      window.del_permition_body_f($(this))
      false    
    false


@del_dictionary_access_body_f = (link)->
  if confirm("Вы уверены?")
    link.parent().find("input[type=hidden].remove_fields").first().val("1")
    link.parent().parent().parent().parent().parent().hide()
  false
@del_dictionary_access_f = ->
  $('a.remove_dictionary_access').on 'click', ->
    window.del_dictionary_access_body_f($(this))
    false
  false
@add_dictionary_access_f = ->
  $('#add_dictionary_access_link').on 'click', ->
    new_id = new Date().getTime()
    regexp = new RegExp("new_dictionary_access", "g")
    content = $(this).attr('data-content')
    content = content.replace(regexp, new_id)
    $(this).parent().parent().parent().find('#qqe').prepend(content)
    panel = $(this).parent().parent().parent().find('.card-header').first()
    panel.find('a.remove_dictionary_access').on 'click', ->
      window.del_dictionary_access_body_f($(this))
      false    
    false
    
information_system_click = ->
  content = $(this).data()
  window.location.href = content.content[0] + '/' + content.content[1] 

@information_systems_ready_f = ->
  $(".information_system_row").on 'click', information_system_click
  window.add_permition_f()
  window.del_permition_f()
  window.add_dictionary_access_f()
  window.del_dictionary_access_f()
  
$(document).on 'turbolinks:load', information_systems_ready_f

