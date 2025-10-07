CREATE TABLE customers(
    id SERIAL PRIMARY KEY,
    customer_name VARCHAR(50)
);

CREATE TABLE contacts(
    id SERIAL PRIMARY KEY,
    contact_name VARCHAR(50),
    phone VARCHAR(50),
    email VARCHAR(50),
    customer_id INT,
    CONSTRAINT fk_customers_info
    FOREIGN KEY (customer_id)
    references customers(id)
    ON DELETE SET NULL
    ON UPDATE CASCADE
);

INSERT INTO customers(customer_name)
VALUES ('BlueBirdInc'), ('Dolphin LLC');

insert into contacts(contact_name, phone, email, customer_id)
VALUES
    ('John Doe', '(408)-111-1234', 'john.doe@bluebird.dev', 1),
    ('Jane Doe', '(408)-111-1235', 'jane.doe@bluebird.dev', 1),
    ('David Wright', '(408)-222-1234', 'david.wright@dolphin.dev', 2);

DELETE FROM customers WHERE id = 1;