use pruebas_feli;

select * from imdb_top_1000;

# Number of movies per genre

/* This script performs a query on the "imdb_top_1000" table, 
calculating the count of movies for each genre. 
It groups the movies by genre, counts the occurrences of each genre,
and then displays the genres along with the corresponding count, 
sorted in descending order of movie counts.
*/

SELECT Genre, COUNT(*) AS Number_of_Movies
FROM imdb_top_1000
GROUP BY Genre
ORDER BY Number_of_Movies DESC;


# Average rating per director

/*
This script computing the average IMDb rating for each director. 
It groups the movies/TV shows by director, 
calculates the average IMDb rating for each director, 
and displays the directors along with their corresponding average ratings, 
sorted in descending order of the average rating.
*/

SELECT Director, AVG(IMDB_Rating) AS Average_Rating
FROM imdb_top_1000
GROUP BY Director
ORDER BY Average_Rating DESC;

# Movies released per year and their count

/*
This script determining the count of movies released in each year. 
It groups the movies by the year of release, 
counts the occurrences of movies for each year, 
and then displays the years alongside the respective movie counts, 
sorted in ascending order of release year.
*/

SELECT Released_Year, COUNT(*) AS Movies_Count
FROM imdb_top_1000
GROUP BY Released_Year
ORDER BY Released_Year;

# Movies with the highest number of votes

/*
This script retrieves the titles of movies/TV shows along with their respective number of votes. 
It sorts the data by the number of votes 
in descending order and presents the top 10 movies/TV shows with the highest number of votes.
*/

SELECT Series_Title, No_of_Votes
FROM imdb_top_1000
ORDER BY No_of_Votes DESC
LIMIT 10; 

# Genres with the highest average Meta_score

/*
This script groups the movies/TV shows by genre, 
computes the average Meta_score for each genre, 
and displays the genres along with their corresponding 
average Meta_score, sorted in descending order of the average Meta_score.
*/

SELECT Genre, AVG(Meta_score) AS Average_Meta_score
FROM imdb_top_1000
GROUP BY Genre
ORDER BY Average_Meta_score DESC;

# Movies with the highest gross income (ordered by Gross)

/*
This script retrieves the titles of movies/TV shows along with their respective gross income
filtering out any records where the Gross value is NULL. 
It then arranges the data by gross income in descending order 
and displays the top 10 movies/TV shows with the highest gross income.
*/

SELECT Series_Title, Gross
FROM imdb_top_1000
WHERE Gross IS NOT NULL
ORDER BY Gross DESC
LIMIT 10; 

# Average duration of movies per certificate

/*
This script computes the average duration of movies for each certificate category. 
It groups the movies by certificate, 
calculates the average runtime for each certificate category rounded to two decimal places, 
and then presents the certificates along with their corresponding average durations, 
sorted in ascending order of the average duration.
*/

SELECT Certificate, ROUND(AVG(Runtime), 2) AS Average_Duration
FROM imdb_top_1000
GROUP BY Certificate
ORDER BY Average_Duration;










