# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
dictionary_accesses_ready_f = ->
  $("#test").on 'click', ->
    key1 = $("#input1").val()
    key2 = $("#input2").val()
    a = $.ajax({
      url: "/dictionary_accesses/get_table",
      data: {ak1: key1, ak2: key2},
      async: false,
      success: ->
        console.log("success")
      error: ->
        console.log("error")
    })
    if (a.responseJSON)
      console.log(a.responseJSON)
    else
      console.log(a.responseText)
  

$(document).on 'turbolinks:load', dictionary_accesses_ready_f
