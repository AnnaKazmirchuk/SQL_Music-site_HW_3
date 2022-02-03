--1 количество исполнителей в каждом жанре

select genre, count(artist_id) from genre 
join artistgenre on genre.id = artistgenre.genre_id 
group by genre;

--2 количество треков, вошедших в альбомы 2019-2020 годов

select album_name, album_release_date, count(tracks.id) from album
join tracks on album.id = tracks.album_id 
where album_release_date between 2019 and 2020
group by album_name, album_release_date;


--3 средняя продолжительность треков по каждому альбому

select album_name, avg(track_duration) from tracks 
join album on tracks.album_id = album.id 
group by album_name;


--5 названия сборников, в которых присутствует конкретный исполнитель (выберите сами)

select distinct digest_name from digest 
join digesttracks on digesttracks.digest_id = digest.id 
join tracks on digesttracks.digest_id = tracks.id 
join album on tracks.album_id = album.id 
join artistalbum on artistalbum.album_id = album.id 
join artist on artist.id = artistalbum.album_id
where artist_name = 'Muse';


--6 название альбомов, в которых присутствуют исполнители более 1 жанра

select album_name from artist 
join artistgenre on artist.id = artistgenre.artist_id 
join artistalbum on artist.id = artistalbum.artist_id 
join album on artistalbum.album_id = album.id 
group by album_name, artist_name
having count(genre_id)>1;


--7 наименование треков, которые не входят в сборники

select track_name from tracks 
left join digesttracks on tracks.id = digesttracks.track_id 
where digesttracks.track_id is null;


--4 все исполнители, которые не выпустили альбомы в 2020 году

select artist_name from artist 
join artistalbum on artist.id = artistalbum.artist_id 
join album on album.id = artistalbum.album_id
where album_release_date != 2020


--8 исполнителя(-ей), написавшего самый короткий по продолжительности трек

select artist_name from artist 
join artistalbum on artist.id = artistalbum.artist_id 
join album on album.id = artistalbum.album_id
join tracks on album.id = tracks.album_id 
where track_duration = (select min(track_duration) from tracks);


--9 название альбомов, содержащих наименьшее количество треков


