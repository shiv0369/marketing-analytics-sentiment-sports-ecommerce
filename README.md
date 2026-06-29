# Marketing Analytics and Sentiment Analysis for a Sports Ecommerce Store

## Project Overview

This project demonstrates an end-to-end marketing analytics solution for an online sports ecommerce retailer experiencing declining customer engagement and conversion rates. The objective was to analyze customer behavior, marketing performance, and product reviews to identify opportunities for improving customer experience and increasing business performance.

The project combines SQL, Python, and Power BI to transform raw transactional and customer feedback data into actionable business insights. In addition to traditional marketing analytics, sentiment analysis was performed on customer reviews to better understand customer satisfaction and product perception.

---

## Project Objectives

The primary goal of this project is to evaluate marketing performance and customer engagement using both structured and unstructured data. The analysis focuses on:

* Understanding customer engagement across different marketing channels.
* Measuring conversion performance over time.
* Analyzing customer sentiment from product reviews.
* Identifying high-performing and underperforming products.
* Providing business recommendations to improve marketing effectiveness and customer satisfaction.

---

## Technologies Used

* SQL Server
* Python
* TextBlob
* Power BI
* DAX
* Power Query
* Microsoft Excel

---

## Skills Demonstrated

* Data Cleaning and Transformation
* SQL Query Development
* Database Management
* Sentiment Analysis
* Natural Language Processing
* Data Modeling
* Power Query
* DAX
* Dashboard Development
* Marketing Analytics
* Customer Behavior Analysis
* Business Intelligence

---

## Business Problem

The sports ecommerce business experienced a decline in customer engagement and online conversion rates despite maintaining consistent website traffic. To understand the underlying causes, multiple datasets containing customer information, product interactions, marketing metrics, and customer reviews were analyzed.

The objective was to identify trends in user engagement, evaluate product performance, measure marketing effectiveness, and understand customer sentiment in order to support data-driven business decisions.

---

## Dataset Overview

The project uses a SQL Server database restored from a backup file containing multiple related datasets.

The data includes:

* Customer Information
* Product Details
* Website Engagement Metrics
* Product Interactions
* Marketing Performance
* Customer Reviews
* Conversion Data

The database follows a galaxy schema with multiple fact tables connected to shared dimension tables, allowing efficient business analysis across different subject areas.

---

## Project Workflow

### Data Collection

The original SQL Server backup file was restored and used as the primary data source for the project.

### Data Preparation

Data was cleaned and transformed using SQL by creating joins, handling missing values, formatting columns, and preparing the data for analysis.

### Sentiment Analysis

Customer review text was analyzed using Python and the TextBlob library.

The analysis generated:

* Sentiment Classification
* Sentiment Polarity Scores
* Positive Reviews
* Neutral Reviews
* Negative Reviews

The processed sentiment results were exported to Excel and integrated into Power BI for visualization.

### Data Modeling

The cleaned datasets were imported into Power BI where additional transformations were performed using Power Query.

A dedicated calendar table was created to support time intelligence and reporting.

Relationships between fact and dimension tables were established to build a scalable analytical model.

### Dashboard Development

Business metrics were calculated using DAX, including:

* Conversion Rate
* Sentiment Score
* Average Customer Rating
* Total Views
* Total Clicks
* Total Likes

Interactive dashboards were developed to provide insights into customer engagement, marketing performance, product trends, and customer sentiment.

---

## Dashboard Features

### Executive Overview

* Conversion Rate
* Customer Sentiment Score
* Average Product Rating
* Website Traffic Metrics
* Total Clicks
* Total Views
* Total Likes

### Marketing Performance

* Monthly Customer Engagement
* Conversion Trends
* Channel Performance
* Click-Through Analysis

### Customer Sentiment

* Sentiment Distribution
* Positive, Neutral, and Negative Reviews
* Product Rating Analysis
* Customer Feedback Trends

### Product Performance

* Product Conversion Analysis
* Product Popularity
* Customer Satisfaction by Product
* High and Low Performing Categories

---

## Key Insights

The analysis revealed several important business findings.

* Conversion rates declined significantly during October before recovering in December.
* January recorded the highest conversion rate, with Ski Boots contributing the strongest performance.
* Website views declined after July, although the click-through rate remained relatively stable.
* The average customer rating was 3.7, highlighting several products that require quality improvements.
* Blog content consistently generated the highest customer engagement, particularly during April and July.
* Customer sentiment analysis identified products receiving negative feedback, providing opportunities for product improvement and targeted marketing campaigns.

---

## Business Impact

This project provides valuable insights that help businesses:

* Improve customer engagement through data-driven marketing strategies.
* Identify products requiring quality improvements.
* Understand customer satisfaction using sentiment analysis.
* Monitor conversion performance across different time periods.
* Optimize marketing campaigns based on customer behavior.
* Support strategic business decisions using interactive dashboards.

---

## Future Enhancements

Future improvements for this project include:

* Integrating social media sentiment alongside customer reviews.
* Developing machine learning models to forecast conversion rates.
* Automating the ETL pipeline for real-time dashboard updates.
* Expanding predictive analytics for customer behavior and marketing performance.

---

## Conclusion

This project demonstrates the complete data analytics workflow, from database restoration and SQL data preparation to sentiment analysis, business intelligence, and interactive dashboard development.

By combining structured marketing data with unstructured customer feedback, the project delivers meaningful business insights that support marketing optimization, improve customer experience, and drive better business decisions. It showcases practical skills in SQL, Python, sentiment analysis, Power BI, and business intelligence, making it an excellent portfolio project for Data Analyst, Business Intelligence Analyst, and Marketing Analyst roles.
