CREATE TABLE schemes (
    scheme_id INT PRIMARY KEY,
    scheme_name VARCHAR(100),
    scheme_type VARCHAR(50),
    start_date DATE,
    status VARCHAR(20)
);

CREATE TABLE employers (
    employer_id INT PRIMARY KEY,
    employer_name VARCHAR(100),
    contact_person VARCHAR(100),
    contact_email VARCHAR(100),
    contact_phone VARCHAR(20)
);

CREATE TABLE members (
    member_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    id_number VARCHAR(20),
    date_of_birth DATE,
    phone VARCHAR(20),
    email VARCHAR(100),
    employer_id INT,
    scheme_id INT,
    date_joined DATE,
    status VARCHAR(20),
    FOREIGN KEY (employer_id) REFERENCES employers(employer_id),
    FOREIGN KEY (scheme_id) REFERENCES schemes(scheme_id)
);

CREATE TABLE contributions (
    contribution_id INT PRIMARY KEY,
    member_id INT,
    contribution_month DATE,
    amount DECIMAL(10,2),
    date_received DATE,
    FOREIGN KEY (member_id) REFERENCES members(member_id)
);

CREATE TABLE transfers (
    transfer_id INT PRIMARY KEY,
    member_id INT,
    from_scheme INT,
    to_scheme INT,
    transfer_status VARCHAR(20),
    date_requested DATE,
    date_completed DATE,
    FOREIGN KEY (member_id) REFERENCES members(member_id)
);