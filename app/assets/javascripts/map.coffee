$ ->

  waitForMap ->

    #http://geocode-maps.yandex.ru/1.x/?geocode=раменский район , село Еганово ,ул Новостройки д 17
    map = new ymaps.Map($("#map")[0], {center: [55.534245, 38.029737], zoom: 14})


    map.behaviors.disable('scrollZoom')

    map.controls.remove('typeSelector')
    map.controls.remove('searchControl')
    map.controls.remove('trafficControl')
    map.controls.remove('fullscreenControl')
    map.controls.remove('geolocationControl')

    placemark = new ymaps.Placemark(
      [55.534245, 38.029737],
      {
        balloonContent: 'МО, Раменский район, село Еганово, ул Новостройки, д 17'
      }
    )

    map.geoObjects.add(placemark)



window.add_placemark = (map, shop) ->

  if shop == undefined
    return false

  unless $(shop).attr('lat')
    return false

  console.log $(shop).attr('lat')


  placemark = new ymaps.Placemark(
    [parseFloat($(shop).attr('lat')), parseFloat($(shop).attr('lng'))],
    {
      balloonContent: $(shop).attr('name')
    }
  )

  map.geoObjects.add(placemark)
#  placemark.balloon.open()


window.waitForMap = (callback) ->
  if ymaps.Map
    callback(this)
  else
    setTimeout(
      ->
        waitForMap(callback)
      500
    )
