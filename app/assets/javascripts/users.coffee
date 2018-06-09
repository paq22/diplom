# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
@del_role_user_body_f = (link)->
  if confirm("Вы уверены?")
    link.parent().find("input[type=hidden].remove_fields").first().val("1")
    link.parent().parent().parent().parent().parent().hide()
  false
@del_role_user_f = ->
  $('a.remove_role_user').on 'click', ->
    window.del_role_user_body_f($(this))
    false
  false
@add_role_user_f = ->
  $('#add_role_user_link').on 'click', ->
    new_id = new Date().getTime()
    regexp = new RegExp("new_role_user", "g")
    content = $(this).attr('data-content')
    content = content.replace(regexp, new_id)
    $(this).parent().parent().after(content)
    panel = $(this).parent().parent().parent().find('.card-header').first()
    panel.find('a.remove_role_user').on 'click', ->
      window.del_role_user_body_f($(this))
      false    
    false

user_click = ->
  content = $(this).data()
  window.location.href = content.content[0] + '/' + content.content[1]
    
user_ready = ->
  $(".user_row").on 'click', user_click
  window.add_role_user_f()
  window.del_role_user_f()
  $("#searchButton").on 'click', ->
    $("#search").toggle();



#$(document).ready information_system_ready
$(document).on 'turbolinks:load', user_ready
