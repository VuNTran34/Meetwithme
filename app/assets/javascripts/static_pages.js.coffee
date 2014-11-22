# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
# jQuery to collapse the navbar on scroll
$(window).scroll ->
  if $(".navbar").offset().top > 50
    $(".navbar-fixed-top").addClass "top-nav-collapse"
  else
    $(".navbar-fixed-top").removeClass "top-nav-collapse"
  return


# jQuery for page scrolling feature - requires jQuery Easing plugin
$ ->
  $("a.page-scroll").bind "click", (event) ->
    $anchor = $(this)
    $("html, body").stop().animate
      scrollTop: $($anchor.attr("href")).offset().top
    , 1500, "easeInOutExpo"
    event.preventDefault()
    return

  return


# Closes the Responsive Menu on Menu Item Click
$(".navbar-collapse ul li a").click ->
  $(".navbar-toggle:visible").click()
  return
