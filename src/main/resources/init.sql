-- crear base de datos
CREATE DATABASE hackaton;

-- poner en uso la base de datos
USE hackaton;

-- crear la tabla equipos
CREATE TABLE equipos (
                         id INT AUTO_INCREMENT PRIMARY KEY,
                         codigo VARCHAR(100),
                         tipo VARCHAR(50),
                         marcas VARCHAR(100),
                         modelo VARCHAR(100),
                         so VARCHAR(50),
                         almacenamiento INT,
                         ram INT,
                         estado VARCHAR(50),
                         mantenimiento DATE,
                         fecha_registro DATE
);

-- mostrar la tabla
SELECT * FROM equipos;

-- agregar 10 registros nuevos
INSERT INTO equipos (codigo, tipo, marcas, modelo, so, almacenamiento, ram, estado, mantenimiento, fecha_registro)
VALUES
    ('EQ-001','Laptop','Dell','Latitude 5400','Windows 10',512,8,'Operativo','2025-01-10','2025-01-12'),
    ('EQ-002','Desktop','HP','ProDesk 600','Windows 11',1024,16,'Mantenimiento','2025-02-02','2025-02-06'),
    ('EQ-003','Laptop','Lenovo','ThinkPad X1','Windows 11',256,8,'Operativo','2025-03-15','2025-03-18'),
    ('EQ-004','Impresora','HP','LaserJet 201','Sin SO',0,0,'Operativo','2025-04-01','2025-04-02'),
    ('EQ-005','Servidor','Dell','PowerEdge T40','Linux',2048,32,'Operativo','2025-05-10','2025-05-12'),
    ('EQ-006','Router','Cisco','RV340','Sin SO',0,0,'Operativo','2025-06-01','2025-06-05'),
    ('EQ-007','Laptop','Acer','Aspire A5','Windows 10',512,8,'Dañado','2025-01-20','2025-01-21'),
    ('EQ-008','Tablet','Samsung','Galaxy Tab S7','Android',256,6,'Operativo','2025-02-19','2025-02-20'),
    ('EQ-009','Laptop','Apple','MacBook Air','macOS',512,8,'Operativo','2025-03-02','2025-03-03'),
    ('EQ-010','Desktop','Lenovo','ThinkCentre M720','Windows 10',1024,16,'Mantenimiento','2025-04-10','2025-04-12');

-- actualizar un equipo
UPDATE equipos
SET estado = 'Operativo', mantenimiento='2025-03-10'
WHERE id = 2;

-- eliminar un registro
DELETE FROM equipos
WHERE id = 7;

-- select con condición
SELECT * FROM equipos WHERE estado = 'Operativo';

-- order by
SELECT * FROM equipos ORDER BY fecha_registro DESC;

-- buscar registro por marca
SELECT * FROM equipos WHERE marcas LIKE '%Dell%';

-- contar registro
SELECT COUNT(*) AS total_equipos FROM equipos;

-- borra todo pero mantiene la tabla
TRUNCATE TABLE equipos;

-- elimina la base de datos
DROP DATABASE hackaton;

-- eliminar por codigo
DELETE FROM equipos WHERE codigo = 'EQ-010';
