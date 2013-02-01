//Map {background-color:rgba(30,30,29,1);}
#namedroads::shapes [zoom >= 11] {
 [zoom >= 15] {
    polygon-opacity:1;
    polygon-fill:rgba(30,30,30,.81);
        line-color:rgba(255,255,255,1);
          line-width:0.5;
      line-gamma:1;

    }
  [zoom <= 15] {
    polygon-fill:rgba(30,30,30,.41);
    line-color:rgba(255,255,255,.81);
    line-opacity:1;
          line-width:.41;
      line-gamma:1;

    }

}

#namedroads[length > 0.019][zoom >= 15][width != 'undefined'] {
  ::text[width > 30][zoom >= 15], [width > 0][zoom >= 16] {
    [zoom = 15][width > 30] {text-size:10;}
    [zoom >= 16][width > 20][width <= 30][width != 'undefined'] {text-size:9;}
    [zoom > 17][width > 10][width <= 20][width != 'undefined'] {text-size:8;}
    [zoom > 16][width <= 20][width > 0][width != 'undefined'] {text-size:8;}
    [zoom <= 16][width <= 20]{text-fill:transparent; text-halo-fill:transparent;}
  line-color:transparent;
  text-name: '[highway_id]';
  text-face-name:'MgOpen Cosmetica Bold Oblique';
 // text-face-name:'NewsGoth BT Bold';
  text-opacity:1;
  text-halo-radius:1;
  text-halo-fill:fadeout(lighten(rgba(255,255,255,0.91),20%),10);
  text-fill:rgba(40,40,40,1);
  text-transform:uppercase;
  text-allow-overlap:false;
  text-min-distance:100;
  text-min-padding:20;
  text-min-path-length:50;
  text-placement:line;
    [zoom < 18] {  text-spacing:1000;}
    [zoom = 18] {  text-spacing:5000;}
 // text-comp-op:src-out;
  text-character-spacing:1.3;
    }
}/*


 #footprints::footprints {
  [zoom >= 11][zoom < 14][area>400] {
    polygon-fill:lighten(@building,4);
    polygon-opacity:0.4;
  }
  [zoom=14][area>250] {
    polygon-fill:lighten(@building,2);
    polygon-opacity:0.4;

  }
  [zoom=15][area>150] {
    polygon-fill:lighten(@building,1);
    line-color:darken(@building,8);
    line-width:0.15 * @ls;
    polygon-opacity:0.4;
    line-opacity:0.7;

  }
  [zoom>15][area>0],[zoom > 15][area = 'Undefined'] {
    polygon-fill:@building;
    line-color:darken(@building,22);
    line-width:0.5 * @ls;
    polygon-opacity:0.4;
    line-opacity:0.7;
    ::under[zoom>16]{
      line-offset:1;
      line-width:2;
      line-color:lighten(@building,30);
      line-opacity:0.4;
    }
  }
  }*/
