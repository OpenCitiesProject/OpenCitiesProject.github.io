;(function(context) {

    var gfdrr = {}

    gfdrr.slideShow = function(context) {
        var slideIndex = 1,
            $slide = $('[data-index]', context),
            slides = $slide.length;

        $('a.slide-control').click(function() {
            $slide.removeClass('active');

            if (slideIndex === slides) {
                slideIndex = 1;
            } else if ((slideIndex - 1) === 1) {
                slideIndex = slides;
            } else {
                // Adjust the counter
                if ($(this).hasClass('next')) {
                   slideIndex = (slideIndex + 1);
                } else {
                    if (slideIndex <= 1) {
                        slideIndex = slides;
                    } else {
                        slideIndex = (slideIndex - 1);
                    }
                }
            }

           $('[data-index="slide-' + slideIndex + '"]', context).addClass('active');
            return false;
        });
    };

    gfdrr.renderMap = function(el, mapId) {
        var map = mapbox.map(el, mapbox.layer().id(mapId), null, [
            easey_handlers.TouchHandler(),
            easey_handlers.DragHandler(),
            easey_handlers.DoubleClickHandler()
        ]);

        // Zoom Controls
        map.ui.zoomer.add();
        var mapDefaults = {
            lat: 18.46,
            lon: 81.65,
            zoom: 4
        };

        // Set iniital center and zoom
        map.centerzoom({
            lat: mapDefaults.lat,
            lon: mapDefaults.lon
        }, mapDefaults.zoom);
    };

    gfdrr.citiesMap = function(mapId) {
        var map = mapbox.map('header', mapbox.layer().id(mapId), null, [
            easey_handlers.TouchHandler(),
            easey_handlers.DragHandler(),
            easey_handlers.DoubleClickHandler()
        ]);

        // Zoom Controls
        map.ui.zoomer.add();

        // Create and add marker layer
        var markerLayer = mapbox.markers.layer().features(poi).factory(function(f) {
            var p = document.createElement('div');
                p.className = 'marker marker-' + f.properties.klass;
                p.innerHTML = '<a href="{{site.baseurl}}/cities/' + f.properties.klass + '</a>';

                var up = document.createElement('div');
                    up.className = 'popup';
                    up.innerHTML = f.properties.title;

                p.appendChild(up);
            return p;
        });

        map.addLayer(markerLayer);
        map.setZoomRange(3, 17);

        var mapDefaults = {
            lat: 18.46,
            lon: 81.65,
            zoom: 4
        };

        // Set iniital center and zoom
        map.centerzoom({
            lat: mapDefaults.lat,
            lon: mapDefaults.lon
        }, mapDefaults.zoom);
    };

    window.gfdrr = gfdrr;
})(window);

