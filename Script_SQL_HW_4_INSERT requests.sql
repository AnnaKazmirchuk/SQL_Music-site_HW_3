insert into genre
	values (1, 'Soul');

insert into genre
	values (2, 'Pop'), (3, 'Rock'), (4, 'Rap'), (5, 'Classics');

alter table artist 	
	alter column artist_genre set data type text;

alter table artist 	
	alter column artist_name set data type text;

alter table artist 
	drop constraint artist_artist_genre_key;
alter table artist 
	drop constraint artist_artist_name_key;



insert into artist (id, artist_name)
	values (1, 'Sting'),
	(2, 'Britney Spearks'),
	(3, 'Nirvana'),
	(4, 'Eminem'),
	(5, 'Mozart'),
	(6, 'Beethoven'),
	(7, 'Muse'),
	(8, 'Spice Girls');

update artist
	set artist_genre = 'Soul'
	where artist_name = 'Sting';
update artist
	set artist_genre = 'Pop'
	where artist_name = 'Britney Spearks';
update artist
	set artist_genre = 'Pop'
	where artist_name = 'Spice Girls';
update artist
	set artist_genre = 'Rock'
	where artist_name = 'Nirvana';
update artist
	set artist_genre = 'Rap'
	where artist_name = 'Eminem';
update artist
	set artist_genre = 'Classics'
	where artist_name = 'Mozart';
update artist
	set artist_genre = 'Rock'
	where artist_name = 'Muse';
update artist
	set artist_genre = 'Classics'
	where artist_name = 'Beethoven';

insert into artistgenre 
	values (1, 1, 1), (2, 2, 2), (3, 3, 3), (4, 4, 4), (5, 5, 5), 
	(6, 6, 5), (7, 7, 3), (8, 8, 2);

insert into album 
	values (1, 'The Bridge', 2021, 1),
	(2, 'Baby one more time', 1998, 2),
	(3, 'Bleach', 1989, 3),
	(4, 'Encore', 2004, 4),
	(5, 'Album_Mozart_1', 1780, 5),
	(6, 'Album_Beth_1', 1820, 6),
	(7, 'Drones', 2015, 7),
	(8, 'Forever', 2000, 8);

insert into artistalbum
	values (1, 1, 1), (2, 2, 2), (3, 3, 3), (4, 4, 4), (5, 5, 5), 
	(6, 6, 5), (7, 7, 7), (8, 8, 8);

insert into tracks 
	values (1, 'The Bridge_Track01', 5, 1),
	(2, 'Baby one more time_Track01', 3, 2),
	(3, 'Bleach_Track01', 4, 3),
	(4, 'Encore_Track01', 3, 4),
	(5, 'Album_Mozart_1_Track01', 10, 5),
	(6, 'Album_Beth_1_Track01', 8, 6),
	(7, 'Drones_Track01', 5, 7),
	(8, 'Forever_Track01', 4, 8),
	(9, 'The Bridge_Track02', 7, 1),
	(10, 'Baby one more time_Track02', 5, 2),
	(11, 'Bleach_Track02', 2, 3),
	(12, 'Encore_Track02', 7, 4),
	(13, 'Album_Mozart_1_Track02', 9, 5),
	(14, 'Album_Beth_1_Track02', 17, 6),
	(15, 'Drones_Track02', 6, 7);

insert into digest 
	values (1, 'Greatest hits_Sting', 2021),
	(2, 'Greatest hits_Brintney', 2000),
	(3, 'Greatest hits_Nirvana', 1990),
	(4, 'Greatest hits_Em', 2010),
	(5, 'Greatest hits_Mozart', 1780),
	(6, 'Greatest hits_Beth', 1827),
	(7, 'Greatest hits_Muse', 2019),
	(8, 'Greatest hits_SpiceG', 2001);
	
insert into digesttracks 
	values (1, 1, 1), (2, 2, 2), (3, 3, 3), (4, 4, 4), (5, 5, 5), 
	(6, 6, 6), (7, 7, 7), (8, 8, 8), (9, 9, 1), (10, 10, 2), (11, 11, 3), (12, 12, 4), (13, 13, 5), 
	(14, 14, 6), (15, 15, 7);




	
