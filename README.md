# Pewlett-Hackard-Analysis
employee database analysis

## Overview of Project

### Background
Bobby, an employee at Pewlett-Hackard, requested an analysis of the company's growing retirement-ready population with the help of SQL scripts in PostGressql using PGAdmin4 to deliver to his manager, who wants to understand how the growing number of retirement-ready employees (the 'silver tsunami') will affect their business. The deliverables for this project included a count of retiring employees based on title, and a list of employees who are now eligible for mentorship programs. 

### Purpose
As an introduction to SQL, the purpose of this project was to utilize queries in PGAdmin4 with PostGressql to create and analyze an employee database. Since the raw data included multiple csvs that housed employee and department data, the analysis required table JOINs and multiple csv import/exports in PgAdmin4. 


## Results
Provide a bulleted list with four major points from the two analysis deliverables. Use images as support where needed.

* **Result 1: Retirement_Titles**
  - The first major point from the analysis is the collection of all the employees who were born between 1952 and 1955 into a single table. This gives us a sense of the magnitude of the retiring community at Pewlett-Hackard. 
<img width="391" alt="Screen Shot 2021-08-06 at 12 04 37 PM" src="https://user-images.githubusercontent.com/85946042/128547082-de3586f5-12f4-41cf-a6d6-ccb6831501bc.png">

* **Result 2: Unique_Titles**
  - The second major point from the analysis is the collection of all the distinct employees, which removes all duplicate employees from the retirement titles table and keeps the most current title that each employee had at P-H. Here we get a better grasp on the size of the retiring employees population (90,398 employees). 
<img width="285" alt="Screen Shot 2021-08-06 at 12 05 27 PM" src="https://user-images.githubusercontent.com/85946042/128547091-40d5262d-7276-41c7-a141-e3ebab18dc49.png">

* **Result 3: Retiring_Titles**
  - The third major point from the analysis is the collection of the distinct titles from the retiring table. This shows us which titles have the highest population retiring, for example, 29,414 senior engineers are retirement age. This is important information because it will help the company prepare for which roles will need to be filled with the highest priority. 
<img width="166" alt="Screen Shot 2021-08-06 at 12 05 54 PM" src="https://user-images.githubusercontent.com/85946042/128547099-e72674d9-30a3-4f65-9860-b380e94ef72a.png">

* **Result 4: Mentorship_Eligibility**
  - The final major point from the analysis is the collection of the employees born in 1965, who are now eligible to be in the mentorship program. This is an important dataset because with a major population retiring, new mentors will have to step up to help newer, younger employees as they are promoted. This is important to maintaining company values and culture. 
<img width="488" alt="Screen Shot 2021-08-06 at 12 06 27 PM" src="https://user-images.githubusercontent.com/85946042/128547107-617757e2-f63d-426d-8d63-5127c5a67f3f.png">


## Summary
90,398 roles will have to be filled as the "silver tsunami" begins to make an impact. This was calculated by counting all of the unique employee numbers in the unique_titles table. Additionally, this was the same as the summation of the counts in the retiring_titles table. 

There are only 1,549 eligible mentors in the mentorship_eligibility table (found by counting the number of distinct employee numbers who were born in 1965 and currently work at the company.) 1,549 eligible mentors is not enough to mentor the next generation of Pewlett Hackard employees because approximately 90,398 roles will have to be filled based on the number of retirement aged employees expected to retire soon. If mentorship eligibility table expanded to include mentors born from 1956 to 1965, then maybe there would be enough mentors to prepare the next generation of employees. 

Based on the data summary, I have provided two additional queries that may help the company prepare for the upcoming "silver tsunami."

* Additional Query 1: Retiring Employee Count by Department Name
After adding an additional query to check for employee count by department name, now we can see that the department with the most expected retirements is Development (23,525 employees.) As a check, I also made sure that the sum of retiring counts by department also added to 90,398 like the other queries. 
<img width="502" alt="Screen Shot 2021-08-06 at 3 53 21 PM" src="https://user-images.githubusercontent.com/85946042/128569973-246b04f2-843d-4ec0-b53b-a2de7f352fe4.png">
<img width="227" alt="Screen Shot 2021-08-06 at 3 53 27 PM" src="https://user-images.githubusercontent.com/85946042/128569979-803bc787-e96f-4328-8219-619d40e00854.png">

* Additional Query 2: Expanding mentorship eligibility qualifications to current employees born between 1956 and 1965. 
After updating the query to include employees born between 1956 and 1965 to mentor employees, the count of mentors increases to 259,194 mentors. This size mentorship program would be enough to prepare for the 90,398 positions that are going to open with the upcoming expected retirements. 
<img width="479" alt="Screen Shot 2021-08-06 at 3 27 11 PM" src="https://user-images.githubusercontent.com/85946042/128567582-f80a0aff-a04d-4e2f-b6f2-b4717176f0e5.png">
<img width="90" alt="Screen Shot 2021-08-06 at 3 27 19 PM" src="https://user-images.githubusercontent.com/85946042/128567593-4bd48146-934a-4968-9b70-deccb64880fc.png">

