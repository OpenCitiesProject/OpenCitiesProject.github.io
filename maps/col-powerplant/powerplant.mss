#power{
  marker-file: url(/Users/BobbySudekum/Documents/utility/maki/industrial-24.png);
  marker-allow-overlap:true;
/*  text-name: '[CAPACITY]';
  text-size: 10;
  text-face-name: 'Avenir Light';
  text-allow-overlap:true;*/
}
#buffer {
  line-color:#594;
  line-width:0.5;
  polygon-comp-op:color-dodge;
  line-opacity:0; 
  polygon-opacity:.3;
  polygon-fill:#666666;
}

 
#utline {
  line-width:1;
  line-color:#999999;
  line-smooth:.7;
  image-filters:agg-stack-blur(1,1);
  line-dasharray: 9, 6, 3, 6; 
}

#adminpop {
  polygon-opacity:.3;
  line-color:#fecc5c;
  line-opacity:.1;
  line-width:1;
  image-filters:agg-stack-blur(1,1);
}

#adminpop[total_four>=300000]{polygon-fill:#BD0026;}
#adminpop[total_four<=300000][total_four>=163000]{polygon-fill:#F03B20;}
#adminpop[total_four<=163000][total_four>=101000]{polygon-fill:#FD8D3C;}
#adminpop[total_four<=101000][total_four>=60000]{polygon-fill:#FECC5C;}
#adminpop[total_four<=60000]{polygon-fill:#FFFFB2;polygon-opacity:.3;}

#adminpop[DS_N="Rathmalana"]{polygon-fill:#FD8D3C;}
#adminpop[DS_N="Kaluthara"]{polygon-fill:#FD8D3C;}