
# Project Background
**Company Overview:** We are a pioneering online learning platform, operational since 2019, dedicated to providing high-quality, accessible education to data science professionals and enthusiasts. Our business model is focused on both free and subscription-based courses that offer quizzes, practice exams, and certificates of completion that enhance a learner's professional profile.

**Insights and Recommendations are Provided on the Following Key Areas:**

- **Engagement and Retention Strategies:**
- **Subscription Models and Revenue Streams:**
- **Course Popularity and User Preferences:**
- **Exam Participation and Certification Outcomes:**

SQL queries for data inspection and cleanup can be found here: [SQL Cleanup Queries Link].

Targeted SQL queries for specific business questions can be found here: [Business Queries Link].

An interactive Tableau dashboard to explore these trends is available here: [Tableau Dashboard Link].



# Data Structure & Initial Checks

**Database Composition:** Our main database consists of four tables: Users, Courses, Subscriptions, and Activity Logs, housing a combined total of X records. Each table plays a critical role:

- **Users:** Stores user demographic and login information.
- **Courses:** Contains details about course offerings including course id, title, and category.
- **Subscriptions:** Tracks user subscriptions, including type (monthly, quarterly, annual), and status.
- **Activity Logs:** Logs user activities such as course views, quiz participation, and exam completions.



# Executive Summary

### Overview of Findings

This analysis reveals significant insights into user engagement patterns, course preferences, and the effectiveness of our subscription models. Key takeaways for stakeholders, particularly for the marketing and strategic planning teams, include:

- Identification of high-demand courses that maximize engagement.
- Insights into subscription renewal drivers and drop-off points.
- Effectiveness of certification pathways in retaining paid subscribers.



# Insights Deep Dive
### Engagement and Retention Strategies:

- **Peak Engagement Times:** Identification of times when users are most active provides opportunities for targeted marketing campaigns.
- **Retention by Subscription Type:** Analysis of how different subscription models influence user retention over time.
- **Onboarding Efficiency:** Evaluation of the onboarding process and its effectiveness in converting free users to paid subscribers.
- **Influence of Certification on Retention:** Impact of offering certificates on user engagement and subscription renewal.

[Visualization of Engagement Trends]

### Subscription Models and Revenue Streams:

- **Subscription Conversion Rates:** Tracking conversion from free to paid subscriptions and identifying influential factors.
- **Revenue Impact by Course Type:** Analysis of which types of courses are driving subscription renewals.
- **Price Sensitivity:** How pricing adjustments affect subscription rates across different user demographics.
- **Subscription Churn Rates:** Identifying when and why users cancel their subscriptions.

[Visualization of Subscription Data]

### Course Popularity and User Preferences:

- **Most Popular Courses:** Identification of courses with the highest enrollment and completion rates.
- **User Feedback and Course Ratings:** Analysis of user reviews and ratings to gauge content quality and relevance.
- **Trends in Course Demand:** Tracking changes in course popularity over time to guide content development.
- **Impact of Course Length on Completion Rates:** Correlation between course length and user completion rates.

[Visualization of Course Popularity Metrics]

### Exam Participation and Certification Outcomes:

- **Exam Participation Rates:** Analysis of how many and which users are taking course exams.
- **Success Rates by Exam Type:** Comparing pass rates between practice exams and official certification exams.
- **Career Track Completion Rates:** Metrics on users completing career tracks and obtaining final certifications.
- **Certification Impact on User Profile Enhancement:** Effectiveness of certificates in enhancing user CVs and career opportunities.

[Visualization of Exam and Certification Data]



# Recommendations:

Based on the insights and findings above, we recommend the following to the curriculum development and marketing teams:

- Enhance support and resources for high-demand courses to boost completion rates.
- Introduce flexible subscription plans tailored to user engagement levels and preferences.
- Develop targeted marketing campaigns around the most engaging courses and certification paths.
- Review and adjust pricing strategies based on user feedback and churn rates.


# Assumptions and Caveats:

Several assumptions were necessary for this analysis:

- Missing demographic data was assumed to be representative of our largest user base.
- Historical engagement trends were used to impute missing activity data for certain months.
- Anomalies in activity logs were removed to maintain data integrity and relevance.
