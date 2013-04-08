@color1:rgb(21,37,45);
@color2:rgb(118,135,102);
@color3:rgb(229,219,130);
//reduce opacity for residential
@color4:rgba(187,153,68,.7);
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

/*#photos[zoom >=10][specified_file_path_1 != '']
[struse1t_clean != 'noinfo']
[struse1t_clean != 'noinformation']
[struse1t_clean != 'uc']
[struse1t_clean != 'underconstruction'] {
  comp-op:src-out;
[struse1t_clean='educationresearch'] {
  polygon-fill: @color1;
  building-fill:@color1;
  }
  
[struse1t_clean='governmentalservices'],
[struse1t_clean='serviceactivity'],
[struse1t_clean='nongovernmentservices']    {
  polygon-fill: @color3;
  building-fill:@color3;
  }
[struse1t_clean='manufacturingandprocessingactivity'] {
  polygon-fill: @color8;
  building-fill:@color8;
  }

[struse1t_clean='transportcommunication'] {
  polygon-fill: @color5;
  building-fill:@color5;
  }
[struse1t_clean='officeuse'],
[struse1t_clean='commercialactivity'] {
  polygon-fill: @color7;
  building-fill:@color7;
  }
[struse1t_clean='openspace'],
[struse1t_clean='recreationalfacilities'], 
[struse1t_clean='communityservice'] {
  polygon-fill: @color6;
  building-fill:@color6;
  }
[struse1t_clean='residential'] {
  polygon-fill: @color4;
  building-fill:@color4;
  }
[struse1t_clean='agriculture'] {
  polygon-fill: @color2;
  building-fill:@color2;
  }
	[zoom > 16] {
      [floor_no <= 50] { building-height:30;}
      [floor_no <= 30] { building-height:25;}
      [floor_no <= 20] { building-height:10;}
      [floor_no <= 10] { building-height:5;}
      [floor_no <= 5] { building-height:3; line-color:transparent;}
  }
  [zoom >= 18] {
      [floor_no <= 50] { building-height:40;}
      [floor_no <= 30] { building-height:30;}
      [floor_no <= 20] { building-height:15;}
      [floor_no <= 10] { building-height:8;}
      [floor_no <= 5] { building-height:3; line-color:transparent;}
  }

}*/

