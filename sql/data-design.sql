-- The statement below sets the collation of the database to utf8
ALTER DATABASE mbattee CHARACTER SET utf8 COLLATE utf8_unicode_ci;

-- These statements will drop the following tables if they exist.
DROP TABLE IF EXISTS photo;
DROP TABLE IF EXISTS profile;

-- These statements will create the table "profile";
CREATE TABLE profile (
	-- The following creates an attribute for the primary key.
	-- All attributes are required as indicated by NOT NULL.
	profileId BINARY(16) NOT NULL,
	profileUsername VARCHAR(32) NOT NULL,
	profilePassword VARCHAR(128) NOT NULL,
	profileEmail VARCHAR(128) NOT NULL,
	UNIQUE (profileId),
	UNIQUE (profileEmail),
	-- This primary key.
	PRIMARY KEY (profileId)
);

-- These statements will create the table "photo";
CREATE TABLE photo (
	-- The following creates an attribute for the primary key.
	-- All attributes are required as indicated by NOT NULL.
	photoId BINARY(16) NOT NULL,
	-- This is the foreign key.
	photoProfileId BINARY (16) NOT NULL,
	photoContent VARCHAR(3600) NOT NULL,
	photoDate DATETIME(6) NOT NULL,
	photoTime TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	-- This primary key.
	PRIMARY KEY (photoId),
	FOREIGN KEY	(photoProfileId) REFERENCES profile(profileId)
);