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

                    console.log(slideIndex);
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
        var map = mapbox.map(el);
        map.addLayer(mapbox.layer().id(mapId));

        //// Create and add marker layer
        //var markerLayer = mapbox.markers.layer().features(poi).factory(function(f) {
            //var p = document.createElement('div');
            //p.className = 'marker marker-' + f.properties.klass;
            //p.innerHTML = f.properties.klass;

            //var up = document.createElement('div');
                //up.className = 'm-popup';
                //up.innerHTML = '<span class="date">' + f.properties.dates + '</span>' +
                        //'<h3>' + f.properties.title + '</h3>' +
                        //'<p>' + f.properties.description + '</p>';

                //p.appendChild(up);

                //// Center marker on click
                //MM.addEvent(p, 'hover', function(e) {
                    //// Display the project count here.
                //});

            //return p;
        //});
        //map.addLayer(markerLayer);
        map.setZoomRange(3, 6);

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

