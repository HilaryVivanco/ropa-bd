create database dbROPA;
USE dbROPA;

CREATE TABLE category (
    id int auto_increment NOT NULL COMMENT 'is the id of the categories',
    name varchar(50)  NOT NULL COMMENT 'is the name of the category',
    description varchar(100)  NOT NULL COMMENT 'is the description of the category',
    CONSTRAINT category_pk PRIMARY KEY (id)
) COMMENT 'This table will store relevant information of the categories';

INSERT INTO category (name, description)
VALUES ("pantalones", "esta categoria se enfoca en solo los productos que son pantalones"),
("polos", "esta categoria se enfoca en solo los productos que son polos"),
("chompas", "esta categoria se enfoca en solo los productos que son chompas"),
("short", "esta categoria se enfoca en solo los productos que son short"),
("ropa interior", "esta categoria se enfoca en solo los productos que son ropa interior");

select * from category;

-- Table: customers
CREATE TABLE customers (
    id int auto_increment NOT NULL COMMENT 'is the clients id',
    dni varchar(8)  NOT NULL COMMENT 'es el dni  de los clientes',
    name varchar(100)  NOT NULL COMMENT 'is the name of the clients',
    address varchar(300)  NOT NULL COMMENT 'is the direction of the clients',
    phone varchar(20)  NOT NULL COMMENT 'It is the clients phone number',
    CONSTRAINT customers_pk PRIMARY KEY (id)
) COMMENT 'This table stores customer information';

INSERT INTO customers (dni, name, address , phone )
VALUES ("75080913", "rosa" , "Calle santa rosa N° 300 San Vicente de cañete, lima Peru", "953214562"),
("75084913", "maria" , "Calle santa cruz N° 120 imperial de cañete, lima Peru", "951414562"),
("75280913", "rosa" , "Calle santa rosalia N° 190 San Vicente de cañete, lima Peru", "953214562"),
("95080913", "rosa" , "Calle santa rosa N° 200 San Vicente de cañete, lima Peru", "959914562"),
("15080913", "rosa" , "Calle santa rosa N° 100 San Vicente de cañete, lima Peru", "991214562");

select * from customers;

-- Table: products
CREATE TABLE products (
    id int auto_increment NOT NULL COMMENT 'is the id of the products',
    name varchar(20)  NOT NULL COMMENT 'is the name of the products',
    price varchar(300)  NOT NULL COMMENT 'is the current price of the products',
    stocks varchar(100)  NOT NULL COMMENT 'is the state of the product',
    CONSTRAINT products_pk PRIMARY KEY (id)
) COMMENT 'This table will store the relevant information of the products';


INSERT INTO products (name,price, stocks)
VALUES ("POLO MANGAS", "20" , "Si"),
("POLO corto", "30" , "NO"),
("Pantalon rasgado", "80" , "NO"),
("Polo oversize", "30" , "Si"),
("casaca polar", "120" , "Si");

select * from products;
-- Table: sales
CREATE TABLE sales (
    id int auto_increment NOT NULL COMMENT 'is the sales id',
    date date  NOT NULL COMMENT 'is the sales date',
    customers varchar(100)  NOT NULL COMMENT 'is the sales customer',
    product_detail varchar(300)  NOT NULL COMMENT 'that is the detail of the product sold',
    final_amount int  NOT NULL COMMENT 'is the final amount of the sale',
    CONSTRAINT sales_pk PRIMARY KEY (id)
) COMMENT 'This table will store relevant sales information.';

INSERT INTO sales (date, customers, product_detail, final_amount) VALUES 
('2023-07-01', 'Juan Pérez', 'Camiseta roja, talla M', 250),
('2023-07-02', 'María López', 'Pantalones vaqueros, talla 38', 800),
('2023-07-03', 'Carlos García', 'Chaqueta de cuero, talla L', 3500),
('2023-07-04', 'Ana Sánchez', 'Vestido de verano, talla S', 1200),
('2023-07-05', 'Luis Martínez', 'Sudadera con capucha, talla XL', 1500);


-- Table: suppliers
CREATE TABLE suppliers (
    id int auto_increment NOT NULL COMMENT 'is the table identifier',
    ruc varchar(11)  NOT NULL COMMENT 'is the ruc number of the suppliers',
    name varchar(20)  NOT NULL COMMENT 'is the name of the suppliers',
    address varchar(100)  NOT NULL COMMENT 'is the address of the suppliers',
    web_page varchar(100)  NOT NULL COMMENT 'It is the suppliers website',
    phone varchar(9)  NOT NULL COMMENT 'It is the suppliers phone number',
    CONSTRAINT suppliers_pk PRIMARY KEY (id)
) COMMENT 'This table contains information about the suppliers';


INSERT INTO suppliers (ruc, name, address, web_page, phone) VALUES 
('20123456789', 'Textiles S.A.', 'Av. Principal 123, Lima', 'www.textiles.com', '987654321'),
('20234567890', 'Ropa y Más', 'Calle Secundaria 456, Cusco', 'www.ropaymas.com', '987654322'),
('20345678901', 'Moda Actual', 'Jr. Comercio 789, Arequipa', 'www.modaactual.com', '987654323'),
('20456789012', 'Estilo Único', 'Av. Independencia 101, Trujillo', 'www.estilounico.com', '987654324'),
('20567890123', 'Confecciones Mod', 'Calle Libertad 202, Piura', 'www.confeccionesmodernas.com', '987654325');

-- foreign keys
-- Reference: customers_suppliers (table: customers)
ALTER TABLE customers ADD CONSTRAINT customers_suppliers FOREIGN KEY customers_suppliers (suppliers_id)
    REFERENCES suppliers (id);

-- Reference: products_category (table: products)
ALTER TABLE products ADD CONSTRAINT products_category FOREIGN KEY products_category (category_id)
    REFERENCES category (id);

-- Reference: products_suppliers (table: products)
ALTER TABLE products ADD CONSTRAINT products_suppliers FOREIGN KEY products_suppliers (suppliers_id)
    REFERENCES suppliers (id);

-- Reference: sales_suppliers (table: sales)
ALTER TABLE sales ADD CONSTRAINT sales_suppliers FOREIGN KEY sales_suppliers (suppliers_id)
    REFERENCES suppliers (id);

-- End of file.

