/*
#roadcl {
  [length>2.3][zoom=12],
  [length>2][zoom=13],
  [length>1.6][zoom=14],
  [length>1][zoom>=15],
  [length>0][zoom>=15] {
    text-transform: uppercase;
    text-name: "[highway_id]";
    text-character-spacing: 0.25;
    text-placement: line;
    text-face-name: @sans;
    text-fill: #333;
    text-size: 8 *@ts;
    text-halo-fill: @road_halo;
    text-halo-radius: 1.5 *@ts;
    text-spacing: 150 *@ts;
    text-min-distance: 100;
    [zoom>=15] {
      text-size: 10 *@ts;
      text-min-distance: 10;
    }
    [zoom>=17] {
      text-size: 10 *@ts;
      text-fill: #555;
      text-halo-radius: 2 *@ts;
    }
    [zoom>=18] {
      text-size: 11 *@ts;
    }
  }
}*/

#footprints[zoom<=20][zoom>=15] {
  polygon-fill:rgba(255,255,255,.28);
  line-color:rgba(0,0,0,.48);
  line-comp-op:color-dodge;
  [zoom>=15][area>32000],
  [zoom>=16][area>8000],
  [zoom>=17][area>2000],
  [zoom>=18][area>400],
  [zoom>=19][area>0] {
    text-name: '[strucname_clean_cap]';
    text-size: 10 *@ts;
    text-face-name: 'Proxima Nova Semibold';
    text-fill: fadeout(lighten(@road_halo,25%),25); text-opacity:1;
    text-halo-fill: darken(@building * 0.6,20%);
    text-halo-radius: 1;
    text-wrap-width: 40 *@ts;
    text-placement:interior;
    text-line-spacing: -1 *@ts;
    text-character-spacing:0.5;
  }
  [zoom>=17][area>6400],
  [zoom>=18][area>2000][area<=8000] {
    text-size: 11 *@ts;
    text-wrap-width: 50 *@ts;
  }
  [zoom>=18][area>8000] {
    text-size: 12 *@ts;
    text-wrap-width: 60 *@ts;
  }
}


 #footprints::labels {
  [strucname_clean_cap != 'undefined']
  [strucname_clean_cap != 'Govt Slum']
  [strucname_clean_cap != 'Govt Slumt']
  [strucname_clean_cap != 'Govt - Slum']
  [strucname_clean_cap !='Government']
  [strucname_clean_cap !='Governmet']
  [strucname_clean_cap !='None'] {
    ::text[zoom = 16][area>750],
    ::text[zoom >= 17][area>0],
    ::text[zoom >= 17][area= 'Undefined']
      {
      text-name: '[strucname_clean_cap]';
      text-face-name:'Proxima Nova Semibold';
      text-opacity:1;
      text-character-spacing:0.9;
      text-halo-radius:1.5;
      text-halo-fill:#fff;
      text-fill:rgb(255,255,255);
      text-allow-overlap:false;
      text-wrap-width:20;
      text-placement:interior;
    [zoom = 16]{
      text-size:10;
      text-min-padding:30;
      text-align:auto;
      text-min-distance:25;
    }
   [zoom = 18]{
       text-min-distance:34;
       text-min-padding:16;
      }
    [zoom = 17]{
      text-size:10;
      text-min-padding:30;
      text-align:auto;
      text-min-distance:15;
    }
    [zoom = 19]{
      text-min-distance:2;
      text-min-padding:4;
      }
    
    }
   }
}