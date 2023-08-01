CREATE TABLE invoices (
    id BIGINT PRIMARY KEY,
    number_invoice VARCHAR(255),
    description VARCHAR(500),
    create_at TIMESTAMP,
    state VARCHAR(20)
);

CREATE TABLE invoice_items (
    id BIGINT PRIMARY KEY,
    invoice_id BIGINT,
    product_id BIGINT,
    quantity INT,
    price DECIMAL(10, 2),
    FOREIGN KEY (invoice_id) REFERENCES invoices(id)
);


INSERT INTO invoices (id, number_invoice, description, create_at, state)
VALUES(1, '0001', 'articulos de oficina', NOW(),'CREATED');

INSERT INTO invoice_items (id, invoice_id, product_id, quantity, price ) VALUES(1, 1, 1 , 1, 178.89);
INSERT INTO invoice_items (id, invoice_id, product_id, quantity, price)  VALUES(2, 1, 2 , 2, 12.5);
INSERT INTO invoice_items (id, invoice_id, product_id, quantity, price)  VALUES(3, 1, 3 , 1, 40.06);