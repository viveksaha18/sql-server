/* Write your T-SQL query statement below */

/*
Table1: Visits
Table2: Transactions
return customer_id count 
*/
SELECT v.customer_id, COUNT(*) as count_no_trans
FROM 
Visits v
LEFT JOIN
Transactions t
ON t.visit_id = v.visit_id
where t.visit_id IS NULL
GROUP BY v.customer_id 