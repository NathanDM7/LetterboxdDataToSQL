-- These are some SQL queries I use when looking at my data.
use movie_info;

-- This returns the directors you have seen sorted first by number of films watched and then by average rating you gave those films
select director as Director, Count(name) as Number_Seen, Round(avg(rating), 2) as Average_Rating
from movie_ratings
group by director
order by Number_Seen DESC, Average_Rating DESC;

-- This returns the same thing, but for years instead of directors
select movie_ratings.year as Year, Count(name) as Number_Seen, Round(avg(rating), 2) as Average_Rating
from movie_ratings
group by movie_ratings.year
order by Number_Seen DESC, Average_Rating DESC;

-- This will return all directors with the deviation between your highest rated movie from them and their lowest rated movie
select director as Director, max(rating) - min(rating) as Deviation
from movie_ratings
group by director
order by Deviation DESC;
