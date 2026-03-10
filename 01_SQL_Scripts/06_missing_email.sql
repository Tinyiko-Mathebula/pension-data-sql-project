USE pension_portfolio;

SELECT member_id, first_name, last_name, email
FROM members
WHERE email IS NULL;