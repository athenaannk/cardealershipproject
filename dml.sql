INSERT INTO customer(
    first_name,
    last_name,
    email,
    customer_address,
    city,
    region,
    postal_code
) VALUES(
    'Mike',
    'Iroyana',
    'bigmike@aol.com',
    '123 Bear Road',
    'Columbia',
    'MD',
    21224

), 

INSERT INTO customer(
    first_name,
    last_name,
    email,
    customer_address,
    city,
    region,
    postal_code
) VALUES(
    'Athena',
    'Kostro',
    'ak@gmail.com',
    '2454 Ridge Road',
    'Mt. Airy',
    'MD',
    20789

)
select * from customer,

INSERT INTO car(
    serial_number,
    make,
    model,
    color,
    car_year,
    for_sale

)VALUES(
    '12345',
    'Honda',
    'Civic',
    'Black',
    '2009',
    'No'
)

INSERT INTO car(
    serial_number,
    make,
    model,
    color,
    car_year,
    for_sale

)VALUES(
    '23456',
    'Jeep',
    'Wrangler',
    'Red',
    '2023',
    'Yes'
)

select * from car

INSERT INTO service_ticket(
    car_id,
    customer_id,
    date_received,
    date_completed
) VALUES(
    1,
    1,
    '2020-08-19',
    '2021-10-20'
)

INSERT INTO service_ticket(
    car_id,
    customer_id,
    date_received,
    date_completed
) VALUES(
    2,
    2,
    '2023-08-19',
    '2023-10-20'
)

select * from service_ticket

INSERT INTO mechanic(
    mechanic_first_name,
    mechanic_last_name,
    service_ticket_id
) VALUES(
    'Rex',
    'Casey',
    1

),(
    'Mariah',
    'Carey',
    2
)

select * from mechanic

INSERT INTO sales_person(
    sales_first_name,
    sales_last_name

) VALUES(
    'Alan',
    'Crane'
), (
    'Barbi',
    'Loft'
)


INSERT INTO sales_invoice(
    invoice_date,
    car_id,
    customer_id,
    salesperson_id
) VALUES(
    '20230317',
    1,
    1,
    1
) , (
    '20230314',
    2,
    2,
    2
)

select * from sales_invoice