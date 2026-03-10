SELECT 
s.scheme_name,
SUM(c.amount) AS total_scheme_contributions
FROM contributions c
JOIN members m
ON c.member_id = m.member_id
JOIN schemes s
ON m.scheme_id = s.scheme_id
GROUP BY s.scheme_name;
