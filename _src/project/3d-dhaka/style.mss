@color1:rgb(21,37,45);
@color2:rgb(118,135,102);
@color3:rgb(229,219,130);
//reduce opacity for residential
@color4:rgba(187,153,68,1);
@color5:rgb(187,102,34);
@color6:rgb(177,32,15);
@color7:rgb(52,46,58);
@color8: rgb(26,19,52);
@color9: rgb(38,41,74);
@color10: rgb(1,84,90);
@color11: rgb(1,115,81);
@color12: rgb(3,195,131);
@color19: rgb(170,217,98);
@color14: rgb(251,191,69);
@color15: rgb(239,106,50);
@color16: rgb(237,3,69);
@color17: rgb(161,42,94);
@color13: rgb(113,1,98);
@color18: rgb(17,1,65);
@red:#ffcc00;
@single:rgba(255,204,0,.3);

/*







#marxsqlorderbystymax[sum_ad_tot_clean > 70] {
  line-comp-op:dst-out;
  polygon-comp-op:dst-in;
  line-opacity:0.01;
  line-color:transparent;
  polygon-fill:@single;  //line-comp-op:color-dodge;
 // polygon-comp-op:color-dodge;
  //line-color:rgba(255,255,255,1); 
 // line-comp-op:color-dodge;
  building-height:'[sum_ad_tot_clean]';
  building-fill:transparent;
  building-fill-opacity:0;
  [sum_ad_tot_clean > 150]{
  //  building-fill:spin(@red,0%);
    building-fill:@single;
    building-fill-opacity:.9;}
  [sum_ad_tot_clean < 125][sum_ad_tot_clean >= 100]{
  //  building-fill:spin(@red,20);
        building-fill:@single;

    building-fill-opacity:.8;}
  [sum_ad_tot_clean < 110][sum_ad_tot_clean >= 100]{
   // building-fill:spin(@red,50);
        building-fill:@single;

    building-fill-opacity:.6;}
  [sum_ad_tot_clean < 110][sum_ad_tot_clean >= 100]{
  //  building-fill:spin(@red,100);
        building-fill:@single;

    building-fill-opacity:.6;}
  [sum_ad_tot_clean < 100][sum_ad_tot_clean >= 90]{
  //  building-fill:spin(@red,150);
        building-fill:@single;

    building-fill-opacity:.4;}
  [sum_ad_tot_clean < 90][sum_ad_tot_clean >= 70]{
  //  building-fill:spin(@red,200);
        building-fill:@single;

    building-fill-opacity:.2;}
  [sum_ad_tot_clean < 70][sum_ad_tot_clean > 0]{
    //building-fill:spin(@red,240);
        building-fill:@single;

    building-fill-opacity:.1;}
}*/
/// no buildings just polygons
//#marxsqlorderbystymax
#marx10ksql[sum_ad_tot_clean != 0] {
  line-smooth:1;
  polygon-smooth:1;
  line-color:transparent;
 // polygon-comp-op:color-dodge;
  //line-color:rgba(255,255,255,1); 
 // line-comp-op:color-dodge;
  polygon-fill:transparent;
  [sum_ad_tot_clean > 150]{
    polygon-fill:@single;
    polygon-opacity:.9;}
  [sum_ad_tot_clean < 125][sum_ad_tot_clean >= 100]{
        polygon-fill:@single;

    polygon-opacity:.6;}
  [sum_ad_tot_clean < 110][sum_ad_tot_clean >= 100]{
   // polygon-fill:spin(@red,50);
        polygon-fill:@single;

    polygon-opacity:.4;}
  [sum_ad_tot_clean < 110][sum_ad_tot_clean >= 100]{
        polygon-fill:@single;

    polygon-opacity:.3;}
  [sum_ad_tot_clean < 100][sum_ad_tot_clean >= 90]{
        polygon-fill:@single;

    polygon-opacity:.2;}
  [sum_ad_tot_clean < 90][sum_ad_tot_clean >= 70]{
        polygon-fill:@single;

    polygon-opacity:.1;}
  [sum_ad_tot_clean < 70][sum_ad_tot_clean > 0]{
    polygon-fill:@single;
    polygon-opacity:.05; 
  }
  polygon-comp-op:color-dodge;
}

@dhaka1:rgb(99,126,128);
@dhaka2:rgb(147,126,104);
@dhaka3:rgb(198,81,32);
@dhaka4:rgb(156,138,76);
@dhaka5:rgb(146,43,57);
@dhaka6:rgb(125,151,109);
@dhaka7:rgb(0,70,123);
@dhaka8:rgb(50,50,50);

/*
@fill:0.7;
#buildings[zoom >=10]
[struse1t_clean != 'noinfo']
[struse1t_clean != 'noinformation']
[struse1t_clean != 'uc']
[struse1t_clean != 'underconstruction'] {
[struse1t_clean='educationresearch'] {
  polygon-fill: @color1;
 [zoom > 16] {
    building-fill-opacity:@fill; 
    building-fill:@color1; }
  }
[struse1t_clean='governmentalservices'],
[struse1t_clean='serviceactivity'],
[struse1t_clean='nongovernmentservices']    {
  polygon-fill: @color3;
 [zoom > 16] {
    building-fill-opacity:@fill; 
    building-fill:@color3; }
  }
[struse1t_clean='manufacturingandprocessingactivity'] {
  polygon-fill: @color8;
 [zoom > 16] {
    building-fill-opacity:@fill; 
    building-fill:@color8; }
  }
[struse1t_clean='transportcommunication'] {
  polygon-fill: @color5;
 [zoom > 16] {
    building-fill-opacity:@fill; 
    building-fill:@color5; }
  }
[struse1t_clean='officeuse'],
[struse1t_clean='commercialactivity'] {
  polygon-fill: @color7;
 [zoom > 16] {
    building-fill-opacity:@fill; 
    building-fill:@color7; }
  }
  
  
[struse1t_clean='openspace'],
[struse1t_clean='recreationalfacilities'], 
[struse1t_clean='communityservice'] {
  polygon-fill: @color6;
 [zoom > 16] {
    building-fill-opacity:@fill; 
    building-fill:@color6; }
  }
[struse1t_clean='residential'] {
  polygon-fill: @color4;
 [zoom > 16] {
    building-fill-opacity:@fill; 
    building-fill:@color4; }
  }
[struse1t_clean='agriculture'] {
  polygon-fill: @color2;
 [zoom > 16] {
    building-fill-opacity:@fill; 
    building-fill:@color2; }
  }
  [struse1t_clean='miscellaneous'],
  [struse1t_clean='mixeduse'],
[struse1t_clean='uc'],
 [struse1t_clean='underconstruction'],
   [struse1t_clean='noinfo'],
 [struse1t_clean='noinformation'] {
  }
  [zoom >=10][zoom <= 16] {
  polygon-opacity:.8;
  polygon-comp-op:screen;

  }
  [zoom > 16]{  building-height:'[bld_height]';}
}
//Map{background-color:rgba(30,30,30,.1);}
*/
/*
@fill:0.7;
#buildings[zoom >=10]
[struse1t_clean != 'noinfo']
[struse1t_clean != 'noinformation']
[struse1t_clean != 'uc']
[struse1t_clean != 'underconstruction'] {
[struse1t_clean='educationresearch'] {
  polygon-fill: @dhaka1;
 [zoom > 16] {
    building-fill-opacity:@fill; 
    building-fill:@dhaka1; }
  }
[struse1t_clean='governmentalservices'],
[struse1t_clean='serviceactivity'],
[struse1t_clean='nongovernmentservices']    {
  polygon-fill: @dhaka3;
 [zoom > 16] {
    building-fill-opacity:@fill; 
    building-fill:@dhaka3; }
  }
[struse1t_clean='manufacturingandprocessingactivity'] {
  polygon-fill: @dhaka8;
 [zoom > 16] {
    building-fill-opacity:@fill; 
    building-fill:@dhaka8; }
  }
[struse1t_clean='transportcommunication'] {
  polygon-fill: @dhaka5;
 [zoom > 16] {
    building-fill-opacity:@fill; 
    building-fill:@dhaka5; }
  }
[struse1t_clean='officeuse'],
[struse1t_clean='commercialactivity'] {
  polygon-fill: @dhaka7;
 [zoom > 16] {
    building-fill-opacity:@fill; 
    building-fill:@dhaka7; }
  }
  
  
[struse1t_clean='openspace'],
[struse1t_clean='recreationalfacilities'], 
[struse1t_clean='communityservice'] {
  polygon-fill: @dhaka6;
 [zoom > 16] {
    building-fill-opacity:@fill; 
    building-fill:@dhaka6; }
  }
[struse1t_clean='residential'] {
  polygon-fill: @dhaka4;
 [zoom > 16] {
    building-fill-opacity:@fill; 
    building-fill:@dhaka4; }
  }
[struse1t_clean='agriculture'] {
  polygon-fill: @dhaka2;
 [zoom > 16] {
    building-fill-opacity:@fill; 
    building-fill:@dhaka2; }
  }
  [struse1t_clean='miscellaneous'],
  [struse1t_clean='mixeduse'],
[struse1t_clean='uc'],
 [struse1t_clean='underconstruction'],
   [struse1t_clean='noinfo'],
 [struse1t_clean='noinformation'] {
  }
  [zoom >=10][zoom <= 16] {
  polygon-opacity:.8;
  polygon-comp-op:screen;

  }
  [zoom > 16]{  building-height:'[bld_height]';}
}
*/


