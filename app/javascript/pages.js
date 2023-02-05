$(document).ready () ->
  $("select#menu_id").change(-> $(this).closest("form").submit())