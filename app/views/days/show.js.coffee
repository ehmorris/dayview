$('.today-text, .tomorrow-link, .yesterday-link, .map').remove()
$('body').append('<%= escape_javascript(render :partial => 'map') %>')

window.render_map()
window.attach_marker_detail_events()

today = $('.map-today').data('today')
window.history.pushState null, null, today
