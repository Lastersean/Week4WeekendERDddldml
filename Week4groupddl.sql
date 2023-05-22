CREATE TABLE car(
    car_id SERIAL PRIMARY KEY,
    model VARCHAR(150),
    make VARCHAR(50),
    car_year VARCHAR,
    car_type VARCHAR

)
CREATE TABLE staff(
    staff_id SERIAL PRIMARY KEY,
    full_name VARCHAR(150),
    position VARCHAR(100)
)
CREATE TABLE bank(
    bank_id SERIAL PRIMARY KEY,
    car_id INTEGER,
    customer_id INTEGER,
    FOREIGN KEY (car_id) REFERENCES car(car_id)
    
    )
    -- come back and define customer_id
CREATE TABLE invoice(
    invoice_id SERIAL PRIMARY KEY,
    customer_id INTEGER,
    amount INTEGER,
    invoice_number INTEGER,
    staff_id INTEGER,
    car_id INTEGER,
    FOREIGN KEY (staff_id) REFERENCES staff(staff_id),
    FOREIGN KEY (car_id) REFERENCES car(car_id)
    
    )
     -- come back and define customer_id 
CREATE TABLE my_service(
    service_id SERIAL PRIMARY KEY,
    invoice_id INTEGER,
    service_date DATE,
    service_type VARCHAR(100),
    staff_id INTEGER,
    car_id INTEGER,
    FOREIGN KEY (invoice_id) REFERENCES invoice(invoice_id),
    FOREIGN KEY (staff_id) REFERENCES staff(staff_id),
    FOREIGN KEY (car_id) REFERENCES car(car_id)
)
CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY,
    full_name VARCHAR(150),
    customer_address VARCHAR(150),
    email VARCHAR(150),
    invoice_id INTEGER,
    car_id INTEGER,
    FOREIGN KEY (invoice_id) REFERENCES invoice(invoice_id),
    FOREIGN KEY (car_id) REFERENCES car(car_id)
)

ALTER TABLE bank
ADD FOREIGN KEY (customer_id) REFERENCES customer(customer_id);

ALTER TABLE invoice
ADD FOREIGN KEY (customer_id) REFERENCES customer(customer_id)


SELECT *
FROM customer