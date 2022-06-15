USE generationg1;

SELECT * FROM customers c;

SELECT * FROM customers c WHERE c.customerNumber LIKE '%toy%';

SELECT c.customerNumber , c.customerName 
FROM customers c
WHERE c.customerNumber LIKE '%toy%';

SELECT c.customerNumer , c.customerName , c.city
FROM customers c
WHERE c.city = 'Madrid';

-- Estamos obteniendo todos los registros de ambas tablas

SELECT *
FROM customers c, orders o
WHERE c.customerNumber = o.customerNumber -- Estoy relacionando las dos tablas 
ORDER BY c.customerNumber DESC;

-- obtener todas las ordenes por clientes

SELECT c.customerNumber, o.orderNumber
FROM customers c, orders o
WHERE c.customerNumber = o.customerNumber
ORDER BY c.customerNumber DESC;

-- Todas las ordenes asociadas al cliente 496

SELECT c.customerNumber, o.orderNumber
FROM customers c, orders o
WHERE c.customerNumber = o.customerNumber
AND c.customerNumber = 496
ORDER BY c.customerNumber DESC;

-- Quien es ese cliente? El cliente es Kelly's Gift Shop

SELECT c.customerNumber, o.orderNumber, c.customerName
FROM customers c, orders o
WHERE c.customerNumber = o.customerNumber
AND c.customerNumber = 496
ORDER BY c.customerNumber DESC;

-- Vamos a consultar los productos -- 

SELECT * FROM products p; 

SELECT * FROM productlines pl;

-- Todos los productos que sean motorcycles, con la descripcion del producto

SELECT p.productName , pl.productLine, pl.textDescription
FROM products p, productlines pl
WHERE p.productLine = pl.productLine
AND pl.productLine = 'Motorcycles';


-- Ejercicios, habia que trabajar entre las tablas PRODUCTS y PRODUCTLINES

-- a)	El category manager de Motorcycles necesita saber cuáles son los productos más inventariados, 
-- para hacer una campaña de ventas con esos productos. Se necesita crear una query que retorne el listado de productos 
-- de la categoría “Motorcycles”, con su inventario ordenado de mayor a menor.

SELECT p.productName, p.quantityInStock, pl.productline
FROM products p, productlines pl
WHERE p.productLine = pl.productLine 
AND p.productline = 'Motorcycles'
ORDER BY p.quantityInStock DESC;

-- b)	El Gerente Comercial desea saber cuántos productos en stock se tiene de la marca “Ford” 
-- en las distintas líneas de producto, ordenado alfabéticamente por línea de producto

SELECT p.productName, pl.productLine, p.quantityInStock -- traeme las columnas 
FROM products p , productlines pl -- de las tablas 
WHERE p.productName LIKE '%Ford%' -- donde FORD aparezca en cualquier lado de la tabla productName
ORDER BY pl.productLine ASC; -- Ordenado ascendente por la columna productLine









