-- Script de Creación de la Base de Datos
CREATE DATABASE IF NOT EXISTS votacion_db;

-- Seleccionar la base de datos creada
USE votacion_db;

-- Tabla Regiones
CREATE TABLE IF NOT EXISTS regiones (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL
);

-- Tabla Comunas
CREATE TABLE IF NOT EXISTS comunas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    region_id INT,
    FOREIGN KEY (region_id) REFERENCES regiones(id)
);

-- Tabla Candidatos
CREATE TABLE IF NOT EXISTS candidatos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL
);

-- Tabla Votos
CREATE TABLE IF NOT EXISTS votos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    rut VARCHAR(20) NOT NULL,
    email VARCHAR(255) NOT NULL,
    candidato_id INT,
    nombre_apellido VARCHAR(255) NOT NULL,
    alias VARCHAR(255) NOT NULL,
    region_id INT,
    comuna_id INT,
    como_se_entero VARCHAR(255) NOT NULL,
    fecha_hora DATETIME NOT NULL,
    FOREIGN KEY (candidato_id) REFERENCES candidatos(id),
    FOREIGN KEY (region_id) REFERENCES regiones(id),
    FOREIGN KEY (comuna_id) REFERENCES comunas(id)
);


-- insert para utilizar de prueba

-- Insertar datos en la tabla regiones
INSERT INTO regiones (nombre) VALUES
('Región de Arica y Parinacota'),
('Región de Tarapacá'),
('Región de Antofagasta'),
('Región de Atacama'),
('Región de Coquimbo'),
('Región de Valparaíso'),
('Región Metropolitana de Santiago'),
('Región del Libertador General Bernardo O''Higgins'),
('Región del Maule'),
('Región de Ñuble'),
('Región del Biobío'),
('Región de La Araucanía'),
('Región de Los Ríos'),
('Región de Los Lagos'),
('Región de Aysén del General Carlos Ibáñez del Campo'),
('Región de Magallanes y de la Antártica Chilena');

-- Insertar datos en la tabla comunas
INSERT INTO comunas (nombre, region_id) VALUES
('Arica', 1),
('Putre', 1),
('Iquique', 2),
('Pozo Almonte', 2),
('Antofagasta', 3),
('Calama', 3),
('Copiapó', 4),
('Vallenar', 4),
('La Serena', 5),
('Coquimbo', 5),
('Valparaíso', 6),
('Viña del Mar', 6),
('Santiago', 7),
('Puente Alto', 7),
('Rancagua', 8),
('Machalí', 8),
('Talca', 9),
('Curicó', 9),
('Chillán', 10),
('San Carlos', 10),
('Concepción', 11),
('Talcahuano', 11),
('Temuco', 12),
('Padre Las Casas', 12),
('Valdivia', 13),
('La Unión', 13),
('Puerto Montt', 14),
('Osorno', 14),
('Coyhaique', 15),
('Puerto Aysén', 15),
('Punta Arenas', 16),
('Porvenir', 16);

-- Insertar datos en la tabla candidatos
INSERT INTO candidatos (nombre) VALUES
('Candidato 1'),
('Candidato 2'),
('Candidato 3'),
('Candidato 4');


-- controles de usuario para  BDD
-- Eliminar la tabla votos
DROP TABLE IF EXISTS votos;

-- Eliminar la tabla candidatos
DROP TABLE IF EXISTS candidatos;

-- Eliminar la tabla comunas
DROP TABLE IF EXISTS comunas;

-- Eliminar la tabla regiones
DROP TABLE IF EXISTS regiones;

-- Eliminar todas las filas de la tabla votos
DELETE FROM votos;

-- Eliminar todas las filas de la tabla candidatos
DELETE FROM candidatos;

-- Eliminar todas las filas de la tabla comunas
DELETE FROM comunas;

-- Eliminar todas las filas de la tabla regiones
DELETE FROM regiones;

