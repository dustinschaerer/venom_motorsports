# $ ->
#   if $('html').is('.static_pages.manage')
#     $('.navbar-fixed-top').addClass 'top-nav-collapse'
###!
# Start Bootstrap - Grayscale Bootstrap Theme (http://startbootstrap.com)
# Code licensed under the Apache License v2.0.
# For details, see http://www.apache.org/licenses/LICENSE-2.0.
###

# jQuery to collapse the navbar on scroll

collapseNavbar = ->
  if $('.navbar').offset().top > 50
    if $('html').is('.static_pages.manage')
      return
    $('.navbar-fixed-top').addClass 'top-nav-collapse'
  else
    $('.navbar-fixed-top').removeClass 'top-nav-collapse'
  return

$(window).scroll collapseNavbar
$(document).ready collapseNavbar

# # jQuery for page scrolling feature - requires jQuery Easing plugin
# $ ->
#   $('a.page-scroll').bind 'click', (event) ->
#     $anchor = $(this)
#     $('html, body').stop().animate { scrollTop: $($anchor.attr('href')).offset().top }, 1500, 'easeInOutExpo'
#     event.preventDefault()
#     return
#   return
# Closes the Responsive Menu on Menu Item Click
$('.navbar-collapse ul li a').click ->
  if $(this).attr('class') != 'dropdown-toggle active' and $(this).attr('class') != 'dropdown-toggle'
    $('.navbar-toggle:visible').click()
  return
