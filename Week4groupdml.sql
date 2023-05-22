INSERT INTO car(
    model,
    make,
    car_year,
    car_type

)
VALUES(
    'Cadillac',
    'Deville',
    '2001',
    'Sedan'
), (
    'Ford',
    'F-250',
    '2018',
    'Pickup'

);
SELECT*
FROM car;

INSERT INTO staff(
    full_name,
    position
)
VALUES(
    'Jay Getsdeals',
    'salesman'

), (
    'Greg Handy',
    'mechanic'
);
SELECT*
FROM staff;

-- INSERT INTO bank(
--     car_id,
--     customer_id
-- )
-- VALUES(
--     1,
--     1
-- );
INSERT INTO invoice(
    amount,
    invoice_number
)
VALUES(
    
    250,
    1
 
);

SELECT*
FROM invoice;

INSERT INTO my_service(
    service_date,
    service_type
)
VALUES(
    '2023-2-2',
    'oil change'
)
INSERT INTO my_service(
    service_date,
    service_type
)
VALUES(
    '2022-3-7',
    'brake change'
)
SELECT*
FROM my_service;

INSERT INTO customer(
    full_name,
    customer_address,
    email

)
VALUES(
    'Alex English',
    '451 English lane',
    'aeo@gmail.com'
),(
    'Jonny Blaze',
    '755 Hotton Alley',
    'mybikesarecooler@yahoo.com'
);
SELECT*
FROM customer

