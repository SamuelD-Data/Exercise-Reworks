-- Use the albums_db database.

use albums_db;

-- Explore the structure of the albums table.

describe albums;

-- Write queries to find the following information.

-- The name of all albums by Pink Floyd

select name
from albums
where artist = 'pink floyd';

-- The year Sgt. Pepper's Lonely Hearts Club Band was released

select *
from albums
where name like '%lonely%';

-- The genre for the album Nevermind

select genre
from albums
where name = 'nevermind';

-- Which albums were released in the 1990s

select name
from albums
where release_date between 1990 and 1999;

-- Which albums had less than 20 million certified sales

select name
from albums
where sales < 20;

-- All the albums with a genre of "Rock". 

select name
from albums
where genre = 'rock';

