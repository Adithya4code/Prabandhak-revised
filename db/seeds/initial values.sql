INSERT INTO roles (name) VALUES 
('Partner'),
('Senior Associate'),
('Associate'),
('Junior Associate');

INSERT INTO assignment_roles (name) VALUES 
('Lead Counsel'),
('Supporting Counsel'),
('Researcher'),
('Paralegal');

INSERT INTO practice_areas (name) VALUES 
('Corporate Law'),  -- For mergers/acquisitions under Indian Companies Act
('Intellectual Property'),  -- Trademarks/Patents under IP Acts
('Dispute Resolution');  -- Arbitration/litigation under CPC/IBC

INSERT INTO attorneys (name, email, role_id, practice_id, is_active, hire_date) VALUES 
-- Partners (role_id=1)
('Arjun Patel', 'arjun.patel@firm.in', 1, 1, TRUE, '2023-01-15'),
('Lakshmi Rao', 'lakshmi.rao@firm.in', 1, 2, TRUE, '2022-06-20'),
('Vikram Singh', 'vikram.singh@firm.in', 1, 3, TRUE, '2021-09-10'),
-- Senior Associates (role_id=2)
('Priya Sharma', 'priya.sharma@firm.in', 2, 1, TRUE, '2024-02-01'),
('Rahul Mehta', 'rahul.mehta@firm.in', 2, 2, TRUE, '2024-01-10'),
('Sneha Gupta', 'sneha.gupta@firm.in', 2, 3, TRUE, '2023-11-05'),
-- Associates (role_id=3)
('Karan Desai', 'karan.desai@firm.in', 3, 1, TRUE, '2024-05-12'),
('Anita Bose', 'anita.bose@firm.in', 3, 2, TRUE, '2024-04-20'),
('Dev Kapoor', 'dev.kapoor@firm.in', 3, 3, TRUE, '2024-03-15'),
-- Junior Associates (role_id=4)
('Meera Iyer', 'meera.iyer@firm.in', 4, 1, TRUE, '2025-07-01'),
('Amit Jain', 'amit.jain@firm.in', 4, 2, TRUE, '2025-06-15'),
('Riya Nair', 'riya.nair@firm.in', 4, 3, TRUE, '2025-05-20');

INSERT INTO clients (name, billing_terms) VALUES 
('TechNova Pvt Ltd', 'Net 30 days; GST 18% applicable'),
('Rajesh Kumar', 'Hourly billing; advance 20%'),
('GreenEnergy Solutions', 'Fixed fee per milestone; TDS deduction');

INSERT INTO matters (client_id, title, practice_id, status, budget_hours, start_date) VALUES 
-- Client 1 (TechNova, Corporate=1)
(1, 'M&A Advisory for Startup Acquisition', 1, 'open', 150.00, '2025-08-01'),
(1, 'Compliance Audit under Companies Act', 1, 'on-hold', 80.00, '2025-07-20'),
(1, 'FDI Approval for Tech Investment', 1, 'closed', 120.00, '2025-09-15'),
(1, 'Shareholder Agreement Drafting', 1, 'open', 100.00, '2025-10-01'),
(1, 'ESOP Structuring Consultation', 1, 'closed', 60.00, '2025-07-25'),
-- Client 2 (Rajesh, IP=2)
(2, 'Trademark Registration for Brand', 2, 'open', 90.00, '2025-08-10'),
(2, 'Patent Filing for Invention', 2, 'closed', 200.00, '2025-07-16'),
(2, 'Copyright Infringement Dispute', 2, 'on-hold', 110.00, '2025-09-05'),
(2, 'IP Due Diligence Review', 2, 'open', 70.00, '2025-10-10'),
(2, 'Design Patent Application', 2, 'closed', 50.00, '2025-08-20'),
-- Client 3 (GreenEnergy, Dispute=3)
(3, 'Contract Dispute Arbitration', 3, 'open', 180.00, '2025-07-18'),
(3, 'Litigation under IBC for Insolvency', 3, 'closed', 250.00, '2025-09-20'),
(3, 'Partnership Dissolution Suit', 3, 'on-hold', 140.00, '2025-08-15'),
(3, 'Consumer Dispute Resolution', 3, 'open', 95.00, '2025-10-05'),
(3, 'Labor Law Mediation', 3, 'open', 75.00, '2025-07-30');

INSERT INTO assignments (matter_id, attorney_id, role_id, estimated_hours, assigned_on) VALUES 
-- Matter 1 (Partner 1=ID4 as Lead; others)
(1, 4, 1, 50.00, '2025-08-01'), (1, 7, 2, 40.00, '2025-08-02'), (1, 10, 3, 30.00, '2025-08-03'), (1, 11, 4, 20.00, '2025-08-04'),
-- Matter 2
(2, 4, 1, 30.00, '2025-07-20'), (2, 8, 2, 20.00, '2025-07-21'), (2, 11, 3, 15.00, '2025-07-22'),
-- Matter 3
(3, 4, 1, 40.00, '2025-09-15'), (3, 6, 2, 35.00, '2025-09-16'), (3, 9, 3, 25.00, '2025-09-17'), (3, 10, 4, 15.00, '2025-09-18'),
-- Matter 4
(4, 4, 1, 35.00, '2025-10-01'), (4, 7, 2, 25.00, '2025-10-02'), (4, 10, 3, 20.00, '2025-10-03'),
-- Matter 5
(5, 4, 1, 20.00, '2025-07-25'), (5, 8, 2, 15.00, '2025-07-26'), (5, 11, 3, 10.00, '2025-07-27'),
-- Matter 6 (Partner 2=ID5)
(6, 5, 1, 30.00, '2025-08-10'), (6, 8, 2, 25.00, '2025-08-11'), (6, 11, 3, 20.00, '2025-08-12'),
-- Matter 7
(7, 5, 1, 70.00, '2025-07-16'), (7, 7, 2, 50.00, '2025-07-17'), (7, 10, 3, 40.00, '2025-07-18'), (7, 12, 4, 30.00, '2025-07-19'),
-- Matter 8
(8, 5, 1, 40.00, '2025-09-05'), (8, 6, 2, 30.00, '2025-09-06'), (8, 9, 3, 25.00, '2025-09-07'),
-- Matter 9
(9, 5, 1, 25.00, '2025-10-10'), (9, 8, 2, 20.00, '2025-10-11'), (9, 11, 3, 15.00, '2025-10-12'),
-- Matter 10
(10, 5, 1, 20.00, '2025-08-20'), (10, 7, 2, 15.00, '2025-08-21'), (10, 10, 3, 10.00, '2025-08-22'),
-- Matter 11 (Partner 3=ID6)
(11, 6, 1, 60.00, '2025-07-18'), (11, 9, 2, 50.00, '2025-07-19'), (11, 12, 3, 40.00, '2025-07-20'),
-- Matter 12
(12, 6, 1, 80.00, '2025-09-20'), (12, 6, 2, 60.00, '2025-09-21'), (12, 9, 3, 50.00, '2025-09-22'), (12, 12, 4, 40.00, '2025-09-23'),
-- Matter 13
(13, 6, 1, 50.00, '2025-08-15'), (13, 7, 2, 40.00, '2025-08-16'), (13, 10, 3, 30.00, '2025-08-17'),
-- Matter 14
(14, 6, 1, 35.00, '2025-10-05'), (14, 8, 2, 30.00, '2025-10-06'), (14, 11, 3, 20.00, '2025-10-07'),
-- Matter 15
(15, 6, 1, 25.00, '2025-07-30'), (15, 9, 2, 20.00, '2025-07-31'), (15, 12, 3, 15.00, '2025-08-01');


INSERT INTO time_entries (attorney_id, matter_id, date, hours, status, notes) VALUES 
-- Matter 1 (non-partners: 7,10,13)
(7, 1, '2025-09-10', 6.50, 'approved', 'Reviewed acquisition docs under SEBI guidelines'),
(10, 1, '2025-09-15', 4.00, 'pending', 'Drafted due diligence checklist'),
(11, 1, '2025-10-01', 2.50, 'draft', 'Researched FDI precedents'),
-- Matter 4
(7, 4, '2025-10-05', 5.00, 'approved', 'Prepared shareholder clauses'),
(10, 4, '2025-10-08', 3.75, 'pending', 'Legal research on voting rights'),
-- Matter 6
(8, 6, '2025-08-20', 7.00, 'approved', 'Filed trademark application forms'),
(11, 6, '2025-08-25', 4.50, 'draft', 'Searched for similar marks'),
-- Matter 9
(8, 9, '2025-10-12', 6.00, 'pending', 'Compiled IP portfolio report'),
(11, 9, '2025-10-14', 3.00, 'draft', 'Noted licensing issues'),
-- Matter 11
(9, 11, '2025-08-01', 5.50, 'approved', 'Drafted arbitration clause'),
(12, 11, '2025-08-05', 4.25, 'pending', 'Reviewed contract disputes'),
-- Matter 14
(8, 14, '2025-10-07', 7.25, 'approved', 'Prepared mediation brief under CPC'),
(11, 14, '2025-10-10', 2.75, 'draft', 'Gathered witness statements'),
-- Matter 2 (light)
(8, 2, '2025-08-10', 3.00, 'approved', 'Audit compliance notes'),
-- Matter 3
(6, 3, '2025-09-25', 4.50, 'pending', 'Closed case summary'),
-- Matter 5
(11, 5, '2025-08-05', 2.00, 'draft', 'ESOP tax research'),
-- Matter 7
(7, 7, '2025-07-25', 6.75, 'approved', 'Patent draft revisions'),
(10, 7, '2025-07-28', 5.00, 'pending', 'Prior art search'),
-- Matter 8
(6, 8, '2025-09-10', 4.00, 'draft', 'Infringement analysis'),
-- Matter 10
(10, 10, '2025-09-01', 3.50, 'approved', 'Design filing prep'),
-- Matter 12
(9, 12, '2025-09-25', 7.00, 'pending', 'IBC petition draft'),
-- Matter 13
(7, 13, '2025-08-20', 5.25, 'draft', 'Dissolution filings'),
-- Matter 15
(12, 15, '2025-08-10', 2.75, 'approved', 'Labor law consult notes');