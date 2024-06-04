create database segimineto;
create database segimiento;
use segimiento;

CREATE TABLE estudiantes (
    Id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    apellidos VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    fechaNacimiento DATE NOT NULL
);

INSERT INTO estudiantes (nombre, apellidos, email, fechaNacimiento) VALUES
('Jose', 'Pérez García', 'juan.perez@example.com', '1995-05-10'),
('María', 'López Fernández', 'maria.lopez@example.com', '1998-07-22'),
('Miguel', 'Sánchez Martínez', 'carlos.sanchez@example.com', '1990-01-15'),
('Ana', 'Torres Gómez', 'ana.torres@example.com', '2001-03-08'),
('Lucero', 'Ramírez Ortega', 'luis.ramirez@example.com', '1992-11-30');


select *from estudiantes;

