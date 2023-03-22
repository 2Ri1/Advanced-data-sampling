INSERT INTO Music_genre(genre_title)  
VALUES('панк');

INSERT INTO Music_genre(genre_title)  
VALUES('рок');

INSERT INTO Music_genre(genre_title)  
VALUES('ню метал');

INSERT INTO Music_genre(genre_title)  
VALUES('поп');

INSERT INTO Music_genre(genre_title)  
VALUES('хэви-метал');

INSERT INTO Music_genre(genre_title)  
VALUES('рэп');



INSERT INTO singer(singer_name)  
VALUES('Король и Шут'); 

INSERT INTO singer(singer_name)  
VALUES('Skillet'); 

INSERT INTO singer(singer_name)  
VALUES('Queen'); 

INSERT INTO singer(singer_name)  
VALUES('Linkin Park'); 

INSERT INTO singer(singer_name)  
VALUES('Lady Gaga'); 

INSERT INTO singer(singer_name)  
VALUES('Rihanna'); 

INSERT INTO singer(singer_name)  
VALUES('Ария'); 

INSERT INTO singer(singer_name)  
VALUES('Eminem'); 


INSERT INTO Singer_genre(singer_id, music_genre_id)
VALUES(1, 1);

INSERT INTO Singer_genre(singer_id, music_genre_id)
VALUES(2, 2);

INSERT INTO Singer_genre(singer_id, music_genre_id)
VALUES(3, 2);

INSERT INTO Singer_genre(singer_id, music_genre_id)
VALUES(4, 2);

INSERT INTO Singer_genre(singer_id, music_genre_id)
VALUES(4, 3);

INSERT INTO Singer_genre(singer_id, music_genre_id)
VALUES(5, 4);

INSERT INTO Singer_genre(singer_id, music_genre_id)
VALUES(6, 4);

INSERT INTO Singer_genre(singer_id, music_genre_id)
VALUES(7, 5);

INSERT INTO Singer_genre(singer_id, music_genre_id)
VALUES(8, 6);


-- Король и Шут

INSERT INTO album(album_title, album_year)  
VALUES('Акустический альбом', '10.12.1998');

INSERT INTO song(album_id, song_title, song_length)  
VALUES(1, 'Прыгну со скалы', 3.12);

INSERT INTO song(album_id, song_title, song_length)  
VALUES(1, 'Кукла колдуна', 3.23);

-- Skillet

INSERT INTO album(album_title, album_year)  
VALUES('Awake', '21.03.2009');

INSERT INTO song(album_id, song_title, song_length)  
VALUES(2, 'Hero', 3.06);

INSERT INTO song(album_id, song_title, song_length)  
VALUES(2, 'Monster', 2.57);

INSERT INTO album(album_title, album_year)  
VALUES('Victorious: The Aftermath', '21.03.2020');

INSERT INTO song(album_id, song_title, song_length)  
VALUES(14, 'Anchor', 4.16);

-- Queen

INSERT INTO album(album_title, album_year)  
VALUES('The Works', '6.05.1984');

INSERT INTO song(album_id, song_title, song_length)  
VALUES(3, 'I want to break free', 3.43);

INSERT INTO album(album_title, album_year)  
VALUES('Greatest Hits', '15.05.1981');

INSERT INTO song(album_id, song_title, song_length)  
VALUES(4, 'Bohemian Rhapsody', 5.55);

-- Linkin Park

INSERT INTO album(album_title, album_year)  
VALUES('Meteora', '04.07.2003');

INSERT INTO song(album_id, song_title, song_length)  
VALUES(5, 'Numb', 3.07);

INSERT INTO album(album_title, album_year)  
VALUES('Hybrid Theory', '09.05.2000');

INSERT INTO song(album_id, song_title, song_length)  
VALUES(6, 'In the End', 3.36);

-- Lady Gaga

INSERT INTO album(album_title, album_year)  
VALUES('The Fame Monster', '20.08.2009');

INSERT INTO song(album_id, song_title, song_length)  
VALUES(7, 'Bad Romance', 4.54);

INSERT INTO song(album_id, song_title, song_length)  
VALUES(7, 'Paparazzi', 3.28);

-- Rihanna

INSERT INTO album(album_title, album_year)  
VALUES('The Marshall Mathers LP2', '21.09.2013');

INSERT INTO song(album_id, song_title, song_length)  
VALUES(8, 'The Monster', 4.10);

INSERT INTO album(album_title, album_year)  
VALUES('Talk That Talk', '01.01.2011');

INSERT INTO song(album_id, song_title, song_length)  
VALUES(9, 'We Found Love', 3.35);

-- Ария

INSERT INTO album(album_title, album_year)  
VALUES('2000 и одна ночь', '13.08.1999');

INSERT INTO song(album_id, song_title, song_length)  
VALUES(10, 'Возьми моё сердце', 4.11);

INSERT INTO album(album_title, album_year)  
VALUES('Беспечный ангел', '04.03.2004');

INSERT INTO song(album_id, song_title, song_length)  
VALUES(11, 'Беспечный ангел', 3.58);

-- Eminem

INSERT INTO album(album_title, album_year)  
VALUES('Kamikaze', '15.02.2018');

INSERT INTO song(album_id, song_title, song_length)  
VALUES(12, 'Venom', 4.29);

INSERT INTO album(album_title, album_year)  
VALUES('Recovery', '19.11.2010');

INSERT INTO song(album_id, song_title, song_length)  
VALUES(13, 'Love The Way You Lie', 4.23);


INSERT INTO Singer_album(singer_id, album_id)
VALUES(1, 1);

INSERT INTO Singer_album(singer_id, album_id)
VALUES(2, 2);

INSERT INTO Singer_album(singer_id, album_id)
VALUES(3, 3);

INSERT INTO Singer_album(singer_id, album_id)
VALUES(3, 4);

INSERT INTO Singer_album(singer_id, album_id)
VALUES(4, 5);

INSERT INTO Singer_album(singer_id, album_id)
VALUES(4, 6);

INSERT INTO Singer_album(singer_id, album_id)
VALUES(5, 7);

INSERT INTO Singer_album(singer_id, album_id)
VALUES(6, 8);

INSERT INTO Singer_album(singer_id, album_id)
VALUES(6, 9);

INSERT INTO Singer_album(singer_id, album_id)
VALUES(7, 10);

INSERT INTO Singer_album(singer_id, album_id)
VALUES(7, 11);

INSERT INTO Singer_album(singer_id, album_id)
VALUES(8, 12);

INSERT INTO Singer_album(singer_id, album_id)
VALUES(8, 13);

INSERT INTO Compilation(compilation_title, compilation_year)
VALUES('Eminem & Rihanna ', '16.10.2015');

INSERT INTO Compilation(compilation_title, compilation_year)
VALUES('Best of 00', '14.07.2011');

INSERT INTO Compilation(compilation_title, compilation_year)
VALUES('Rock', '15.12.2019');

INSERT INTO Compilation(compilation_title, compilation_year)
VALUES('Русские хиты', '18.11.2018');

INSERT INTO Compilation(compilation_title, compilation_year)
VALUES('Легендарная музыка', '21.08.2020');

INSERT INTO Compilation(compilation_title, compilation_year)
VALUES('Pop', '16.05.2014');

INSERT INTO Compilation(compilation_title, compilation_year)
VALUES('Metal', '20.01.2014');

INSERT INTO Compilation(compilation_title, compilation_year)
VALUES('Monster inside', '21.09.2018');



INSERT INTO Song_compilation(compilation_id, song_id)
VALUES(1, 11 );

INSERT INTO Song_compilation(compilation_id, song_id)
VALUES(1, 16);

INSERT INTO Song_compilation(compilation_id, song_id)
VALUES(2, 3);

INSERT INTO Song_compilation(compilation_id, song_id)
VALUES(2, 4);

INSERT INTO Song_compilation(compilation_id, song_id)
VALUES(2, 7);

INSERT INTO Song_compilation(compilation_id, song_id)
VALUES(2, 8);

INSERT INTO Song_compilation(compilation_id, song_id)
VALUES(2, 9);

INSERT INTO Song_compilation(compilation_id, song_id)
VALUES(2, 10);

INSERT INTO Song_compilation(compilation_id, song_id)
VALUES(3, 3);

INSERT INTO Song_compilation(compilation_id, song_id)
VALUES(3, 4);

INSERT INTO Song_compilation(compilation_id, song_id)
VALUES(3, 5);

INSERT INTO Song_compilation(compilation_id, song_id)
VALUES(3, 6);

INSERT INTO Song_compilation(compilation_id, song_id)
VALUES(4, 1);

INSERT INTO Song_compilation(compilation_id, song_id)
VALUES(4, 2); 

INSERT INTO Song_compilation(compilation_id, song_id)
VALUES(4, 13);

INSERT INTO Song_compilation(compilation_id, song_id)
VALUES(4, 14); 

INSERT INTO Song_compilation(compilation_id, song_id)
VALUES(5, 5); 

INSERT INTO Song_compilation(compilation_id, song_id)
VALUES(5, 6); 

INSERT INTO Song_compilation(compilation_id, song_id)
VALUES(5, 14); 

INSERT INTO Song_compilation(compilation_id, song_id)
VALUES(6, 9); 

INSERT INTO Song_compilation(compilation_id, song_id)
VALUES(6, 10); 

INSERT INTO Song_compilation(compilation_id, song_id)
VALUES(6, 11); 

INSERT INTO Song_compilation(compilation_id, song_id)
VALUES(6, 12); 

INSERT INTO Song_compilation(compilation_id, song_id)
VALUES(7, 7); 

INSERT INTO Song_compilation(compilation_id, song_id)
VALUES(7, 8);

INSERT INTO Song_compilation(compilation_id, song_id)
VALUES(7, 13); 

INSERT INTO Song_compilation(compilation_id, song_id)
VALUES(7, 14); 

INSERT INTO Song_compilation(compilation_id, song_id)
VALUES(8, 4); 

INSERT INTO Song_compilation(compilation_id, song_id)
VALUES(8, 15); 