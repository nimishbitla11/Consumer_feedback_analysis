-- create table for customer complaint's

USE consumer_filing;

CREATE TABLE consumer_complaint (
    date_received DATE,
    product_name VARCHAR(45),
    sub_product VARCHAR(45),
    issue VARCHAR(45),
    sub_issue VARCHAR(45),
    consumer_complaint_narrative VARCHAR(45),
    company_public_response VARCHAR(45),
    company VARCHAR(45),
    state_name VARCHAR(45),
    zip_code VARCHAR(45),
    tags VARCHAR(45),
    consumer_consent_provided VARCHAR(45),
    submitted_via VARCHAR(45),
    date_sent VARCHAR(45),
    company_response_to_consumer VARCHAR(45),
    timely_response VARCHAR(45),
    consumer_disputed VARCHAR(45),
    complaint_id INT PRIMARY KEY
); 