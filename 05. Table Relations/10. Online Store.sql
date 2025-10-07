CREATE TABLE item_types(
    id SERIAL PRIMARY KEY,
    item_type_name VARCHAR(20)
);

CREATE TABLE items(
    id SERIAL PRIMARY KEY,
    item_name VARCHAR(20),
    item_type_id INT,
    CONSTRAINT fk_type_item
    FOREIGN KEY (item_type_id)
    REFERENCES item_types(id)
);

CREATE TABLE cities(
    id SERIAL PRIMARY KEY,
    city_name VARCHAR(20)
);

CREATE TABLE customers(
    id SERIAL PRIMARY KEY,
    customer_name VARCHAR(20),
    birthday DATE,
    city_id INT,
    CONSTRAINT fk_city_id_con
    FOREIGN KEY (city_id)
    REFERENCES cities(id)
);

CREATE TABLE orders(
    id SERIAL PRIMARY KEY,
    customer_id INT,
    CONSTRAINT fk_customer_id_con
    FOREIGN KEY (customer_id)
    REFERENCES customers(id)
);


CREATE TABLE order_items(
    order_id INT,
    item_id INT,
    CONSTRAINT fk_order_con
    FOREIGN KEY (order_id)
    REFERENCES orders(id),
    CONSTRAINT fk_item_con
    FOREIGN KEY (item_id)
    REFERENCES items(id)
);