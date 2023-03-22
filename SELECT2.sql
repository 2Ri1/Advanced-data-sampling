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

select album_title, a.album_id, s.song_length, s.song_title  from album a 
join song s on a.album_id = s.album_id 
group by a.album_id, s.song_length, s.song_title 
order by AVG(s.song_length);

-- 4. Все исполнители, которые не выпустили альбомы в 2020 году. 
 
SELECT singer_name, a.album_title, a.album_year FROM Singer s
join singer_album sa on s.singer_id = sa.singer_id 
join album a on sa.album_id = a.album_id 
WHERE a.album_year  NOT BETWEEN '01.01.2020' AND '31.12.2020'; 
 
-- 5. Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами). 
 
SELECT compilation_title, si.singer_name, si.singer_id  FROM Compilation as с 
JOIN Song_compilation as sc ON с.compilation_id  = sc.compilation_id 
JOIN song as s ON sc.song_id = s.song_id  
JOIN album as a ON s.album_id = a.album_id 
JOIN singer_album as sa ON a.album_id = sa.album_id 
JOIN singer as si ON si.singer_id = si.singer_id 
WHERE si.singer_name = 'Ария'; 
 
-- 6. Названия альбомов, в которых присутствуют исполнители более чем одного жанра. 

select compilation_title from compilation c 
join song_compilation sc on c.compilation_id = sc.compilation_id 
join song s on sc.song_id = s.song_id 
join album a on s.album_id = a.album_id 
join singer_album sa on a.album_id = sa.album_id 
join singer s2 on sa.singer_id = s2.singer_id 
group by compilation_title 
order by count(s2.singer_id) > 1; 
 
-- 7. Наименования треков, которые не входят в сборники. 
 
SELECT song_title, sc.compilation_id FROM Song s 
left JOIN Song_compilation sc ON s.song_id = sc.song_id 
where sc.compilation_id is null;
 
-- 8. Исполнитель или исполнители, написавшие самый короткий по продолжительности трек, — теоретически таких треков может быть несколько 
 
SELECT s.singer_id, s2.song_title , MIN(s2.song_length) FROM Singer s 
JOIN singer_album sa ON s.singer_id = sa.singer_id 
JOIN album a ON sa.album_id = a.album_id  
JOIN song s2 ON a.album_id = s2.album_id 
group by s.singer_id, s2.song_title 
ORDER by  MIN(s2.song_length)
limit 1;

-- 9.Названия альбомов, содержащих наименьшее количество треков.

select album_title, a.album_id from album a 
join song s on a.album_id = s.album_id 
group by album_title, a.album_id 
order by count(s.song_id) 
limit 1;