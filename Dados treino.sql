CREATE TABLE funcionarios (
ID INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
data_contratacao DATE,
nome VARCHAR (100),
idade INT,
cargo VARCHAR (50),
salario DEC (10,2),
ID_departamento INT,
FOREIGN KEY (ID_departamento) REFERENCES departamentos (ID)
# a função dec é utilizada para valores monetários
);

INSERT INTO funcionarios (data_contratacao, nome, idade, cargo, salario, ID_departamento)
VALUES
('2023-01-05', "Rubens Alcantara", 31, "Auxiliar de vendas", 1800, 1),
('2023-01-10', "Glaysiele Alcantara", 27, "Vendedora", 2100, 1),
('2023-10-02', "Bruna Alcantara", 25, "Auxiliar de vendas", 1800, 1),
('2023-12-10', "Matheus Galvao", 30, "Vendedor", 2100, 1),
('2023-12-10', "Bruno Henrique", 28, "Vendedor", 1900, 2),
('2023-12-10', "Driele Alcantara", 28, "Auxiliar de vendas", 1500, 2),
('2024-01-10', "Leonardo Silva", 30, "Auxiliar de vendas", 1500, 3),
('2024-01-10', "Caroline Vargas", 27, "Vendedora", 1700, 3)
;

SELECT * FROM funcionarios;

-------------------------------------------------------------------------------------------------------------------------------------
CREATE TABLE produtos (
ID INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
nome_produto VARCHAR (100),
preco DEC (10,2),
ID_departamento INT,
FOREIGN KEY (ID_departamento) REFERENCES departamentos(ID)
);

INSERT INTO produtos 
VALUES
(1, "Smartv ST 32 poelgadas", 1500, 1),
(2, "Smartv ST 40 polegadas", 1800, 1),
(3, "Smartv ST 50 polegadas", 2400, 1),
(4, "Smartv ST 60 polegadas", 3000, 1),
(5, "Smartphone ZWE 4GB RAM 32GB memória", 1800, 1),
(6, "Smartphone ZWE 8GB RAM 64GB memória", 2500, 1),
(7, "Tablet ZZW 4GB RAM 32GB memória", 500, 1),
(8, "Tablet ZZW 8GB RAM 64GB memória", 900, 1),
(9, "Geladeira ELX 1 porta", 1500, 2),
(10, "Geladeira ELX 2 portas", 2000, 2),
(11, "Máquina de lavar ELX 6KG", 1800, 2),
(12, "Máquina de lavar ELX 8KG", 2100, 2),
(13, "Máquina de lavar ELX 10KG", 2500, 2),
(14, "Fogão BME 4 bocas", 900, 2),
(15, "Fogão BME 5 bocas", 1300, 2),
(16, "Cooktop BME 4 bocas", 600, 2),
(17, "Cooktop BME 5 bocas", 900, 2),
(18, "Guarda roupas solteiro 3 portas", 1000, 3),
(19, "Guarda roupas solteiro 4 portas", 1200, 3),
 (20, "Guarda roupas casal 5 portas", 1300, 3),
 (21, "Guarda roupas casal 6 portas", 1600, 3),
 (22, "Mesa Topbest 4 cadeiras", 1200, 3),
 (23, "Mesa Topbest 6 cadeiras", 1800, 3);
 
 SELECT * FROM produtos;
 
-----------------------------------------------------------------------------------------------------------------------------------
CREATE TABLE departamentos (
ID INT PRIMARY KEY NOT NULL,
departamento varchar(100)
);

INSERT INTO departamentos
VALUES
(1, "Eletrônicos"),
(2, "Eletrodomésticos"),
(3, "Móveis");

SELECT * FROM departamentos;

-----------------------------------------------------------------------------------------------------------------------------------
CREATE TABLE vendas (
ID INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
Data_venda DATE,
ID_vendedor INT,
ID_produto INT,
ID_departamento INT,
Valor DEC (10,2),
Quantidade INT,
FOREIGN KEY (ID_vendedor) REFERENCES funcionarios (ID),
FOREIGN KEY (ID_produto) REFERENCES produtos (ID),
FOREIGN KEY (ID_departamento) REFERENCES departamentos (ID)
);

INSERT INTO vendas
VALUES
(1, '2023-06-10',1, 7, 1, 500, 2),
(2, '2023-06-12',1, 3, 1, 2400, 1),
(3, '2023-07-19',1, 2, 1, 1800, 1),
(4, '2023-07-24',1, 8, 1, 900, 1),
(5, '2023-11-20',1, 4, 1, 3000, 1),
(6, '2023-06-08',2, 3, 1, 2400, 1),
(7, '2023-06-10',2, 1, 1, 1500, 2),
(8, '2023-08-13',2, 4, 1, 3000, 2),
(9, '2023-11-22',2, 2, 1, 1800, 1),
(10, '2023-10-18',2, 8, 1, 900, 2),
(11, '2023-11-03', 3, 5, 1, 1800, 1),
 (12, '2023-11-06', 3, 5, 1, 1800, 1),
 (13, '2023-11-18', 3, 1, 1, 1500, 1),
 (14, '2023-11-28', 3, 5, 1, 1800, 1),
 (15, '2023-12-10', 3, 2, 1, 1800, 1),
 (16, '2023-11-03', 4, 6, 1, 2500, 1),
 (17, '2023-12-20', 4, 6, 1, 2500, 1),
 (18, '2023-12-27', 4, 6, 1, 2500, 1),
 (19, '2024-01-17', 4, 3, 1, 2400, 1),
 (20, '2023-12-27', 4, 8, 1, 900, 1),
 (21, '2023-12-27', 5, 10, 2, 2000, 1),
 (22, '2023-12-29', 5, 13, 2, 2500, 1),
 (23, '2024-01-09', 5, 15, 2, 1300, 1),
 (24, '2024-01-29', 5, 16, 2, 600, 1),
 (25, '2024-02-03', 5, 12, 2, 2100, 1),
 (26, '2023-12-26', 6, 9, 2, 1500, 1),
 (27, '2024-01-19', 6, 11, 2, 1800, 1),
 (28, '2024-01-29', 6, 10, 2, 2000, 1),
 (29, '2024-02-02', 6, 16, 2, 600, 1),
 (30, '2024-02-15', 6, 17, 2, 900, 1),
 (31, '2024-01-15', 7, 18, 1, 1000, 1),
 (32, '2024-01-17', 7, 22, 1, 1200, 1),
 (33, '2024-02-05', 7, 19, 1, 1200, 1),
 (34, '2024-02-10', 7, 19, 1, 1600, 1),
 (35, '2024-02-20', 7, 23, 1, 1800, 1),
 (36, '2024-01-14', 8, 20, 1, 1300, 1),
 (37, '2024-01-14', 8, 23, 1, 1800, 1),
 (38, '2024-02-04', 8, 19, 1, 1200, 1),
 (39, '2024-02-14', 8, 21, 1, 1600, 1),
 (40, '2024-02-24', 8, 23, 1, 1800, 1)
 ;
 
 SELECT * FROM vendas;
 
 
