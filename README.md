dhaka
=====

World Bank GFDRR

Mapbox Account: https://tiles.mapbox.com/gfdrr

This data is from Robert Soden who works at GFDRR at the Bank (he helped start HOT and use to work at DevSeed for 4 years before going to the Bank). The big deal here is that the Bank is moving all their disaster risk management (DRM) data work to open data :).


One of the main projects GFDRR does is to look at threats in context. For example if an earthquake of x magnitude strikes, what will the damage be? What schools will collapse? How much will it cost to retrofit the schools to be better? What is the $/life that could be saved? Again, a lot of this goes back to corruption - too often politicians rout the spending to only their constituents, and thus poor folks can be put into a place where they are more vulnerable - and worst no one knows this. If the data is open, and visualized, then this kind of favoritism becomes harder.   

To do a DRM you don't only need the threat data, like "type of earthquake" but you also need the structural data, like number of stories per building, building material, etc. This is where OSM could be a game changer, in helping source building data to run these models. 

There are two goals with Dhaka and two potential deliveries:  

# Goals

- Visualize the buildings based on building classification. 
- See what of this data would be new to OSM (this data is from the government and they are interested to know what funding an OSM import could look like). 
- Where possible use the building 3d symbolizer. 


# Deliveries 

Again, we are brought in for making this sexy. Hot maps. Hot colors. More artistic than functional. 

- Map different building classifications. Maybe this is 5 different maps, maybe this is one map with 5 colors, maybe this is 5 maps with a smart UI in an iFrame they could drop into their site. They will want to use this on a site and in slides for a talk. 
- A map showing what is in OSM now v what could be in if we did an import. Again, a slide could be good here, this will let us get a web win and a powerpoint win. 

## Resources

1. [UN Habitat Pakistan Guide to Structural Damage (ppt)](http://www.unhabitat.org.pk/bids/Assessment%20Guidelines%20with%20Sketches%20refined-%20BH%20311009.ppt)
1. [Katcha vs. Pucca pictures](http://www.unhabitat.org.pk/newweb/Latest%20Reports/UNH/House%20types.pdf)


## Building Types

From [UN Habitat Pakistan Guide to Structural Damage (ppt)](http://www.unhabitat.org.pk/bids/Assessment%20Guidelines%20with%20Sketches%20refined-%20BH%20311009.ppt)

> 
> ### Pucca
> 
> - Houses with structure in RC Frame with RC sub structure (which means foundation), vertical and horizontal reinforcement, and walls made of block/brick/stone used with cement sand mortar.
> - If both walls and roof are made of Pucca materials, the house is classified as Pucca.
> - Pucca wall is made of burnt bricks,  stone and cement concrete.
> - Pucca roof is made of Tiles, Slate, Corrugated Iron, Zinc or other metal sheets, asbestos cement sheets, bricks, lime and stone, stone and RCC and concrete.
> 
> ### Katcha
> 
> - Houses made of mud used for walls/roof and/or dry stone masonry, 80% of the Katcha houses have timber frame (columns and beams). Mud roof can be done with wooden panels or wooden beams or CGI Sheets.
> - If both walls and roof are made of katcha materials, the house is classified as Katcha.
> 
> ### Semipucca
> 
> - Houses without RC frame (columns and beams) but with good masonry work with cement mortar and RCC/CGI Roof.
> - There is no universal agreement of what is the percentage of the material that could define semi pucca.
> - Example: A house with good brick masonry and RC foundation is considered as semi pucca.
>

## Maps

### 1\. Structure Types

- Building symbolizer showing relative height (by number of stories), building color based on structure type. 



### 2\. Building Uses

- Building Symbolizer showing relative height, building color based on struse1t column. 



### 3\. Survey Images

- Building Symbolizer showing relative height, building color based on struse1t column
- Tooltips display photographs of buildings taken during survey
- tooltips include additional information reported during the survey + house owner, street name, etc. 




### 4\. Building Survey Blueprints

- Full Tooltips display hand-drawn building blueprint captured during survey.
- tooltips include additional information reported during the survey + house owner, street name, etc.
- information about building's physical condition

