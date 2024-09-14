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

## Build dashboard in Tableau



## Analyze the result

