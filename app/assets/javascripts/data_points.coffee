$ ->
  geo_call = (position) ->
    $('#data_point_latitude').val(position.coords.latitude)
    $('#data_point_longitude').val(position.coords.longitude)
    geolocate = $('#geolocate')

    geolocate.html('Geolocation succeeded!')


  if $('#geolocate').length
    navigator.geolocation.getCurrentPosition(geo_call)

  $('#data_point_commercial').on 'change', ->
    if $(this).val() == 'false'
      $('#commercial-form').hide();
      $('#non-commercial').show();
    else
      $('#commercial-form').show();
      $('#non-commercial').hide();

  if $('#non-commercial').length
    $('#non-commercial').hide()
