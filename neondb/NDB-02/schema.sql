-- Policies table
CREATE TABLE policy (
    policy_id SERIAL PRIMARY KEY,
    holder_name VARCHAR(100),
    policy_type VARCHAR(10) CHECK (policy_type IN ('AUTO', 'HOME', 'LIFE')),
    premium NUMERIC(10,2),
    start_date DATE,
    is_active BOOLEAN
);

-- Claims table
CREATE TABLE claims (
    claim_id SERIAL PRIMARY KEY,
    policy_id INT REFERENCES policy(policy_id),
    claim_date DATE,
    amount NUMERIC(10,2),
    status VARCHAR(20)
);
