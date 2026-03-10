SELECT 
m.member_id,
m.first_name,
m.last_name,
s.scheme_name,
COALESCE(SUM(c.amount),0) AS total_contributions,
CASE 
WHEN SUM(c.amount) IS NULL THEN 'No Contributions'
ELSE 'Active Contributor'
END AS contribution_status
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
