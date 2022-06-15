base de datos;

Tablas tiene Columnas

Objeto --> Tabla

Atributos --> Columnas 



SHOW VARIABLES LIKE 'validate_password%';

Creamos dos usuarios, uno para local y otro remoto,
esto es parte de administrar base de datos



CREATE USER 'pvnnn'@'localhost' IDENTIFIED BY 'Admin1234';
GRANT ALL PRIVILEGES ON *.* TO 'pvnnn'@'localhost' WITH GRANT OPTION;


CREATE USER 'pvnnn'@'%' IDENTIFIED BY 'Admin1234';
GRANT ALL PRIVILEGES ON *.* TO 'pvnnn'@'%' WITH GRANT OPTION;

FLUSH PRIVILEGES;

Ingresa a MySQL con un nuevo usuario 

mysql -u pvnnn -p --> pvnnn es el nombre del usuario

********************************************************************

Primary Key = identificador unico, no se repite 
por lo general es numerico, auto incremental 

Foreign Key = es la pk de otra tabla 

Ingresa a MySQL con un nuevo usuario 

mysql -u pvnnn -p --> pvnnn es el nombre del usuario

--es para ver las bases de datos creadas
show databases;

--creacion de base de datos 
create database "nombre";

--para ingresar a la base de datos 
use "nombre_basedatos";

--mostrar las tablas creadas en la bases de datos 
show tables;

--crear nuestra tabla 

CREATE TABLE nombre_tabla(
nombre_columna1 tipo_dato,
nombre_columna2 tipo_dato2,
...
PRIMARY KEY (nombre_columna1)

)

CREATE TABLE clientes(
    id int,
    nombre varchar(30), //entre parentesis van la cantidad maxima de caracteres
    correo varchar(40),
    PRIMARY KEY (id)

);

CREATE table clientes(
    id int PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nombre varchar(30) NOT NULL,
    correo varchar(50)
);

--ver la estructura de la tabla
describe clientes;
describle "nombre";

--consultar la data en la tabla (* = todos los registros)
select * from clientes;
select * from 'nombre';

--insertar valores a una tabla
INSERT INTO clientes (id, nombre, correo) VALUES (1,'Francisco', 'fran@gmail.com');
-- no importa el orden en el que se ingresen,
-- solo tienen que estar relacionados 

--limpia la tabla OJO!!!!! si se ejecutan no se devuelve!!
truncate TABLE clientes;

--eliminar la tabla de raiz!! OJO!!
DROP TABLE clientes;

-- eliminar la base de datos completa!!!!!
DROP DATABASE ejemplo;

--ACTUALIZAR UN REGISTRO EN LA TABLA
--el WHERE es muy importante porque con este filtramos,
--es un numero especifico!! 
-- si no ponemos la condición reemplazamos todos los datos
SIEMPRE ESCRIBIR WHERE ANTES QUE TODO!!!!! 
--CUIDADO !! update sin where

UPDATE nombre_tabla
SET columnaMdoificar = valor_a_insertar, columnaModificar2 = valor_a_insertar2
WHERE condición 

Ej

UPDATE clientes
set nombre= 'Israel', correo= 'Israel@gmail.com'
where id = 3;

UPDATE clientes
set correo= 'Fran@gmail.com'
where id = 1;

***** LIKE comodin para buscar *****

SELECT * FROM tabla
WHERE nombres LIKE 'an'
;
-- con esto podemos buscar alguna coincidencia 

%% los porcentajes nos sirven para buscar mas especificamente coincidencias
%@gmail.com --> buscara todos los datos que terminen en @gmail.com
fran% --> buscar todas las coincidencias que empiecen por fran 

BETWEEN -- podemos buscar entre un rango 
BETWEEN 20 and 50;

ORDER BY -- con esto ordenamos la secuencia de datos
puede ser 
ASC -- de manera ascendente 
DESC -- de manera descente 

WHERE Price between 20 and 50
order by Price asc;  y viceversa con el desc

CREATE TABLE direcciones(
    id int PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nombre varchar (100) NOT NULL,
    numero Integer NOT NULL
    );

--modificar una tabla ya creada
ALTER TABLE nombre_tabla 
ADD nombre_columna tipo restriccion; 

EJ 

ALTER TABLE direcciones
ADD direccionId int NOT NULL; 

-- Eliminar columna 
ALTER TABLE direcciones
DROP column id;

******* RELACIONAR TABLAS *******

nuesta columna direcID, esa columna sera una FK 
esta haciendo referencia a la columna ID de la tabla clientes 

ALTER TABLE clientes
ADD CONSTRAINT FK_direccionId --asignar nombre a la relacion 
FOREIGN KEY (direccionId) REFERENCES direcciones (id)
;

show create table clientes; -- muestra los detalles de la tabla 


************ RELACIONES *************

crear 4 registros

insertar info en cada una de ellas

