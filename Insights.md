# Consumer Complaints Analysis

:exclamation: If you find this repository helpful, please consider giving it a :star:. Thanks! :exclamation:


## Insights

**1.** Find out how many complaints were sent & received by consumers on the very same day .
````sql
SELECT COUNT(*) AS total_complaints
FROM consumer_complaint
WHERE DATE(date_received) = DATE(date_sent);
````
**Results:**
Total Complaints sent, Received on the same day|
---------------------|
22696           |

**2.**  Find out how many complaints came from the state of New York only .
````sql
SELECT COUNT(*) AS total_complaints
FROM consumer_complaint
WHERE state_name = 'NY';
````

**Results:**
Total Complaints from state of New York Only|
---------------------|
3656           |

**3.** Find out how many complaints came from both New York , California
````sql
SELECT
    state_name,
    COUNT(*) AS complaint_count
FROM
    consumer_complaint
WHERE
    state_name IN ('NY', 'CA')
GROUP BY
    state_name;
````

**Results:**
State      |Total Complaints|
---------------|---------|
California (CA) |     7724|
New York (NY)  |     3656|

**4.** Find out how many rows in the column product_name have the keyword "Credit" mentioned in them .
````sql
SELECT COUNT(*) AS Total_mentions
FROM consumer_complaint
WHERE product_name LIKE '%Credit%';
````

**Results:**
Total Rows|
---------------------|
15198      | 

**5.** Find out how many rows in the column issue have the keyword "Late" mentioned in them .
````sql
SELECT COUNT(*) AS total_mention 
FROM consumer_complaint
WHERE issue LIKE '%Late%';
````

**Results:**
Total Rows|
---------------------|
255      |






