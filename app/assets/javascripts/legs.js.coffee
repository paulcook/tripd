# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$ ->
  changeDiv = ->
    $("table tr div.active").removeClass("active")
    $(@).addClass("active")

  $("table tr div").mouseenter changeDiv

