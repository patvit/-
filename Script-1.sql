CREATE TABLE IF NOT EXISTS styles (
	style_id SERIAL PRIMARY KEY,
	name VARCHAR(60) UNIQUE
);

CREATE TABLE IF NOT EXISTS musicians (
	musician_id SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT NULL,
	style VARCHAR(60) NOT NULL
);

CREATE TABLE IF NOT EXISTS tracks (
	tracks_id SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT NULL,
	albom INTEGER NOT NULL REFERENCES alboms(alboms_id),
	duration INTEGER CHECK(duration >= 1)

CREATE TABLE IF NOT EXISTS alboms (
	alboms_id  SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT NULL,
	musician_id INTEGER NOT NULL REFERENCES Musicians(musician_id),
	year INTEGER CHECK(year > 2010 AND year < 2100)
);

CREATE TABLE IF NOT EXISTS musician_styles (
	style_id INTEGER REFERENCES styles(style_id),
	musician_id INTEGER REFERENCES Musicians(musician_id)
);

CREATE TABLE IF NOT EXISTS musicians_alboms (
	alboms_id INTEGER REFERENCES Alboms(alboms_id),
	musician_id INTEGER REFERENCES Musicians(musician_id)
);

CREATE TABLE IF NOT EXISTS musicians_alboms (
	collection_id  SERIAL PRIMARY KEY,
	tracks_id INTEGER NOT NULL REFERENCES tracks(tracks_id),
	name VARCHAR(60) NOT NULL,
	year date NOT NULL
);