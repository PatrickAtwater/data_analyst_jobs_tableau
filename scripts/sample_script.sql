/*SELECT count(*) from data_analyst_jobs;*/

--1
SELECT count(*) FROM data_analyst_jobs;
--Ans: 1793

--2
SELECT * FROM data_analyst_jobs
LIMIT 10;
--Ans: ExxonMobil

--3
SELECT count(*) FROM data_analyst_jobs
WHERE location = 'TN';
--Ans: 21 postings in TN
SELECT count(*) FROM data_analyst_jobs
WHERE location = 'TN'
OR location = 'KY';
--Ans: 27 postings in TN or KY

--4
SELECT count(*) FROM data_analyst_jobs
WHERE location = 'TN'
AND star_rating > 4;
--ans: 3 postings in TN above 4 stars

--5
SELECT count(*) FROM data_analyst_jobs
WHERE review_count BETWEEN 500 AND 1000;
--ans: 151 jobs have review_count btw 500 and 1000

--6
SELECT ROUND(AVG(star_rating), 2) AS avg_rating, 
location AS state
FROM data_analyst_jobs
GROUP BY location
ORDER by avg_rating DESC;
--Ans: Nebraska has highest rated Job 

--7
SELECT COUNT(DISTINCT(title)) FROM data_analyst_jobs;
--881 unique titles

--8
SELECT COUNT(DISTINCT(title)) FROM data_analyst_jobs
WHERE location = 'CA';
--230 unique job titles in CA

--9
SELECT title, AVG(star_rating)
FROM data_analyst_jobs
GROUP BY location
WHERE review_count > 5000;




