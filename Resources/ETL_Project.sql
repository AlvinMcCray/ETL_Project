-- Create tables for raw data to be loaded into

DROP TABLE players;
CREATE TABLE players (
	player VARCHAR,
	college VARCHAR,
	born FLOAT,
	birth_city VARCHAR, 
	birth_state VARCHAR
	);

SELECT * FROM players;

DROP TABLE nba_twitter; 
CREATE TABLE nba_twitter (
	player VARCHAR, 
	twitter_favorite_count FLOAT,
	twitter_retweet_count FLOAT
	);

-- SELECT * FROM nba_twitter;

-- Joins tables
SELECT players.player, players.college, players.born, 
		players.birth_city, players.birth_state, nba_twitter.twitter_favorite_count, 
		nba_twitter.twitter_retweet_count
FROM players
JOIN nba_twitter
ON players.player = nba_twitter.player;

SELECT * FROM nba_twitter;