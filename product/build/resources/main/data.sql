CREATE TABLE categories (
  id BIGINT PRIMARY KEY,
  name VARCHAR(255) NOT NULL
);
CREATE TABLE products (
  id BIGINT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  description VARCHAR(500),
  stock INT,
  price DECIMAL(10, 2),
  status VARCHAR(20),
  create_at TIMESTAMP,
  category_id BIGINT,
  FOREIGN KEY (category_id) REFERENCES categories (id)
);

INSERT INTO categories (id, name) VALUES (1, 'zapatos');
INSERT INTO categories (id, name) VALUES (2, 'libros');

INSERT INTO products (id, name, description, stock, price, status, create_at, category_id)
VALUES (1, 'air jordan', 'zapatos carisimos', 12, 500, 'CREATED', '2023-05-05', 1);

INSERT INTO products (id, name, description, stock, price, status, create_at, category_id)
VALUES (2, 'El señor de los anillos', 'la mejor saga', 500, 12, 'CREATED', '2023-05-05', 2);

INSERT INTO products (id, name, description, stock, price, status, create_at, category_id)
VALUES (3, 'DUNE', 'la mejor novela', 100, 5.50, 'CREATED', '2023-05-08', 2);