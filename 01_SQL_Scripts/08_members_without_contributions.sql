SELECT m.member_id, m.first_name,
m.last_name
FROM members m
LEFT JOIN contributions c
ON m.member_id = c.member_id
WHERE c.member_id IS NULL;
