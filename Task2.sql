CREATE TABLE orders (
	id int,
	date timestamp,
	customer_id int,
	product_name varchar,
	amount float,
	CONSTRAINT orders_pk PRIMARY KEY (id),
	CONSTRAINT orders_fk FOREIGN KEY (customer_id) REFERENCES customers(id) ON UPDATE CASCADE
);