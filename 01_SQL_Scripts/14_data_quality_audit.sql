SELECT 
member_id,
first_name,
last_name,
email,
phone
FROM members
WHERE email IS NULL
OR phone IS NULL;
