@datepicker_activation = ->
  window.datepicker_activation_by_item($(document))
@datepicker_activation_by_item = (item)->
  item.find('.datepicker').datetimepicker({locale: 'ru', format: 'DD.MM.YYYY'})
  item.find('.datetimepicker').datetimepicker({locale: 'ru', format: 'DD.MM.YYYY HH:mm'})

app_ready_f = ->
  window.datepicker_activation()

#$(document).on 'page:load', app_ready_f
#$(document).ready app_ready_f
$(document).on 'page:load', app_ready_f
$(document).on 'turbolinks:load', app_ready_f
