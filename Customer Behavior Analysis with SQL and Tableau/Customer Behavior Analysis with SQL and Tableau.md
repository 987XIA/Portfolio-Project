# Customer Behavior Analysis with SQL and Tableau



## Case study

why customer engagement is important?

more engagement leads to loyal



**Product Overview**

online learning platform

- aims to provide affordable high quality courses on topics relatable to contemporary data scientists

- Quizzes, practice exams and a course exam complement each course on the platform.

- passing an course the student can get an certificate which can be attached to their CVs



**In-House term definition**

<u>Engagement</u>: beginning one the of following activities

lecture, quiz, exam

may analyze later in different time scales

<u>Onboarding</u>: first-time engagement

starting a lecture, quiz, or exam for the first time after registration

<u>Student Type</u>: subscription-based

free-plan student

paying student: monthly, quarterly, annual



**Key** **Questions**

- How engaged are the students inside the platform, and how this metric be improved?
- How long do students stay engaged on the platform, and how can this period be extended?
- What's the difference in behavior between free and paid students?
- Which are the most popular courses on the platform?
- How many students sit for an exam?



### Key Questions 1

Planning

defining/outlining the key questions that the dashboard prepare to answer

- number of engaged student
- difference between free-plan and paying student
- Engagement changing with time
- marketing campaign effects



main goal:

increase daily engagement among student

Reasonable expectation is that the number of engaged students who visit the platform without a paid subscription is significantly higher than those of engaged paying students.

Marketing campaigns also play a significant role in the growth of the number of engaged students when

advertisements are run and subscription prices drop.

Metrics like:

Onboarded student/ engagement student

30%-50%

varies from different platform

50% good to report 

under 30% suspicious need to investigate

New platform features

surveys

Marketing campaigns

UI/UX

course suggestions

new and relevant content



- How long do students stay engaged?
- Difference between free-plan and paying student



1 week unpaid 

paying stay engaged 12m 4y



- Minutes watched by students on average?
- Difference between free-plan and paying students

**Average minutes watched = sum of minutes watched/ #students who watched**

30min typical line

Paid student different period on specific course



- What is the free-to-paid conversion rate (F2P CR) based on the minutes watched on the platform?

**F2P CR = #subscribers/ #students registered * 100**

initial hypothesis:

students who haven't watched any content are unlikely to convert to a paid membership.

On the other hand, students who did engage with the content would decide whether a paid subscription is worth it.

Presumably after completing the free preview of a course, typically between 20 to 30 minutes.



- what is the average subscription duration based on the minutes watched on the platform?

This question aims at checking whether the correlation between the number of minutes watched on the platform and the subscription duration of the paid users is linear as is logical to assume.

In the case of non-linearity, we can have two student scenarios try to consume as much content as possible for a short period or learn inconsistently and as a result, stay subscribed for a long time, but only learn slowly.



### Key Questions 2

- Most watched and enjoyed courses on the platform?

Approaches

1. Total minutes watched from a course, which course or topics is favored by student and spend time on

   hypothesis: student favors longer courses in terms of duration and courses that have been on the platform for the longest time. 

   Example: Introductory course are expected to be more popular since they are beginner friendly and their position

2. Average number of minutes allocated to a student

3. Completion rate(potentially biased)

**Average minutes watched = sum of minutes watched/ #students who watched**

if minutes watched increased, the average increase

if students who watched increased, the average will decrease

this affect on the longer courses and course that with specific topics(recent courses) as the latter course have fewer student enrolled which will lead to higher on this metrics

fraction of a course student completed on average

**MAX(Average minutes watched from a course) =(>?) Length of a course**

minimize the effect cause by multiple times students rewatching on the course lecture

uplift shorter courses

easy to digest

30/360 minutes vs 30/90 minutes

30 min unlock content



- Number of exams taken?
- Exam success rated on:
  - Practice exams
  - course exams
  - career track exams

practice and course exams expect to be close

and passing rate of career track exams suppose to be lower than other two exams



What a career track is and how a student can pass it?

a collections of 8 carefully curated courses, forming a complete program on either of three job titles: DA/BA/DS

first need to have completed 10 exams in total

as 7 course exams, 2 elective course exams, 1 final exams covering topics from all mandatory courses in a track

formulation of final exam is consist of 42 questions similar to a course exam, 60% or more is marked as a pass

upon completing a career track, student received a corresponding career track certificate proving their expertise on various topics



- Number of certificated issued from the different types?

- What fraction of the students who enrolled in a career track complete it?

  

### Sketching Dashboard

present question visually



#### overview page

first page: a bird's eye view of the engagement with the product

3 KPI(key performance indicator)

- number of engaged student on the platform
- number of minutes watched per student
- total number of certificates issued

filter: student status, date

horizontal bar chart with each bar corresponding to a course and its length, representing the size of one of these three metrics: overall minutes watched, mintues watched by person, or completion rate 

Filter: top 5 courses, bottom 5 courses

donut chart whose center shows the average rating of the platform. Its periphery would indicate the fraction of 5 star ratings, the highest A course could receive 4 star rating down to 1 star.



#### Engagement and Onboarding

two horizontal line chart

Choose period: start and end

choose month

choose year

Top: number of engaged users versus time

filter: student status

Bottom: percentage of onboarded student versus the registration date



#### Engagement by Cohort

cohort analysis table

retention curves

line chart 

Filter: 

- course type: top 5 bottom 5
- number of engaged students
- Cohort month



#### Exam and Certificates

horizontal bar chart left-half page

each bar representing the month of a given year and its length showing the number of exams attempted that month

left section of each bar would tell us the percentage of exams that have not been passed while the right section would show the opposite



conventional vertical bar chart right-half page 1st

number of certificates issued by month

Filter: course, career track

 2nd horizontal bar chart

number of people enrolled in a career track

number of people who have attempted at least one course exam from the track

who have completed a course exam

who have attempt a final exam

who passed the final exam and earned the career track certificate



#### Student Learning

split in horizontal two

Left side

minutes watched each month and minutes watched per user each month

combo chart: bar and line

filter: student status



right side

2 combo chart

conversion rate of students(minutes watched on the platform) as well as their subscription duration

Purpose: study the behavior of different groups of students based on the amount of content they've watched on the platform



## Work with Database

#### Data Collection

Via Your Platform: with privacy GDR in Eu

Via API/web scraping: boarder outside

application programming interfaces

​	predefined request, typically in json format

​	constitutes extracting information from web pages, generally more challenging to perform on a large scale

Via Conducting surveys



#### Accessing Data

Structured DB SQL

unstructured(non-SQL) DB



#### Importing Data

Direct Connection Between DB and Data Viz Software

- work with tables directly
- pull some data with SQL's help

adv

- all the data is structured
- outcome is predictable
- impurities are dealt with automatically
- the dashboard is updated automatically
- good for a large amounts of data

disadv

- paid service
- rubost approach, inflexiable



Static Connection/direct upload

xls csv json

adv

- flexible
- easy to change

disadv

- prone to wrong data formats
- sensitive to column changes
- sometimes manual updates 
- unsuitable for big projects


generate csv file from exist database table, for later input in tableau

first focusing on student engagement

which means we need student ID, engagement date including either start a video, exam or solved a quiz, and student status(whether they are paid when they are engaged)



there information are use for construct 

overview: engaged student

engagement: engaged student by time

cohort analysis:  retention curve and its period



from table student purchases get purchases info for generate the engagement csv file

purchase_id, student_id, purchase_type, date_purchased, date_refunded

consider paid student has different purchase type, the end date should has interval of m/m+2/m+11(m represent month itself), in this case use case when function inside date_add(makedate())

also we need to consider the condition that if the date_refunded is null, using date_end, otherwise using  date_refunded date as date_end

save the constructed table as purchases_info view

view 

In SQL, a view is a virtual table based on the result-set of an SQL statement.

a set of queries that store in a view file which can be query directly



using purchased_in for view to construct student day-by-day engagement table

we would like to take a look at the student engagement status including its subscription status

so we use left join to exclude student who paid but not engaged in any of the course

also, construct a column named paid using o represent free student and 1 represent paid student



```mysql
CASE
	WHEN date_start IS NULL AND date_end IS NULL THEN 0
	WHEN date_engaged BETWEEN date_start AND date_end THEN 1
	WHEN date_engaged NOT BETWEEN date_start AND date_end THEN 0
	END AS paid
```

case 1: free student with no purchase info

case 2: engagement date is between paid period which means paid student

case 3: engagement date is not in their paid period which means they are engaged when they are free student



there is a case that student is engaged in one date and considered as paying student in this period, it may has other paying period that are not engaged, but this info may also include in this table,we should take action in excluding them. We use the maximum value of paid column as paid 

export the result as student_engagement which is a csv file



shortcut: 

ctrl+D duplicate rows 

ctrl+A select ALL

ctrl+Enter execute the selected portion



## Build dashboard in Tableau
overview page:

engaged student <- unique student id

field = pill 

build some parameters:

1. choose minimum active date

2. choose the maximum active date
3. choose the student type
   1. 3a. free-plan
   2. 3b. paying
   3. 3c. both 



create parameter minimum date/maximum date

show parameter

create calculation field(like basic query)

create new parameter student type

show parameter

link the parameter to engaged student data source to a calculated field



kpi average minutes watched(student_learning)

kpi certificates issued（student_certificates)



minimum date

maximum date

student type

### 9/22 update

cohort analysis

what is a cohort?

student onboarded in the same month

10 cohorts in the analysis period jan to oct



what's the purpose of a cohort analysis?

study the way a given cohort behaves and evolves

track the level of engagement of students

excellent way of monitor the retention of customers

measure a marketing campaign's success

measure the success of a new platform feature



how do we visualize cohorts in a graph?



How do you read the cohort analysis table?

- Each **cohort** represents a group of **people onboarded in the same month**.
- Every **row** on the table represents a **different cohort**.
- The **period** represents the **difference** between a **given month** and the **onboarding month**.

How do you display the retention curves?

- Make a **selection** on the cohort table **to display** one or more **retention curves**.
- To select **cohorts not on top of each other**, hold the **Control** button on the keyboard and make the selection.
- The **percentages** on the retention curve display the **number of people** as a fraction of the **first cell** in the selected cohort.





## Analyze the result

first formulated the key questions related to the level of customer engagement on the 365 learning platform.

Next, we sketched the essential components.

Our dashboard had to include and chose the best visualizations for each problem.

After that, we opened workbench and learned to manipulate the database to extract the most relevant information.

Finally, we fed that information into Tableau to construct each visualization and combine them in a five page interactive dashboard.



purpose of this dashboard is to gain insights into customer behavior and answer strategic questions to assess the 365 customer engagement state and find potential area for improvement



#### platform of engagement

- number of engaged student
- difference between free-plan and paying student
- Engagement changing with time
- marketing campaign effects

from 1st kpi number

more than 19k student engaged in the platform

most of them engaged as free plan student only

But from January 1st to October 31st, some free plan students converted to paying ones.

So in our report, they're counted as having engaged as both free plan and then paying students.

Due to this overlap, the sum of free plan and paying engaged students is more significant than all engaged students shown on the dashboard.

**abnormal behavior**

peak occurring in the middle of August.

On August 15th, 365 opened its platform free of charge for all students for three days.

During that time, the number of engaged students has more than tripled compared to the days in the neighborhood of these three days.

This indicates the effect of free day campaigns on the platform.

High student demand and considerable audience growth.



**how switching to only free plan customers changes the trend**

We can see that the mid-August peak is even more emphasized now for paying users.

On the other hand, these three days haven't affected engagement in any way, and that is indeed expected.

Such users have already paid for the product and have no reason to engage more during the free of charge days.



**exclude the abnormal**

the general trend is that the number of engaged student  on the platform increases

The engagement has grown from 100 students daily in January to approximately 400 by October.

Following the three free of charge days in August, the gamification of the platform in September and

the marketing campaigns that followed to spread the word.

We hoped that the students would engage more and stay engaged longer.

It's wonderful to see that this is indeed the case with a more than 30% increase in the number of engaged students per day compared to the summer months.

This can be appreciated even more if we study the engagement for each month separately.

By observing the scale on the y axis, we can see the increase in numbers roughly 200 engaged students per day in June and July.

Approximately 300 students per day in August and September. And then jumping to about 400 active students in October.

 the bar chart displaying the number of engaged students by month.

We can immediately see that the last three months from the analysis are stronger in terms of the number of engaged students.

It's interesting to note the increase of active paying students as months pass.



#### Onboarding and Retention

- What is the number of onboarded students compared to the number of registered students?

the term of onboarding varies from different company, so it is hard to set a universal benchmark on a number to determine the onboarding rate as good or bad

assume in 30%-50%

in the chart we can see the rate varies between 40% - 60%, apparently that the new gamified version of platform launching affect the onboarding rate in mid-September, and increased it rate to nearly 70%/

This result confirms the initial hypothesis concerning gamification encouraging 365 newcomers to engage with the content, which as a result earns them certain perks such as coins, experience, points, gifts and beautifully illustrated collections of cards.

-  How long do students typically stay engaged on the platform?
- How does this number differ between free plan students and paying ones?

As expected, most of the free plant students remain engaged only within the month they've onboarded,

which is also very likely the month they've registered in.

If we use the mouse to select, for example, the January cohort, we can see that only about 3% of the students onboarded in January remain active, also in February.

We should note that a fraction of these students switch to paying ones.

What changes can we incorporate from a business perspective to increase the free plan students time on the platform?

A solution we could implement is to perform a monthly retargeting of the audience who has registered in the past 30 days using paid advertisements.

Hopefully this would increase the engagement of the free plan students and persuade them to try out and stay on the paid version of the platform.

paid student:

About half of the paying students are retained after the first month, and roughly 40% remain active in period two.

Then we observe a plateau where approximately 30% of the students from period zero remain engaged.

We can hypothesize that most students who drop out after the first month have purchased a monthly plan at the beginning of the period and have cancelled their subscription before the 30 days expire.

The other half who remain engaged in period one are supposedly students who've purchased a quarterly or an annual subscription or purchased a monthly subscription at the end of the previous month.

Students with annual or recurring subscriptions will most likely remain engaged in period one and later.

It's hard not to notice the darker cells under period zero next to January, March, July and September.

These are months with a higher number of newly engaged paying subscribers, which is not surprising since each of these months is related to a marketing campaign.

Winter Sale Special Spring Offer Most Wanted campaign and the Data Science Hero campaign popularizing the new gamified look on the platform.

What's very important with this cohort analysis is that it can let the marketing team know whether they've targeted the right people during these campaigns with the knowledge, background and interests that the 365 program requires.

Knowing how and where to find the right audience for your product is essential.

The marketing team has attracted loyal customers likely to remain subscribed for longer.

That way, the customers bring more value to the company by subscribing to a premium service and very importantly, can become ambassadors for your product by recommending it to friends, colleagues or

social media.

retention curves:

the January, March and July cohorts look quite similar, with 50% of the paying students staying active in period one and only a few dropping in period two.

The September cohort, however, stands out with quite a low retention rate of 35% in period one.

One reason for this might be that newcomers have decided to benefit from the lower price during the campaign and try the new gamified features for only a month.

A second hypothesis is that seasonality affects people's motivation and disposition to learn new skills. During the summer, people, especially college students, have more time to practice their hobbies, acquire new knowledge

and expand their skills.

This contrasts with September and October, when college life resumes.

Students are tasked with more responsibilities, and 365 working audience faces a new fiscal quarter, which more often than not results in more pressure and deadlines at work.

Factors like these might hinder the possibility of studying and maintaining learning streaks.

Third.

In preparing the website's new look and expanding the platform's library, the content creators of the 365 team didn't have time to create new videos for their YouTube channel.

As a result, this could have reduced the audience coming from YouTube, which is often those with a genuine interest in the field who would benefit from the platform for a more extended period.

Lastly, but not in terms of importance.

We should remember that the database we use in the course only includes users registered during 2022, while the 365 company has been welcoming students ever since 2018.

At 365, we performed the same cohort analysis using data from 2021 and back.

We found that many of the students who registered a while back had returned to the 365 platform as paying users and went on to explore the new gamified version of the platform.

Additionally, many of these students have remained active during period one, thereby increasing their retention rate of the September cohort.

We should then interpret our results as follows.

35% of the students who registered in 2022 and were first engaged as paying students in September had also engaged with the platform in October.

#### Content Consumption

- On average, how much content is consumed by students regarding minutes watched?

- How does the number differ between free plan students and paying ones?



#### F2P CR and Subscription Duration



#### Courses Engagement



#### Exams



#### Certificated



What we've learned

- defined the key questions and hypothesized their answers
- each project needs to be described in detail and scrutinized by colleagues.
- created an initial sketch that was our guiding light throughout the project
- using SQL knowledge to manipulate the database and extract valuable information
- visualized the results from our SQL analysis in Tableau
- discussing our findings and assessed the level of engagement of our students.
- brainstorm ideas on platform enhancement



## Analyze the result

