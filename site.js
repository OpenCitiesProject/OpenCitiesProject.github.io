---
---
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

    gfdrr.citiesMap = function(el, mapId) {
        var map = mapbox.map(el, mapbox.layer().id(mapId), null, [
            easey_handlers.TouchHandler(),
            easey_handlers.DragHandler(),
            easey_handlers.DoubleClickHandler()
        ]);

        // Zoom Controls
        map.ui.zoomer.add();

        // Create and add marker layer
        var markerLayer = mapbox.markers.layer().features(poi).factory(function(f) {
            var a = document.createElement('a');
                a.className = 'marker marker-' + f.properties.klass;
                a.href = '{{site.baseurl}}' + f.properties.url;

                var up = document.createElement('div');
                    up.className = 'popup';
                    up.innerHTML = f.properties.title;

                a.appendChild(up);
            return a;
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
    console.log("hello")
    $('ul.tabs').each(function(){
        // For each set of tabs, we want to keep track of
        // which tab is active and it's associated content
        var $active, $content, $links = $(this).find('a');

        // If the location.hash matches one of the links, use that as the active tab.
        // If no match is found, use the first link as the initial active tab.
        $active = $($links.filter('[href="'+location.hash+'"]')[0] || $links[0]);
        $active.addClass('active');
        $content = $($active.attr('href'));

        // Hide the remaining content
        $links.not($active).each(function () {
            $($(this).attr('href')).hide();
        });

        // Bind the click event handler
        $(this).on('click', 'a', function(e){
            // Make the old tab inactive.
            $active.removeClass('active');
            $content.hide();

            // Update the variables with the new link and content
            $active = $(this);
            $content = $($(this).attr('href'));

            // Make the tab active.
            $active.addClass('active');
            $content.show();

            // Prevent the anchor's default click action
            e.preventDefault();
        });
    });

    window.gfdrr = gfdrr;
})(window);

