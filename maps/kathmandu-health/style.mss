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
  marker-width:18;
  marker-file:url('img/pharm-24.png');
}

#health::hosp[amenity='hospital']{
  marker-allow-overlap:true;
  marker-file:url('img/hospital-osm-24.png');
}

#health::emer[amenity='health_post']{
  marker-allow-overlap:true;
  marker-file:url('img/emergency-24.png');
}

#health::clinic[amenity='clinic']{
  marker-allow-overlap:true;
  marker-file:url('img/clinic.png');
}

#health::dent[amenity='dentist']{
  marker-allow-overlap:true;
  marker-width:16;
  marker-file:url('img/dentist-16.png');
}


/*
#schools {
  marker-width:6;
  marker-fill:#f45;
  marker-line-color:#813;
  marker-allow-overlap:true;
}
*/

#countries{
   line-color: #C00;
   line-width: 1;
}
