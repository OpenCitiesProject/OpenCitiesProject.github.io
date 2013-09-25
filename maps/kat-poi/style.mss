//Map { background-color:@dk_gray; }

@white:   #f6f6f6;
@lt_gray: #eeeeee;
@red:     #ff5335;
@gold:    #ffcc00;
@green:   #7dbd32;
@lt_blue: #3b97cc;
@md_blue: #327dbd;
@dk_blue: #255d91;
@purple:  #7737ff;

@dk_gray: #3f3f3f;
@black:   #202020;

#schools[zoom>11]{
  [zoom=12] { marker-height:20 * .2; marker-line-width:2 *  0; }
  [zoom=13] { marker-height:20 *.35; marker-line-width:2 *  0; }
  [zoom=14] { marker-height:20 * .5; marker-line-width:2 *.25; }
  [zoom>14] { marker-height:20 *.75; marker-line-width:2 *.75; }
  //marker-fill:@green;
  marker-line-color:@lt_gray;
  //marker-allow-overlap:true;
  marker-file:url('img/school-24.png');
}


#worship[zoom>11]{
  [zoom=12] { marker-height:20 * .2; marker-line-width:2 *  0; }
  [zoom=13] { marker-height:20 *.35; marker-line-width:2 *  0; }
  [zoom=14] { marker-height:20 * .5; marker-line-width:2 *.25; }
  [zoom>14] { marker-height:20 *.75; marker-line-width:2 *.75; }
	marker-fill:@lt_blue;
    marker-fill-opacity:.9;
    marker-line-color:@lt_gray;
  	marker-opacity:2;
  [religion='hindu'] { marker-fill:@purple; }
  [religion='buddhist'] { marker-fill:@red; }
  /*
  marker-fill:@dk_gray;
  marker-line-color:@lt_gray;
  marker-allow-overlap:true;
  [religion='hindu'] { marker-fill:@lt_blue; }
  [religion='buddhist'] { 
    marker-fill:@lt_gray;
    marker-line-color:@lt_blue;
  }
  //[religion='hindu'] {marker-file:url('img/hindu.png'); }
    */
}


#historical[zoom>11]{
  [zoom=12] { marker-height:20 * .2; marker-line-width:2 *  0; }
  [zoom=13] { marker-height:20 *.35; marker-line-width:2 *  0; }
  [zoom=14] { marker-height:20 * .5; marker-line-width:2 *.25; }
  [zoom>14] { marker-height:20 *.75; marker-line-width:2 *.75; }
  marker-fill:@green;
  marker-fill-opacity:.9;
  marker-line-color:#fff;
  marker-allow-overlap:true;
}
