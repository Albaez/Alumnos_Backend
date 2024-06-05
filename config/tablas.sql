-- Active: 1717544517727@@localhost@5432@alumno1@public
CREATE TABLE alumno(
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL
)

INSERT INTO asignatura
( nombreA, idAlumno)
VALUES
( 'Programacion', 1)

CREATE TABLE asignatura(
    id SERIAL PRIMARY KEY,
    nombreA VARCHAR(50) NOT NULL,
    idAlumno int REFERENCES alumno(id)
)


SELECT  
                       asignatura.nombreA AS asignatura_nombre,
                       alumno.nombre AS alumno_nombre,
                       alumno.apellido AS alumno_apellido
                       FROM 
                       asignatura
                       INNER JOIN 
                       alumno ON asignatura.idAlumno = alumno.id 
                       WHERE alumno.id = 2