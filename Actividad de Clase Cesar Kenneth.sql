CREATE DATABASE TechSolutions;
USE TechSolutions;

CREATE TABLE Departamento(
id_departamento int PRIMARY KEY,
Nombre VARCHAR(30),
Empleados_asignados INT
);


CREATE TABLE Empleado(
id_empleado INT PRIMARY KEY,
id_departamento INT,
Nombre VARCHAR(50),
Apellido VARCHAR(50),
Cargo VARCHAR(20),
Salario FLOAT,
FechaInicio DATE,
Proyectos_asignados VARCHAR(50),
Empleados_asignados INT,
CONSTRAINT fk_departamento
FOREIGN KEY (id_departamento)
REFERENCES Departamento(id_departamento)
);

CREATE TABLE Proyecto(
id_proyecto INT PRIMARY KEY,
Nombre VARCHAR(100),
Empleados_asignados INT
);

CREATE TABLE Asignaciones(
id_asignaciones INT PRIMARY KEY,
id_empleado INT, 
id_proyecto INT,
CONSTRAINT fk_empleado
FOREIGN KEY (id_empleado)
REFERENCES Empleado(id_empleado),

CONSTRAINT fk_proyecto
FOREIGN KEY(id_proyecto)
REFERENCES proyecto(id_proyecto)
);

CREATE TABLE Cargos(
id_cargos INT PRIMARY KEY,
Nombre VARCHAR(50),
id_empleado INT,
CONSTRAINT fk_empleados
FOREIGN KEY (id_empleado)
REFERENCES Empleado(id_empleado)
);


/*SQL CREADO POR CÉSAR LÓPEZ
PD:PROFE NO SE SI ESTA MAL, PERO ES LA PRIMERA VEZ QUE DE VERDAD HAGO ALGO YO SOLO EN SQL, ES ESFUERZO PURO😭
*/ 

