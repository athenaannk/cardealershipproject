CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    customer_address VARCHAR(200),
    city VARCHAR(100),
    region VARCHAR(50),
    postal_code INTEGER

)
select * from customer

CREATE TABLE car(
    car_id SERIAL PRIMARY KEY,
    serial_number VARCHAR(50),
    make VARCHAR(50),
    model VARCHAR(50),
    color VARCHAR(50),
    car_year INTEGER,
    for_sale BOOLEAN

)
select * from car

CREATE TABLE service_ticket(
    service_ticket_id SERIAL PRIMARY KEY,
    car_id INTEGER NOT NULL,
    FOREIGN KEY (car_id) REFERENCES car(car_id),
    customer_id INTEGER NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    date_received DATE,
    date_completed DATE
)

select * from service_ticket

CREATE TABLE mechanic(
    mechanic_id SERIAL PRIMARY KEY,
    mechanic_first_name VARCHAR(50),
    mechanic_last_name VARCHAR(50),
    service_ticket_id INTEGER NOT NULL,
    FOREIGN KEY (service_ticket_id) REFERENCES service_ticket(service_ticket_id)
)

select * from mechanic

CREATE TABLE sales_person(
    salesperson_id SERIAL PRIMARY KEY,
    sales_first_name VARCHAR(50),
    sales_last_name VARCHAR(50)
)
select * from sales_person

CREATE TABLE sales_invoice(
    invoice_id SERIAL PRIMARY KEY,
    invoice_date DATE,
    car_id INTEGER NOT NULL,
    FOREIGN KEY (car_id) REFERENCES car(car_id),
    customer_id INTEGER NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    salesperson_id INTEGER NOT NULL,
    FOREIGN KEY (salesperson_id) REFERENCES sales_person(salesperson_id)
)

select * from sales_invoice