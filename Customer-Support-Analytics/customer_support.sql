-- Customer Support Analytics Dataset Queries

-- 1. Total tickets handled
SELECT COUNT(*) AS total_tickets
FROM customer_support;

-- 2. Tickets per agent
SELECT agent,
       COUNT(*) AS total_tickets
FROM customer_support
GROUP BY agent
ORDER BY total_tickets DESC;

-- 3. Tickets per region
SELECT region,
       COUNT(*) AS total_tickets
FROM customer_support
GROUP BY region
ORDER BY total_tickets DESC;

-- 4. Most common issue type
SELECT issue_type,
       COUNT(*) AS total_tickets
FROM customer_support
GROUP BY issue_type
ORDER BY total_tickets DESC;

-- 5. Average resolution time
SELECT ROUND(AVG(resolution_time),2) AS avg_resolution_time
FROM customer_support;

-- 6. Average satisfaction score
SELECT ROUND(AVG(satisfaction),2) AS avg_satisfaction
FROM customer_support;
