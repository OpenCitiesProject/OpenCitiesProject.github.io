#buildings[zoom >=10][struse1t_clean != 'noinfo']
[struse1t_clean != '']
[struse1t_clean != 'noinformation']
[struse1t_clean != 'uc'][struse1t_clean != 'underconstruction']{ 
[struse1t_clean='educationresearch'] {
   polygon-fill: @school;
   [zoom > 16] {
     building-fill-opacity:@fill; 
     building-fill:@school;
    }
  }
[struse1t_clean='governmentalservices'],
[struse1t_clean='nongovernmentservices'],
[struse1t_clean='transportcommunication'],
[struse1t_clean='serviceactivity'],
[struse1t_clean='communityservice'],
[struse1t_clean='restrictedarea'] {
  polygon-fill: @building;
  [zoom > 16] {
    building-fill-opacity:@fill; 
    building-fill:@building;
  }
    
    
}
[struse1t_clean='manufacturingandprocessingactivity'] {
  polygon-fill: @industrial;
  [zoom > 16] {
    building-fill-opacity:@fill; 
    building-fill:@industrial; }
  }
[struse1t_clean='officeuse'],
[struse1t_clean='commercialactivity'],
[struse1t_clean='miscellaneous'],
[struse1t_clean='mixeduse'] {
  polygon-fill: @commercial;
  [zoom > 16] {
    building-fill-opacity:@fill; 
    building-fill:@commercial; }
  }
[struse1t_clean='residential'] {
  polygon-fill: @residential;
 [zoom > 16] {
    building-fill-opacity:@fill; 
    building-fill:@residential; }
  }
[struse1t_clean='openspace'],
[struse1t_clean='recreationalfacilities'], 
[struse1t_clean='agriculture'] {
  polygon-fill: @agriculture;
  [zoom > 16] {
    building-fill-opacity:@fill; 
    building-fill:@agriculture;
  }
}
  [zoom > 16] {
    building-height:'[bld_height]';
    }
}