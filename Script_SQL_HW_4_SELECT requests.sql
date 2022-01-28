select album_name, album_release_date from album 
	where album_release_date = 2018;

select track_name, track_duration from tracks 
	order by track_duration desc
	limit 1;

select track_name from tracks 
	where track_duration >= 3.5;

select digest_name from digest 
	where digest_date between 2018 and 2020;

select artist_name from artist 
	where artist_name not like '% %';

select track_name from tracks 
	where track_name like '%мой%';

select track_name from tracks 
	where track_name like '%my%';