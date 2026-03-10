SELECT 
m.member_id,
m.first_name,
m.last_name,
s.scheme_name,
SUM(c.amount) AS total_contributions
FROM members m
LEFT JOIN contributions c
ON m.member_id = c.member_id
JOIN schemes s
ON m.scheme_id = s.scheme_id
GROUP BY 
m.member_id,
m.first_name,
m.last_name,
s.scheme_name;
