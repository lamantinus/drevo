INSERT INTO user_role (name) VALUES
('CLIENT'),
('ADMIN');

INSERT INTO product_type (name) VALUES
('WOOD'),
('METAL');

INSERT INTO user (id, name, password, role_name) VALUES
(DEFAULT, 'First Admin', 'password', 'ADMIN');

INSERT INTO product (id, name, price, type_name) VALUES
(DEFAULT, 'First Product', 100, 'WOOD'),
(DEFAULT, 'Second Product', 200, 'METAL');
