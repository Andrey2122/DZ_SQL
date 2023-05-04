select "name", year_of from public.album
where year_of = 2018;

SELECT "name", duration
FROM public.songs
WHERE duration = (
         SELECT max(duration) 
         FROM public.songs
      );
     
SELECT "name", duration
FROM public.songs
WHERE duration < 3.5;

SELECT "name", year_of FROM public.collection
WHERE year_of >= 2018 AND year_of <= 2020;

SELECT "name" FROM public.squad
WHERE  "name" not in ('% %') 

SELECT "name" from public.songs
WHERE "name" LIKE '%мой%' OR "name" LIKE '%my%'
