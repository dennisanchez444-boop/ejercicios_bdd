-- Preparacion de la base de datos para el taller
CREATE DATABASE ejercicios_bdd;
-- Usar la base de datos de ejercicios
USE ejercicios_bdd;
-- PARTE 1: creacion tabla estudiantes
CREATE TABLE estudiantes (
id_estudiante INT,
nombres VARCHAR(50),
apellidos VARCHAR(50),
edad INT,
curso VARCHAR(50),
fecha_registro VARCHAR(10)
);
-- PARTE 2: definicion de clave primaria
ALTER TABLE estudiantes ADD PRIMARY KEY (id_estudiante);
-- PARTE 3: insercion inicial de datos
insert into estudiantes (id_estudiante,nombres,apellidos,edad,curso,fecha_registro,correo) values
(1,'Juan','Perez',20,'Programacion','2026-05-17','juan@gmail.com'),
(2,'Maria','Lopez',22,'Matematicas','2026-05-18','maria@gmail.com'),
(3,'Carlos','Gomez',25,'Historia','2026-05-19','carlos@gmail.com'),
(4,'Ana','Torres',19,'Ingles','2026-05-20','ana@gmail.com'),
(5,'Luis','Mora',30,'Fisica','2026-05-21','luis@gmail.com'),
(6,'Sofia','Vera',24,'Quimica','2026-05-22','sofia@gmail.com'),
(7,'Pedro','Sanchez',18,'Musica','2026-05-23','pedro@gmail.com'),
(8,'Lucia','Fernandez',21,'Arte','2026-05-24','lucia@gmail.com'),
(9,'Diego','Ramirez',23,'Base de Datos','2026-05-25','diego@gmail.com'),
(10,'Elena','Torres',26,'Biologia','2026-05-26','elena@gmail.com'),
(11,'Juan','Perez',20,'Matematicas','2026-05-27','juan2@gmail.com'),
(12,'Maria','Lopez',22,'Programacion','2026-05-28','maria2@gmail.com'),
(13,'Carlos','Gomez',25,'Fisica','2026-05-29','carlos2@gmail.com'),
(14,'Ana','Torres',19,'Historia','2026-05-30','ana2@gmail.com'),
(15,'Luis','Mora',30,'Quimica','2026-05-31','luis2@gmail.com');
-- Eliminar tabla
DROP TABLE IF EXISTS estudiantes;
-- Parte 4 — Consultas SELECT
-- 1:Mostrar todos los registros
select * from estudiantes;
-- 2:Mostrar únicamente nombres y curso
select nombres, curso, correo from estudiantes;
-- 3:select * from estudiantes where edad > 18;
select * from estudiantes where edad > 18;
-- 4:Mostrar estudiantes entre 18 y 25 años
select * from estudiantes where edad between 18 and 25;
-- 5:Mostrar estudiantes del curso "Base de Datos"
select * from estudiantes where curso = 'Base de Datos';
-- 6:Mostrar estudiantes registrados después de 2026-03-01
select * from estudiantes where fecha_registro > '2026-03-01';
-- 7:Mostrar estudiantes registrados entre 2026-01-01 y 2026-04-30
select * from estudiantes where fecha_registro between '2026-01-01' and '2026-04-30';
-- 8:Mostrar estudiante por correo
select * from estudiantes where correo = 'juan@gmail.com';
-- Parte 5 — UPDATE
-- 1. Cambiar curso de un estudiante específico
update estudiantes
set curso = 'Inteligencia Artificial'
where id_estudiante = 1;
-- 2. Cambiar edad de una estudiante
update estudiantes
set edad = 23
where id_estudiante = 2;
-- 3. Cambiar fecha de registro
update estudiantes
set fecha_registro = '2026-06-01'
where id_estudiante = 3;
-- 4. Cambiar varios campos al mismo tiempo
update estudiantes
set curso = 'Redes', edad = 21, fecha_registro = '2026-06-02', correo = 'anaredes@gmail.com'
where id_estudiante = 4;
-- 5. Cambiar curso de todos los estudiantes de "Quimica" a "Bioquimica"
update estudiantes
set curso = 'Bioquimica'
where curso = 'Quimica';
-- 6. Cambiar correo de un estudiante
update estudiantes
set correo = 'nuevojuan@gmail.com'
where id_estudiante = 1;
-- Parte 6 — DELETE
-- 1. Eliminar por ID 
delete from estudiantes
where id_estudiante = 1;
-- 2. Eliminar por curso 
delete from estudiantes
where curso = 'Base de Datos';
-- 3. Eliminar por edad 
delete from estudiantes
where edad < 20;
-- 4. Eliminar por fecha 
delete from estudiantes
where fecha_registro < '2026-05-20';
-- 5. Eliminar por múltiples condiciones 
delete from estudiantes
where curso = 'Quimica' and edad > 25;
-- 6. Eliminar por correo
delete from estudiantes
where correo = 'juan@gmail.com';
-- Parte 7 — Modificación de la Tabla
ALTER TABLE estudiantes ADD COLUMN correo VARCHAR(100);