-- para ejecutar un script debo estar en la ruta, fuera en mysql
-- debo agregar al inicio del script, use 'nombre_basedato'
-- Multiples insercciones en una sola linea
INSERT INTO cursos (nombre,descripcion) VALUES 
('Alfa','Aplicados'), 
('Beta','Inteligentes'),
('Gamma','Astutos');

INSERT INTO registros (codigo_registro, rut) VALUES 
('ZP202201','1230921-5'), 
('AP202201', '1242321-3'), 
('TL202203', '1232131-7');

INSERT INTO direcciones (nombre,numero, ciudad) VALUES 
('Prat', '123', 'Arica'), 
('Bulnes','444','Punta Arenas'), 
('Arana','765','Concepcion');

INSERT INTO alumnos (nombre, apellido, edad, curso_id, direccion_id, registro_id) VALUES 
('Zoe','Palma','3','1','3','1'),
('Ayun','Palma','3','1','3','2'),
('Tom','Loren','5','3','1','3');


buscar todos los paises de america
regiones de chile
ciudades de chile


CREATE TABLE ciudades(
    id primary key not null AUTO_INCREMENT,
    nombre_ciudad varchar(50),

)

Arica
Iquique
Antofagasta
Copiapo
La Serena
Valparaiso
Santiago
Rancagua
Talca
Concepcion
Temuco
Valdivia
Puerto Montt
Coyhaique
Punta Arenas