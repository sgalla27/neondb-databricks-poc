-- Insert policies
INSERT INTO policy (holder_name, policy_type, premium, start_date, is_active) VALUES
('Alice Johnson', 'AUTO', 500.00, '2024-01-01', true),
('Bob Smith', 'HOME', 1200.00, '2024-02-15', true),
('Charlie Lee', 'LIFE', 800.00, '2024-03-10', false),
('Diana Ross', 'AUTO', 450.00, '2024-04-05', true),
('Ethan Hunt', 'HOME', 1500.00, '2024-05-20', true),
('Fiona Green', 'LIFE', 950.00, '2024-06-18', false),
('George White', 'AUTO', 600.00, '2024-07-22', true),
('Hannah Brown', 'HOME', 1100.00, '2024-08-30', true),
('Ian Black', 'LIFE', 700.00, '2024-09-12', true),
('Julia Adams', 'AUTO', 480.00, '2024-10-01', false);

-- Insert claims (mixed case statuses)
INSERT INTO claims (policy_id, claim_date, amount, status) VALUES
(1, '2024-02-01', 200.00, 'OPEN'),
(2, '2024-03-05', 5000.00, 'Closed'),
(3, '2024-04-10', 15000.00, 'PENDING'),
(1, '2024-05-12', 300.00, 'open'),
(5, '2024-06-20', 700.00, 'CLOSED'),
(6, '2024-07-18', 1200.00, 'PENDING'),
(7, '2024-08-22', 450.00, 'OPEN'),
(8, '2024-09-25', 8000.00, 'Closed'),
(9, '2024-10-14', 650.00, 'open'),
(10, '2024-11-02', 400.00, 'PENDING');
