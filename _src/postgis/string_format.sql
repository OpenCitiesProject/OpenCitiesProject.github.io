
CREATE TABLE dk_bldg_regexp AS 
SELECT *,
regexp_replace(
  initcap(
    regexp_replace(
      LOWER(strucname), '\s*unknown\s*','')),'^s{0,}|s{0,}$','') AS strucname_clean_cap,
regexp_replace(
  initcap(
    regexp_replace(
        regexp_replace(
          trim(BOTH ' ' FROM LOWER(roadname)), '\s*unknown\s*',''),'^s{0,}|s{0,}$','')),'\s{0,},(\s*)\s{0,}',',\1') AS roadname_clean_cap,
regexp_replace(
  initcap(
    regexp_replace(
        trim(BOTH ' ' FROM LOWER(locality)), '\s*unknown\s*','')),'\s{0,},(\s*)\s{0,}',',\1') AS locality_clean_cap,
regexp_replace(
  initcap(
    regexp_replace(
      LOWER(roadno), '\s*unknown\s*','')),'^s{0,}|s{0,}$','') AS roadno_clean_cap,
regexp_replace(
  initcap(
    builduse),'^s{0,}|s{0,}$','') AS builduse_clean_cap,
regexp_replace(
  initcap(remarks),'^s{0,}|s{0,}$','') AS remarks_clean_cap,
regexp_replace(
  LOWER(
    REPLACE(
      REPLACE(
        REPLACE(dstructure.struse1t, ' ',''), '&',''),'_', '')),'^s{0,}|s{0,}$','') AS struse1t_clean,
10*(CAST(dstructure.floor_no AS INT)) AS bld_height
FROM dstructure
ORDER BY ST_YMax(ST_Envelope(wkb_geometry)) DESC;


create table named_roads as
select
 road.ogc_fid,
 road.wkb_geometry,
 road.layer,
 MAX(droadcl.length) as length,
 MAX(droadcl.pavement) as pavement,
 MAX(droadcl.highway_id) as highway_id,
 MAX(droadcl.seg_class) as seg_class,
 MAX(droadcl.width) as width,
 MAX(droadcl.numlanes) as numlanes
 from road LEFT JOIN droadcl ON ST_Intersects( droadcl.wkb_geometry,
 road.wkb_geometry) = True group by road.ogc_fid;
