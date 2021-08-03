## Data Analyst Jobs Analysis

The dataset for this project was derived from the `Indeed Data Scientist/Analyst/Engineer` [dataset](https://www.kaggle.com/elroyggj/indeed-dataset-data-scientistanalystengineer) on kaggle.com  

### **Description:** The Data Analyst Job Dataset was explored using PostgreSQL and then was put into an interactive Dashboard using Tableau.
<br />

### [Click here to access interactive Tableau Dashboard ](https://public.tableau.com/views/Data_Analytics_Jobs/Dashboard1?:language=en-US&:display_count=n&:origin=viz_share_link)
![image](https://user-images.githubusercontent.com/83980785/128092039-430db36b-2003-4624-a0cc-565428a793ab.png
)
<br />
<br />
### **Exploratory Data Analysis (EDA)** of the data_analyst_jobs dataset using PostgreSQL queries and answered the following questions/tasks:

### **Screen shot of PostgreSQL script**
![image](https://user-images.githubusercontent.com/83980785/128092621-2e7a4bf7-ff6b-4a2c-a8ac-726948c8dc1a.png)

### **Data Questions Explored**
1.	How many postings are in Tennessee? How many are there in either Tennessee or Kentucky?

2.	How many postings in Tennessee have a star rating above 4?

3.	How many postings in the dataset have a review count between 500 and 1000?

4.	Show the average star rating for companies in each state. The output should show the state as `state` and the average rating for the state as `avg_rating`. Which state shows the highest average rating?


5.	How many unique job titles are there for California companies?

6.	Find the name of each company and its average star rating for all companies that have more than 5000 reviews across all locations. How many companies are there with more that 5000 reviews across all locations?

7.	Add the code to order the previous query from highest to lowest average star rating. Which company with more than 5000 reviews across all locations in the dataset has the highest star rating? What is that rating?

8.	Find all the job titles that contain the word ‘Analyst’. How many different job titles are there? 

9.	How many different job titles do not contain either the word ‘Analyst’ or the word ‘Analytics’? What word do these positions have in common?

10. You want to understand which jobs requiring SQL are hard to fill. Find the number of jobs by industry (domain) that require SQL and have been posted longer than 3 weeks. 
 - Disregard any postings where the domain is NULL. 
 - Order your results so that the domain with the greatest number of `hard to fill` jobs is at the top. 
  - Which three industries are in the top 4 on this list? How many jobs have been listed for more than 3 weeks for each of the top 4?
