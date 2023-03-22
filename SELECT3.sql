-- 1. Количество исполнителей в каждом жанре. 
 
SELECT s.singer_name, COUNT(s.singer_id) FROM Singer as s
join singer_genre sg on s.singer_id = sg.singer_id 
join music_genre mg on sg.music_genre_id = mg.music_genre_id 
GROUP BY s.singer_name ;
 
-- 2. Количество треков, вошедших в альбомы 2019–2020 годов. 
 
SELECT COUNT(song_id) FROM Song s 
JOIN album a  ON s.album_id = a.album_id 
WHERE album_year BETWEEN '01.01.2019' AND '31.12.2020';

-- 3. Средняя продолжительность треков по каждому альбому.

select a.album_title, AVG(s.song_length) from song s  
join album a on s.album_id = a.album_id 
group by a.album_title;

-- 4. Все исполнители, которые не выпустили альбомы в 2020 году. 

select s.singer_name from singer s 
where s.singer_name not in (
      select s2.singer_name from singer s2
      join singer_album sa on s2.singer_id = sa.singer_id
      join album a on sa.album_id = a.album_id
      where a.album_year BETWEEN '01.01.2020' AND '31.12.2020'
      );
      
-- 5. Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами). 
     
SELECT compilation_title, si.singer_name, si.singer_id  FROM Compilation as с 
JOIN Song_compilation as sc ON с.compilation_id  = sc.compilation_id 
JOIN song as s ON sc.song_id = s.song_id  
JOIN album as a ON s.album_id = a.album_id 
JOIN singer_album as sa ON a.album_id = sa.album_id 
JOIN singer as si ON sa.singer_id = si.singer_id 
WHERE si.singer_name = 'Ария'; 

-- 6. Названия альбомов, в которых присутствуют исполнители более чем одного жанра. 

select distinct a.album_title from album a 
join singer_album sa on a.album_id = sa.album_id 
join singer s on sa.singer_id = s.singer_id 
join singer_genre sg on s.singer_id = sg.singer_id 
group by a.album_title, s.singer_id 
having count(sg.music_genre_id) > 1;

-- 7. Наименования треков, которые не входят в сборники. 
 
SELECT song_title, sc.compilation_id FROM Song s 
left JOIN Song_compilation sc ON s.song_id = sc.song_id 
where sc.compilation_id is null;

-- 8. Исполнитель или исполнители, написавшие самый короткий по продолжительности трек, — теоретически таких треков может быть несколько 

select s.singer_name from singer s 
join singer_album sa on s.singer_id = sa.singer_id 
join album a on sa.album_id = a.album_id 
join song s2 on a.album_id = s2.album_id 
where s2.song_length = (
      select min(s3.song_length) from song s3
      );
      
-- 9.Названия альбомов, содержащих наименьшее количество треков.
     
select a.album_title from album a
join song s on a.album_id = s.album_id 
group by a.album_title 
having count(s.song_id) = (
      select count(s2.song_id) from song s2 
     -- join album a2 on s2.album_id = a2.album_id 
      group by s2.song_id  
      order by 1
      limit 1
      );