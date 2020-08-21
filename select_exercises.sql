-- Use the albums_db database.

-- accessing database
use albums_db;

-- Explore the structure of the albums table.

-- using describe to explore details of database
describe albums;

-- Write queries to find the following information.

-- The name of all albums by Pink Floyd

-- only show album name from albums table if the artist value is pink floyd
select name
from albums
where artist = 'pink floyd';

-- The year Sgt. Pepper's Lonely Hearts Club Band was released

-- only show release date from the albums table if the album name includes the word lonely
select release_date
from albums
where name like '%lonely%';

-- The genre for the album Nevermind

-- only show genre from the albums table if the name is nevermind
select genre
from albums
where name = 'nevermind';

-- Which albums were released in the 1990s

-- only select name from albums table if the release date is between 1990 and 1999 (inclusive)
select name
from albums
where release_date between 1990 and 1999;

-- Which albums had less than 20 million certified sales

-- only show name from the albums table if the sales column has a value lower than 20
select name
from albums
where sales < 20;

-- All the albums with a genre of "Rock". 

-- only show name from albums column if the genre is rock (because we're not using like, the genre cant include rock with other characters like hard rock or classic rock)
select name
from albums
where genre = 'rock';

