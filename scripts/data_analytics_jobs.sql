/*SELECT count(*) from data_analyst_jobs;*/

--1
SELECT count(*) 
FROM data_analyst_jobs
WHERE location = 'TN'
	OR location = 'KY';
--Ans: 27 postings in TN or KY

--2
SELECT COUNT(*) 
FROM data_analyst_jobs
WHERE location = 'TN'
	AND star_rating > 4;
--ans: 3 postings in TN above 4 stars

--3
SELECT COUNT(*) 
FROM data_analyst_jobs
WHERE review_count BETWEEN 500 AND 1000;
--ans: 151 jobs have review_count btw 500 and 1000
--Note: BETWEEN is inclusive

--4
SELECT ROUND(AVG(star_rating), 2) AS avg_rating, 
		location AS state
FROM data_analyst_jobs
WHERE star_rating IS NOT NULL
	AND location IS NOT NULL
GROUP BY location
ORDER by avg_rating DESC;
--Ans: Nebraska has highest rated Job 

--5
SELECT COUNT(DISTINCT(title)) 
FROM data_analyst_jobs
WHERE location = 'CA';
--230 unique job titles in CA

--6
SELECT company, 
		ROUND(AVG(star_rating), 2) AS avg_rating, 
		SUM(review_count) AS number_of_reviews
FROM data_analyst_jobs
GROUP BY company
HAVING SUM(review_count)>5000
ORDER BY AVG(star_rating) DESC;

--ANS: 41 companies

--7
SELECT DISTINCT(company), 
		AVG(star_rating) AS avg_rating, 
		SUM(review_count) AS number_of_reviews
FROM data_analyst_jobs
WHERE review_count>5000
GROUP BY company
ORDER BY avg_rating DESC;
--Ans: General Motors with 4.2 avg rating

--8
SELECT DISTINCT(title)
FROM Data_Analyst_jobs
WHERE title ILIKE '%analyst%';

--Ans: 774 distinct job titles containing analyst

--9
SELECT DISTINCT(title)
FROM Data_Analyst_jobs
WHERE title NOT ILIKE '%analyst%'
AND title NOT ILIKE '%analytics%';

--ans: 4 distinct titles NOT containing analyst or analytics
--Ans: They all mention Tableau in their title

--10: 
SELECT domain AS Industry, 
		COUNT(*) AS Num_hard_to_fill_jobs
FROM Data_analyst_jobs
WHERE skill ILIKE '%SQL%'
	AND days_since_posting > 21
	AND domain IS NOT NULL 
GROUP BY domain
ORDER by Num_hard_to_fill_jobs DESC

/*Ans: top 4 industries with hard to fill jobs
"Internet and Software"	62
"Banks and Financial Services"	61
"Consulting and Business Services"	57
"Health Care"	52
*/


