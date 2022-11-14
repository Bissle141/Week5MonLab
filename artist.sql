-- Add 3 new artists to the artist table. (It already exists.)
INSERT INTO artist (name)
VALUES 
('Florence & The Machine'),
('AC/DC');
('Black Sabbath');

-- Select 10 artists in reverse alphabetical order.
SELECT * FROM artist
WHERE artist_id <= 10
ORDER BY name DESC;

-- Select 5 artists in alphabetical order.
SELECT * FROM artist
WHERE artist_id <= 5
ORDER BY name ;

-- Select all artists that start with the word ‘Black’.
SELECT * FROM artist
WHERE name LIKE 'Black%';

-- Select all artists that contain the word ‘Black’.
SELECT * FROM artist
WHERE name LIKE '%Black%';