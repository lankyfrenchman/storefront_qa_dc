$ ->
  geo_call = (position) ->
    console.log(position.coords.latitude)
    
  if $('#geolocate').length
    navigator.geolocation.getCurrentPosition(geo_call)
