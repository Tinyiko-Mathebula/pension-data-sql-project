INSERT INTO contributions 
(contribution_id, member_id, contribution_month, amount, date_received)
VALUES
(1, 1, '2024-01-01', 1500.00, '2024-01-05'),
(2, 1, '2024-02-01', 1500.00, '2024-02-05'),
(3, 2, '2024-01-01', 1200.00, '2024-01-06'),
(4, 3, '2024-01-01', 1000.00, '2024-01-07'),
(5, 5, '2024-01-01', 1800.00, '2024-01-08');

SELECT *
FROM contributions;
