---
---
;(function(context) {

    var gfdrr = {}

    gfdrr.global = function() {
        var scroll = function(el){
            $('html, body').animate({
                scrollTop: $(el).offset().top
            }, 500);
        }

        $('a[data-scroll]').click(function () {
            var to = $(this).attr('href');
            scroll(to);
            return false;
        });
    };

    gfdrr.slideShow = function(context) {
        var slideIndex = 1,
            $slide = $('[data-index]', context),
            slides = $slide.length;

        $('a.slide-control').click(function() {
            $slide.removeClass('active');
            if ($(this).hasClass('next')) {
                if (slideIndex >= slides) {
                    slideIndex = 1;
                } else {
                    slideIndex++;
                }
            } else {
                if (slideIndex <= 1) {
                    slideIndex = slides;
                } else {
                    slideIndex--;
                }
            }

           $('[data-index="slide-' + slideIndex + '"]', context).addClass('active');
            return false;
        });
    };

    gfdrr.generateMap = function(layer, options, callback) {

        var o = {
            lat: options.lat || 18.46,
            lon: options.lon || 81.65,
            zoom: options.zoom.defaultZoom || 4,
            max: options.zoom.max || 17,
            min: options.zoom.min || 7
        };

        mapbox.load(layer, function(l) {
            var map = mapbox.map('map');
            map.addLayer(l.layer).zoom(o.zoom).center({
                lat: o.lat,
                lon: o.lon
            });

            map.setZoomRange(o.min, o.max);
            map.ui.zoomer.add();
            // map.ui.hash.add();
            map.interaction.auto();
            map.ui.legend.add();
            map.ui.refresh();

            // If a callback was provided trigger it here.
            callback;
        });
    };

    gfdrr.citiesMap = function(el, mapId) {
        var map = mapbox.map(el, mapbox.layer().id(mapId), null, [
            easey_handlers.TouchHandler(),
            easey_handlers.DragHandler(),
            easey_handlers.DoubleClickHandler()
        ]);

        // Create and add marker layer
        var markerLayer = mapbox.markers.layer().features(poi).factory(function(f) {
            var a = document.createElement('a');
                a.className = 'marker marker-' + f.properties.klass;
                a.href = '#' + f.properties.url;
                a.setAttribute('data-scroll', true);

                var city = f.properties.title.split(',')[0],
                    country = f.properties.title.split(',')[1],
                    projects = f.properties.projects.length;

                var up = document.createElement('div');
                    up.className = 'popup';
                    up.innerHTML = '<div class="clearfix"><div class="name">' + city + '<small>' + country + '</small></div><div class="val"><p>' + projects + ' Case Studies</p></div></div>';

                a.appendChild(up);
            return a;
        });

        map.addLayer(markerLayer);
        map.setZoomRange(3, 17);

        var mapDefaults = {
            lat: 22.14,
            lon: 79.63,
            zoom: 4
        };

        // Set iniital center and zoom
        map.centerzoom({
            lat: mapDefaults.lat,
            lon: mapDefaults.lon
        }, mapDefaults.zoom);

        map.setZoomRange(mapDefaults.min,mapDefaults.max);
    };

    gfdrr.tabs = function() {
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

    }

    window.gfdrr = gfdrr;
})(window);

