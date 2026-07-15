-- Content Distribution (T.V. Shows vs. Movies)

SELECT type AS Show_Type, Count(*) AS Total_Titles
FROM Netflix8800 
GROUP BY type
ORDER BY Total_Titles;  

--Release Year Trends / Peak Years, Max in One Year

SELECT release_year, Count(*) AS Total_Titles
FROM Netflix8800
WHERE release_year IS NOT NULL 
GROUP BY release_year 
ORDER BY Total_Titles DESC; 

--Content Ratings

SELECT rating, Count(*) AS Total_Titles
FROM Netflix8800
WHERE rating IS NOT NULL
GROUP BY rating
ORDER BY Total_Titles DESC;

--Content Growth (year by year)

SELECT SUBSTR(date_added, -4) AS year_added, COUNT(*) AS Total_Titles
FROM Netflix8800
WHERE date_added IS NOT NULL
GROUP BY year_added
ORDER BY year_added;

--Top Countries

SELECT country, Count(*) AS Total_Titles
FROM Netflix8800
WHERE country IS NOT NULL
GROUP BY country
ORDER BY Total_Titles DESC;

--Top Directors

SELECT director, Count(*) AS Total_Titles
FROM Netflix8800
WHERE director IS NOT NULL
GROUP BY director
ORDER BY Total_Titles DESC;