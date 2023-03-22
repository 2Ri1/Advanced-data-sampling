INSERT INTO music_genre(genre_title) values
    ('панк'),
    ('рок'),
    ('ню метал'),
    ('поп'),
    ('хэви-метал'),
    ('рэп');
    
INSERT INTO singer(singer_name) values
    ('Король и Шут'),
    ('Skillet'),
    ('Queen'),
    ('Linkin Park'),
    ('Lady Gaga'),
    ('Rihanna'),
    ('Ария'),
    ('Eminem');
    
INSERT INTO singer_genre(singer_id, music_genre_id) values
    (1,1),
    (2,2),
    (3,2),
    (4,2),
    (4,3),
    (5,4),
    (6,4),
    (7,5),
    (8,6);

INSERT INTO album(album_title, album_year) values
    ('Акустический альбом', '10.12.1998'),
    ('Awake', '21.03.2009'),
    ('Victorious: The Aftermath', '21.03.2020'),
    ('The Works', '6.05.1984'),
    ('Greatest Hits', '15.05.1981'),
    ('Meteora', '04.07.2003'),
    ('Hybrid Theory', '09.05.2000'),
    ('The Fame Monster', '20.08.2009'),
    ('The Marshall Mathers LP2', '21.09.2013'),
    ('Talk That Talk', '01.01.2011'),
    ('2000 и одна ночь', '13.08.1999'),
    ('Беспечный ангел', '04.03.2004'),
    ('Kamikaze', '15.02.2018'),
    ('Recovery', '19.11.2010'); 
    
INSERT INTO song(album_id, song_title, song_length) values
    (1, 'Прыгну со скалы', 192),
    (1, 'Кукла колдуна', 3.23),
    (2, 'Hero', 186),
    (2, 'Monster', 175),
    (3, 'Anchor', 256),
    (4, 'I want to break free', 223),
    (5, 'Bohemian Rhapsody', 355),
    (6, 'Numb', 187),
    (7, 'In the End', 216),
    (8, 'Bad Romance', 294),
    (8, 'Paparazzi', 208),
    (9, 'The Monster', 250),
    (10, 'We Found Love', 215),
    (11, 'Возьми моё сердце', 261),
    (12, 'Беспечный ангел', 238),
    (13, 'Venom', 269),
    (14, 'Love The Way You Lie', 263);  
    
INSERT INTO singer_album(singer_id, album_id) values
   (1,1),
   (2,2),
   (2,3),
   (3,4),
   (3,5),
   (4,6),
   (4,7),
   (5,8),
   (6,9),
   (6,10),
   (7,11),
   (7,12),
   (8,13),
   (8,14);

INSERT INTO Compilation(compilation_title, compilation_year) values
   ('Eminem & Rihanna ', '16.10.2015'),
   ('Best of 00', '14.07.2011'),
   ('Rock', '15.12.2019'),
   ('Русские хиты', '18.11.2018'),
   ('Легендарная музыка', '21.08.2020'),
   ('Pop', '16.05.2014'),
   ('Metal', '20.01.2014'),
   ('Monster inside', '21.09.2018');
   
INSERT INTO Song_compilation(compilation_id, song_id) values
   (1,12),
   (1,17),
   (2,3),
   (2,5),
   (2,8),
   (2,9),
   (2,10),
   (2,11),
   (3,3),
   (3,4),
   (3,5),
   (3,6),
   (3,7),
   (4,1),
   (4,2),
   (4,14),
   (5,6),
   (5,7),
   (5,15),
   (6,10),
   (6,11),
   (6,12),
   (7,8),
   (7,9),
   (7,14),
   (7,15),
   (8,4),
   (8,16);