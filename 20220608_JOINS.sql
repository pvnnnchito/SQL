-- INNER JOIN 

select c.customerNumber, o.orderNumber ,c.customerName -- seleccionamos las columnas 
from customers c, orders o -- seleccionamos las tablas 
where c.customerNumber = o.customerNumber -- relacionamos las tablas
and c.customerNumber = 496 -- buscamos con el numero de cliente 496 / filtro
order by c.customerNumber DESC; -- ordenando en forma descendiente

SELECT *
FROM customers c -- TABLA A 
INNER JOIN orders o -- TABLA B 
ON c.customerNumber = o.customerNumber; -- se va unir por medio de estas dos columnas
