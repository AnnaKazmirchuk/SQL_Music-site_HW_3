create table if not exists album (
	id serial primary key,
	album_name text not null unique,
	album_release_date integer
);

create table if not exists artist (
	id serial primary key,
	artist_name text not null unique,
	artist_genre text not null unique
);

create table if not exists ArtistAlbum (
	id serial primary key,
	Artist_ID integer not null references artist(id),
	Album_ID integer not null references album(id)
);

create table if not exists genre (
	id serial primary key,
	genre text
);

create table if not exists ArtistGenre (
	id serial primary key,
	Artist_ID integer not null references artist(id),
	Genre_ID integer not null references genre(id)
);


create table if not exists tracks (
	id serial primary key,
	track_name text not null unique,
	track_duration integer,
	album_id integer references album(id)
);

create table if not exists digest (
	id serial primary key,
	digest_name text,
	digest_date integer
);

create table if not exists DigestTracks (
	id serial primary key,
	Track_ID integer not null references tracks(id),
	Digest_ID integer not null references digest(id)
);	

alter table album 
	alter column album_release_date set data type integer USING (id::integer);

alter table tracks 	
	alter column track_duration set data type integer USING (id::integer);

