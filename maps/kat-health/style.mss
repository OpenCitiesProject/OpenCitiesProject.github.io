/*
#health::eglow[emergency='yes']{
  marker-width:380;
  marker-fill:#fed 	;
  marker-fill-opacity:.1;
  marker-line-color:#fff;
  marker-line-width:4;
  marker-line-opacity:.25;
  marker-allow-overlap:true;
  marker-comp-op:color-burn;
  image-filters:agg-stack-blur(2,2);
}*/

#health::pharm[amenity='pharmacy']{
  marker-allow-overlap:true;
  marker-width:10;
  //marker-file:url('img/pharm-18.png');
}

#health::hosp[amenity='hospital']{
  marker-allow-overlap:true;
  marker-file:url('img/hospital-24.png');
}

#health::emer[emergency='yes']{
  marker-allow-overlap:true;
  [emergency='yes'] { marker-file:url('img/emergency-24.png'); }
}



#schools {
  marker-width:6;
  marker-fill:#f45;
  marker-line-color:#813;
  marker-allow-overlap:true;
}
