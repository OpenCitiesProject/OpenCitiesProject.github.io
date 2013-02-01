

/* ****************************************************************** */
/* MAPBOX STREETS                                                     */
/* ****************************************************************** */

/* ================================================================== */
/* FONTS
/* ================================================================== */

/* directory to load fonts from in addition to the system directories */
Map {
  font-directory: url(./../fonts);
  buffer-size: 768;
  }



/* set up font sets for various weights and styles */
@sans_lt:           "Open Sans Regular", "DejaVu Sans ExtraLight", "M+ 2c light", "Arial Unicode MS Regular", "unifont Medium";
@sans_lt_italic:    "Open Sans Italic", "DejaVu Sans Oblique", "M+ 2c light", "Arial Unicode MS Regular", "unifont Medium";
@sans:              "Open Sans Semibold", "DejaVu Sans Book", "M+ 2c medium", "Arial Unicode MS Regular", "unifont Medium";
@sans_bold:         "Open Sans Bold", "DejaVu Sans Bold", "M+ 2c medium", "Arial Unicode MS Regular", "unifont Medium";
@sans_italic:       "Open Sans Semibold Italic", "DejaVu Sans Oblique", "M+ 2c bold", "Arial Unicode MS Regular", "unifont Medium";
@sans_bold_italic:  "Open Sans Bold Italic", "DejaVu Sans Bold Oblique", "M+ 2c bold", "Arial Unicode MS Regular", "unifont Medium";

// Text Scale - *Must be an integer*
// Default is 1. Set to 2 for retina-sized text.
@ts: 1;
// Line Scale -  Integer or float.
// Default is equal to Text Scale.
@ls: @ts;

/* ================================================================== */
/* LANDUSE & LANDCOVER COLORS
/* ================================================================== */

@land:              #E8E0D8;
@water:             #73B6E6;
@grass:             #E1EBB0;
@sand:              #F7ECD2;
@park:              #CDDCA0;
@cemetery:          #D5DCC2;
@wooded:            #B8D088;
@scrub:             #cfdc8c;
@agriculture:       #b8c298;
@quarry:            #D7D9D8;

@building:          #bcbcbc;
@hospital:          #F2E3E1;
@school:            #F2EAB8;
@pitch:             #CAE6A9;
@sports:            @pitch;

@residential:       #d2c8b4;
@commercial:        #c0c0b3;
@industrial:        #bca58e;
@parking:           (@land*0.8)+(#FFF*0.2);
@fill:              1;
@nodata:            #fff;
@nodatafill:        0.7;
/* ================================================================== */
/* ROAD COLORS
/* ================================================================== */

/* For each class of road there are three color variables:
 * - line: for lower zoomlevels when the road is represented by a
 *         single solid line.
 * - case: for higher zoomlevels, this color is for the road's
 *         casing (outline).
 * - fill: for higher zoomlevels, this color is for the road's
 *         inner fill (inline).
 */

@motorway_line:     #fff;
@motorway_fill:     #fff;
@motorway_case:     #000;

@trunk_line:        @motorway_line;
@trunk_fill:        @motorway_fill;
@trunk_case:        @motorway_case;

@primary_line:      #fff;
@primary_fill:      #fff;
@primary_case:      #000;

@secondary_line:    @primary_line;
@secondary_fill:    @primary_fill;
@secondary_case:    @primary_case;

@standard_line:     #fff;
@standard_fill:     #fff;
@standard_case:     #000;

@pedestrian_line:   @standard_line;
@pedestrian_fill:   @standard_line;
@pedestrian_case:   @land;

@cycle_line:        @standard_line;
@cycle_fill:        @standard_fill;
@cycle_case:        @land;

@rail_line:         #aaa;
@rail_fill:         #fff;
@rail_case:         @land;

@bridge_case:       #999;

@aeroway:           lighten(@land,5);

/* ================================================================== */
/* LABEL COLORS
/* ================================================================== */

/* We set up a default halo color for places so you can edit them all
   at once or override each individually. */
@place_halo:        #fff;

@country_text:      @land * 0.2;
@country_halo:      @place_halo;

@state_text:        #666;
@state_halo:        @place_halo;

@city_text:         @land * 0.1;
@city_halo:         @place_halo;

@town_text:         @land * 0.2;
@town_halo:         @place_halo;

@poi_text:          @poi_text;  

@road_text:         #666;
@road_halo:         #fff;

@other_text:        darken(@land,50)*0.8;
@other_halo:        @place_halo;

@locality_text:     #aaa;
@locality_halo:     @land;

/* Also used for other small places: hamlets, suburbs, localities */
@village_text:      #888;
@village_halo:      @place_halo;

@transport_text:    #445;

/* ****************************************************************** */