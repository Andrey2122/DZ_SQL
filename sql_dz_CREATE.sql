CREATE TABLE IF NOT EXISTS Genre (
	id SERIAL PRIMARY KEY,
	name VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS squad (
	id SERIAL PRIMARY KEY,
	name VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS squad_genre (
	genre_id INTEGER REFERENCES genre(id),
	squad_id INTEGER REFERENCES squad(id),
	CONSTRAINT pk_genre_band PRIMARY KEY (genre_id, squad_id)
);

CREATE TABLE IF NOT EXISTS album (
	id SERIAL PRIMARY KEY,
	name VARCHAR(50) unique NOT NULL,
	year_of INTEGER check(year_of>1900)
);

CREATE TABLE IF NOT EXISTS squad_album (
	album_id INTEGER REFERENCES album(id),
	squad_id INTEGER REFERENCES squad(id),
	CONSTRAINT pk_squad_album PRIMARY KEY (album_id, squad_id)
);

CREATE TABLE IF NOT EXISTS songs (
	id SERIAL PRIMARY KEY,
	name VARCHAR(50) NOT NULL,
	duration INTEGER,
	album_id INTEGER REFERENCES album(id)
);

CREATE TABLE IF NOT EXISTS Collection (
	id SERIAL PRIMARY KEY,
	name VARCHAR(40) unique NOT NULL,
	year_of INTEGER check(year_of>1900)
);

CREATE TABLE IF NOT EXISTS SongCollection (
	Song_id INTEGER REFERENCES Songs(id),
	Collection_id INTEGER REFERENCES Collection(id),
	CONSTRAINT pk_SongCollection PRIMARY KEY (Song_id, Collection_id)
);