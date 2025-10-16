-- Step 1: Create normalized tables for controlled vocabularies
CREATE TABLE roles (
    id SERIAL PRIMARY KEY,
    name VARCHAR(30) UNIQUE NOT NULL
);
-- *** Defines all possible roles (e.g., Partner, Associate).
-- *** 'UNIQUE' prevents duplicate role names.

CREATE TABLE practice_areas (
    id SERIAL PRIMARY KEY,
    name VARCHAR(30) UNIQUE NOT NULL
);
-- *** Defines all allowed practice areas (e.g., Litigation, Tax).
-- *** This ensures consistency across the firm's data.

-- *** New table for assignment roles
CREATE TABLE assignment_roles (
    assign_role_id SERIAL PRIMARY KEY,
    name VARCHAR(30) UNIQUE NOT NULL
);

-- Step 2: Create the main attorneys table with Foreign Keys
CREATE TABLE attorneys (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    role_id INT NOT NULL REFERENCES roles(id),     
    practice_area_id INT NOT NULL REFERENCES practice_areas(id),
    is_active BOOLEAN NOT NULL DEFAULT TRUE,
    -- *** Added a DEFAULT for convenience.
    
    hire_date DATE
);

-- ----------------------------------------------------
-- 1. CLIENTS TABLE (Syntax Fixed)
-- ----------------------------------------------------
CREATE TABLE clients (
	id SERIAL PRIMARY KEY,
	name VARCHAR(50) NOT NULL,
	billing_terms VARCHAR(500)
);

-- ----------------------------------------------------
-- 2. MATTERS TABLE (Syntax & Integrity Fixed)
-- ----------------------------------------------------
CREATE TABLE matters (
	id SERIAL PRIMARY KEY,
	client_id INT NOT NULL REFERENCES clients(id),
	title VARCHAR(200) NOT NULL,
	practice_id INT NOT NULL REFERENCES practice_areas(id), 
	status VARCHAR(10) NOT NULL 
	    CHECK (status IN ('open', 'on-hold', 'closed')),
	budget_hours DECIMAL,
	start_date DATE NOT NULL
);

-- ----------------------------------------------------
-- 3. ASSIGNMENTS TABLE (Foreign Key and Design Improved)
-- ----------------------------------------------------
CREATE TABLE assignments (
	id SERIAL PRIMARY KEY,
	matter_id INT NOT NULL REFERENCES matters(id),
	attorney_id INT NOT NULL REFERENCES attorneys(id), 
	role_id INT NOT NULL REFERENCES assignment_roles(id), 
	estimated_hours DECIMAL,
	assigned_on DATE NOT NULL,
	
);

CREATE TABLE time_entries (
	id SERIAL PRIMARY KEY,
	attorney_id INT NOT NULL REFERENCES attorneys(id),
	matter_id INT NOT NULL REFERENCES matters(id),
	
	date DATE NOT NULL,
	
	hours NUMERIC(4, 2) NOT NULL 
	    CHECK (hours > 0 AND hours <= 24),
    -- IMPROVEMENT: Specific precision and ensures hours are positive and realistic.
    
	status VARCHAR(10) NOT NULL
		CHECK (status IN ('draft', 'pending', 'approved')),
    
	notes VARCHAR(1000)
);