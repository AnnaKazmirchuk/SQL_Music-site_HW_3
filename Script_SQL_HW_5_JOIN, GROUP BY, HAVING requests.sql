--1 ���������� ������������ � ������ �����

select genre, count(artist_id) from genre 
join artistgenre on genre.id = artistgenre.genre_id 
group by genre;

--2 ���������� ������, �������� � ������� 2019-2020 �����

select album_name, album_release_date, count(tracks.id) from album
join tracks on album.id = tracks.album_id 
where album_release_date between 2019 and 2020
group by album_name, album_release_date;


--3 ������� ����������������� ������ �� ������� �������

select album_name, avg(track_duration) from tracks 
join album on tracks.album_id = album.id 
group by album_name;


--5 �������� ���������, � ������� ������������ ���������� ����������� (�������� ����)

select distinct digest_name from digest 
join digesttracks on digesttracks.digest_id = digest.id 
join tracks on digesttracks.digest_id = tracks.id 
join album on tracks.album_id = album.id 
join artistalbum on artistalbum.album_id = album.id 
join artist on artist.id = artistalbum.album_id
where artist_name = 'Muse';


--6 �������� ��������, � ������� ������������ ����������� ����� 1 �����

select album_name from artist 
join artistgenre on artist.id = artistgenre.artist_id 
join artistalbum on artist.id = artistalbum.artist_id 
join album on artistalbum.album_id = album.id 
group by album_name, artist_name
having count(genre_id)>1;


--7 ������������ ������, ������� �� ������ � ��������

select track_name from tracks 
left join digesttracks on tracks.id = digesttracks.track_id 
where digesttracks.track_id is null;


--4 ��� �����������, ������� �� ��������� ������� � 2020 ����

select artist_name from artist 
join artistalbum on artist.id = artistalbum.artist_id 
join album on album.id = artistalbum.album_id
where album_release_date != 2020


--8 �����������(-��), ����������� ����� �������� �� ����������������� ����

select artist_name from artist 
join artistalbum on artist.id = artistalbum.artist_id 
join album on album.id = artistalbum.album_id
join tracks on album.id = tracks.album_id 
where track_duration = (select min(track_duration) from tracks);


--9 �������� ��������, ���������� ���������� ���������� ������


