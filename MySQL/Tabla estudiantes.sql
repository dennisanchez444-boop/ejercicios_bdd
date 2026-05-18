-- Preparacion de la base de datos para el taller
CREATE DATABASE ejercicios_bdd;
-- Usar la base de datos de ejercicios
USE ejercicios_bdd;
-- PARTE 1: creacion tabla estudiantes --
CREATE TABLE estudiantes (
id_estudiante INT,
nombres VARCHAR(50),
apellidos VARCHAR(50),
edad INT,
curso VARCHAR(50),
fecha_registro VARCHAR(10)
);
-- PARTE 2: definicion de clave primaria --
ALTER TABLE estudiantes ADD PRIMARY KEY (id_estudiante);
ALTER TABLE estudiantes ADD COLUMN correo VARCHAR(100);
-- Parte 3 — Inserción de Datos --
insert into estudiantes (id_estudiante,nombres,apellidos,edad,curso,fecha_registro) values
(1, 'Juan', 'Perez', 20, 'Programacion', '2026-01-10'),
(2, 'Maria', 'Lopez', 22, 'Base de Datos', '2026-01-12'),
(3, 'Carlos', 'Mendoza', 19, 'Redes', '2026-01-15'),
(4, 'Ana', 'Torres', 25, 'Programacion', '2026-01-18'),
(5, 'Luis', 'Ramirez', 21, 'Matematicas', '2026-01-20'),
(6, 'Sofia', 'Vera', 23, 'Fisica', '2026-01-22'),
(7, 'Diego', 'Castro', 18, 'Quimica', '2026-01-25'),
(8, 'Valentina', 'Herrera', 24, 'Historia', '2026-01-28'),
(9, 'Jorge', 'Perez', 20, 'Programacion', '2026-02-01'),
(10, 'Camila', 'Ruiz', 22, 'Base de Datos', '2026-02-03'),
(11, 'Juan', 'Perez', 20, 'Redes', '2026-02-05'),
(12, 'Maria', 'Lopez', 22, 'Programacion', '2026-02-07'),
(13, 'Carlos', 'Mendoza', 19, 'Matematicas', '2026-02-10'),
(14, 'Ana', 'Torres', 25, 'Fisica', '2026-02-12'),
(15, 'Luis', 'Ramirez', 21, 'Base de Datos', '2026-02-15');
-- Eliminar tabla
DROP TABLE IF EXISTS estudiantes;
-- Parte 4 — Consultas SELECT --
-- Mostrar todos los registros
SELECT * FROM estudiantes;
-- Mostrar únicamente nombres y curso
SELECT nombre, curso FROM estudiantes;
-- Mostrar estudiantes mayores de 18 años
SELECT * FROM estudiantes WHERE edad > 18;
-- Mostrar estudiantes entre 18 y 25 años
SELECT * FROM estudiantes WHERE edad BETWEEN 18 AND 25;
-- Mostrar estudiantes del curso "Base de Datos"
SELECT * FROM estudiantes WHERE curso = 'Base de Datos';
-- Mostrar estudiantes registrados después de 2026-03-01
SELECT * FROM estudiantes WHERE fecha_registro > '2026-03-01';
-- Mostrar estudiantes registrados entre 2026-01-01 y 2026-04-30
SELECT * FROM estudiantes WHERE fecha_registro BETWEEN '2026-01-01' AND '2026-04-30';
-- Parte 5 — UPDATE
UPDATE estudiantes SET curso = 'Inteligencia Artificial' WHERE id_estudiante = 1;
UPDATE estudiantes SET edad = 24 WHERE id_estudiante = 2;
UPDATE estudiantes SET fecha_registro = '2026-03-15' WHERE id_estudiante = 3;
UPDATE estudiantes SET curso = 'Ciberseguridad', edad = 26 WHERE id_estudiante = 4;
UPDATE estudiantes SET nombre = 'Andres', apellido = 'Morales', fecha_registro = '2026-04-01' WHERE id_estudiante = 5;
-- Parte 6 — DELETE
DELETE FROM estudiantes WHERE id_estudiante = 1;
DELETE FROM estudiantes WHERE curso = 'Quimica';
DELETE FROM estudiantes WHERE edad < 20;
DELETE FROM estudiantes WHERE fecha_registro = '2026-02-03';
DELETE FROM estudiantes WHERE nombre = 'Juan' AND apellido = 'Perez';
-- Parte 7 — Modificación de la Tabla
insert into estudiantes (id_estudiante,nombres,apellidos,edad,curso,fecha_registro,correo) values
(1, 'Juan', 'Perez', 20, 'Programacion', '2026-01-10', 'juan.perez@gmail.com'),
(2, 'Maria', 'Lopez', 22, 'Base de Datos', '2026-01-12', 'maria.lopez@gmail.com'),
(3, 'Carlos', 'Mendoza', 19, 'Redes', '2026-01-15', 'carlos.mendoza@gmail.com'),
(4, 'Ana', 'Torres', 25, 'Programacion', '2026-01-18', 'ana.torres@gmail.com'),
(5, 'Luis', 'Ramirez', 21, 'Matematicas', '2026-01-20', 'luis.ramirez@gmail.com'),
(6, 'Sofia', 'Vera', 23, 'Fisica', '2026-01-22', 'sofia.vera@gmail.com'),
(7, 'Diego', 'Castro', 18, 'Quimica', '2026-01-25', 'diego.castro@gmail.com'),
(8, 'Valentina', 'Herrera', 24, 'Historia', '2026-01-28', 'valentina.herrera@gmail.com'),
(9, 'Jorge', 'Perez', 20, 'Programacion', '2026-02-01', 'jorge.perez@gmail.com'),
(10, 'Camila', 'Ruiz', 22, 'Base de Datos', '2026-02-03', 'camila.ruiz@gmail.com'),
(11, 'Juan', 'Perez', 20, 'Redes', '2026-02-05', 'juan.redes@gmail.com'),
(12, 'Maria', 'Lopez', 22, 'Programacion', '2026-02-07', 'maria.programacion@gmail.com'),
(13, 'Carlos', 'Mendoza', 19, 'Matematicas', '2026-02-10', 'carlos.mate@gmail.com'),
(14, 'Ana', 'Torres', 25, 'Fisica', '2026-02-12', 'ana.fisica@gmail.com'),
(15, 'Luis', 'Ramirez', 21, 'Base de Datos', '2026-02-15', 'luis.bd@gmail.com');
-- Parte 8 — Actualización de Scripts
-- UPDATE actualizados
UPDATE estudiantes SET correo = 'juan.actualizado@gmail.com' WHERE id_estudiante = 1;
UPDATE estudiantes SET curso = 'Inteligencia Artificial', correo = 'maria.ia@gmail.com' WHERE id_estudiante = 2;
UPDATE estudiantes SET edad = 23, correo = 'carlos.redes@gmail.com' WHERE id_estudiante = 3;
-- SELECT actualizados
SELECT * FROM estudiantes;
SELECT nombre, apellido, correo FROM estudiantes;
SELECT nombre, curso, correo FROM estudiantes WHERE curso = 'Base de Datos';
SELECT * FROM estudiantes WHERE correo LIKE '%gmail.com';
-- Parte 9 — Consultas con Fechas
-- Mostrar estudiantes registrados después de 2026-02-01
SELECT * FROM estudiantes WHERE fecha_registro > '2026-02-01';
-- Mostrar estudiantes registrados antes de 2026-05-01
SELECT * FROM estudiantes WHERE fecha_registro < '2026-05-01';
-- Mostrar estudiantes registrados entre dos fechas
SELECT * FROM estudiantes WHERE fecha_registro BETWEEN '2026-01-01' AND '2026-03-31';
-- Mostrar estudiantes registrados exactamente en 2026-03-15
SELECT * FROM estudiantes WHERE fecha_registro = '2026-03-15';
-- Mostrar estudiantes del curso “Programacion” registrados después de 2026-01-01
SELECT * FROM estudiantes WHERE curso = 'Programacion' AND fecha_registro > '2026-01-01';