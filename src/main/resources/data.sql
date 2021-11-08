INSERT INTO user_role (name) VALUES
('CLIENT'),
('ADMIN');

INSERT INTO product_material (name) VALUES
('WOOD'),
('EPOXY'),
('WOOD_EPOXY');

INSERT INTO user (id, name, password, role_name) VALUES
(DEFAULT, 'First Admin', 'password', 'ADMIN');

INSERT INTO address (id, zip_code, country, region, city, address) VALUES
(DEFAULT, '220000', 'Belarus', 'Minskiy', 'Minsk', 'Nemiga st. 130');

INSERT INTO product (id, name, care, filling, image_url, price, delivery_days, material_name) VALUES
(DEFAULT, 'First Product', 'Do not wash', 'Flowers', 'https://i.imgur.com/Ep79QKy.jpg', 100, 3, 'WOOD'),
(DEFAULT, 'Second Product', 'Do something', 'Moss', 'https://i.imgur.com/ZYLOXfq.jpg', 200, 2, 'EPOXY'),
(DEFAULT, 'Third Product', 'You know it', 'Wood', 'https://i.imgur.com/Haj3DYJ.jpg', 300, 1, 'WOOD_EPOXY');
