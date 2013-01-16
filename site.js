var maps = ["gfdrr.dhaka-3d-building-use", "gfdrr.dhaka-building-survey-images", "gfdrr.dhaka-building-plans", "gfdrr.dhaka-building-footprints,gfdrr.dhaka-building-labels", "gfdrr.dhaka-gfdrr-roads"]
var divs = ["bld-use", "bld-img", "bld-plan", "bld-labels", "gfdrr-roads"]
mapbox.load('gfdrr.map-n7mlul8g,gfdrr.dhaka-gfdrr-roads,' + maps[0], function(o) {
	var map = mapbox.map(divs[0]);
	map.addLayer(o.layer).zoom(17).center({
		lat: 23.7481,
		lon: 90.3965
	}).setPanLimits([{
		lat: 23.6845,
		lon: 90.3315
	}, {
		lat: 23.8909,
		lon: 90.464
	}]);
	map.ui.legend.add();		
	map.setZoomRange(11, 18).interaction.auto();
});


mapbox.load('gfdrr.map-n7mlul8g,gfdrr.dhaka-gfdrr-roads,' + maps[1], function(o) {
	var map = mapbox.map(divs[1]);
	map.addLayer(o.layer).zoom(17).center({
		lat: 23.74348,
		lon: 90.41046
	}).setPanLimits([{
		lat: 23.6845,
		lon: 90.3315
	}, {
		lat: 23.8909,
		lon: 90.464
	}]);
	map.setZoomRange(11, 18).interaction.auto();
	map.ui.legend.add();		
	
});


mapbox.load('gfdrr.map-fpb8n04o,' + maps[2], function(o) {
	var map = mapbox.map(divs[2]);
	map.addLayer(o.layer).zoom(18).center({
		lat: 23.72458,
		lon: 90.37680
	}).setPanLimits([{
		lat: 23.6845,
		lon: 90.3315
	}, {
		lat: 23.8909,
		lon: 90.464
	}]);
	map.setZoomRange(11, 18).interaction.auto();
	map.ui.legend.add();		
	
});


mapbox.load('gfdrr.map-fpb8n04o', function(o) {
	var map = mapbox.map(divs[3]);
	map.addLayer(o.layer).zoom(16).center({
		lat: 23.7279,
		lon: 90.4061
	}).setPanLimits([{
		lat: 23.6845,
		lon: 90.3315
	}, {
		lat: 23.8909,
		lon: 90.464
	}]);
	map.setZoomRange(11, 18).interaction.auto();
	
});

var m = mapbox.map('osm');
m.addLayer(new MM.TemplatedLayer('http://b.tile.openstreetmap.org/{Z}/{X}/{Y}.png')).zoom(16).center({
	lat: 23.7279,
	lon: 90.4061
}).setPanLimits([{
	lat: 23.6845,
	lon: 90.3315
}, {
	lat: 23.8909,
	lon: 90.464
}]).setZoomRange(11, 18).ui.attribution.add().content('Map tiles by <a href="http://stamen.com">Stamen Design</a>, under' + ' <a href="http://creativecommons.org/licenses/by/3.0">CC BY 3.0</a>.' + ' Data by <a href="http://openstreetmap.org">OpenStreetMap</a>, under <a href="http://creativecommons.org/licenses/by-sa/3.0">CC BY SA</a>.');
m.ui.zoomer.add();
m.ui.zoombox.add();
