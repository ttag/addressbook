$('<%= escape_javascript(render(:partial => @entry))%>')
  .appendTo('#entries')
  .hide()
  .fadeIn()

$('#new_entry')[0].reset()
