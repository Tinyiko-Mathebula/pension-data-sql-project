INSERT INTO members 
(member_id, first_name, last_name, id_number, date_of_birth, phone, email, employer_id, scheme_id, date_joined, status)
VALUES
(1, 'John', 'Mabena', '9001011234081', '1990-01-01', '0811111111', 'john.mabena@email.com', 1, 1, '2021-01-01', 'Active'),
(2, 'Lerato', 'Nkosi', '9202022345082', '1992-02-02', '0822222222', 'lerato.nkosi@email.com', 2, 1, '2021-02-01', 'Active'),
(3, 'Sipho', 'Dlamini', '8803033456083', '1988-03-03', '0833333333', NULL, 3, 2, '2021-03-01', 'Active'),
(4, 'Thandi', 'Mokoena', '9504044567084', '1995-04-04', NULL, 'thandi.mokoena@email.com', 4, 2, '2021-04-01', 'Active'),
(5, 'Peter', 'Khumalo', '8705055678085', '1987-05-05', '0855555555', 'peter.khumalo@email.com', 5, 3, '2021-05-01', 'Inactive');

SELECT * FROM members;
