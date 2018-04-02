# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
@datepicker_activation = ->
  window.datepicker_activation_by_item($(document))
@datepicker_activation_by_item = (item) ->
  iten.find('.datepicker').datetimepicker({locale: 'ru', format:'DD.MM.YYYY'})
  
dtpick = ->
  $('.datepicker').datetimepicker({locale: 'ru', format:'DD.MM.YYYY'})
  false


@bs = ->
  window.bs_item($(document))
@bs_item = (item) ->
  item.find('.selectpicker').selectpicker()
  item.find('.selectpicker[data-value]').each ->
    $(this).selectpicker 'val', $(this).datd('value')
    false
  
welcome_ready = ->
  dtpick()
  window.bs()
  false
  
$(document).on 'turbolinks:load', welcome_ready


