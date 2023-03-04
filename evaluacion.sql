-- Evaluación Módulo 5
-- Franco Jorquera

--Soltera otra vez
DROP TABLE IF EXISTS reparto_soltera_otra_vez;
CREATE TABLE reparto_soltera_otra_vez
(
	nombre character varying(255) NOT NULL,
	temporadas integer,
	protagonico boolean,
	sueldo integer,
	PRIMARY KEY (nombre)
);

INSERT INTO reparto_soltera_otra_vez (nombre, temporadas, protagonico, sueldo) values ('Paz Bascuñan',3,true,100);
INSERT INTO reparto_soltera_otra_vez (nombre, temporadas, protagonico, sueldo) values ('Pablo Macaya',3,true,100);
INSERT INTO reparto_soltera_otra_vez (nombre, temporadas, protagonico, sueldo) values ('Cristián Arriagada',3,true,95);
INSERT INTO reparto_soltera_otra_vez (nombre, temporadas, protagonico, sueldo) values ('Josefina Montané',2,true,90);
INSERT INTO reparto_soltera_otra_vez (nombre, temporadas, protagonico, sueldo) values ('Loreto Aravena',2,true,95);
INSERT INTO reparto_soltera_otra_vez (nombre, temporadas, protagonico, sueldo) values ('Lorena Bosch',2,true,90);
INSERT INTO reparto_soltera_otra_vez (nombre, temporadas, protagonico, sueldo) values ('Nicolás Poblete',2,true,85);
INSERT INTO reparto_soltera_otra_vez (nombre, temporadas, protagonico, sueldo) values ('Héctor Morales',3,true,80);
INSERT INTO reparto_soltera_otra_vez (nombre, temporadas, protagonico, sueldo) values ('Aranzazú Yankovic',2,true,80);
INSERT INTO reparto_soltera_otra_vez (nombre, temporadas, protagonico, sueldo) values ('Luis Gnecco',3,true,95);
INSERT INTO reparto_soltera_otra_vez (nombre, temporadas, protagonico, sueldo) values ('Catalina Guerra',3,true,90);
INSERT INTO reparto_soltera_otra_vez (nombre, temporadas, protagonico, sueldo) values ('Solange Lackington',2,true,70);
INSERT INTO reparto_soltera_otra_vez (nombre, temporadas, protagonico, sueldo) values ('Ignacio Garmendia',2,true,70);
INSERT INTO reparto_soltera_otra_vez (nombre, temporadas, protagonico, sueldo) values ('Julio González',3,true,75);
INSERT INTO reparto_soltera_otra_vez (nombre, temporadas, protagonico, sueldo) values ('Antonella Orsini',3,true,70);
INSERT INTO reparto_soltera_otra_vez (nombre, temporadas, protagonico, sueldo) values ('Tamara Acosta',1,false,60);
INSERT INTO reparto_soltera_otra_vez (nombre, temporadas, protagonico, sueldo) values ('Silvia Santelices',1,false,55);
INSERT INTO reparto_soltera_otra_vez (nombre, temporadas, protagonico, sueldo) values ('Alejandro Trejo',1,false,55);
INSERT INTO reparto_soltera_otra_vez (nombre, temporadas, protagonico, sueldo) values ('Grimanesa Jiménez',1,false,60);
SELECT * FROM reparto_soltera_otra_vez;

--Papi Ricky
DROP TABLE IF EXISTS reparto_papi_ricky;
CREATE TABLE reparto_papi_ricky
(
	nombre character varying(255) NOT NULL,
	temporadas integer,
	protagonico boolean,
	sueldo integer,
	PRIMARY KEY (nombre)
);

INSERT INTO reparto_papi_ricky (nombre, temporadas, protagonico, sueldo) values ('Jorge Zabaleta',135,true,100);
INSERT INTO reparto_papi_ricky (nombre, temporadas, protagonico, sueldo) values ('Belén Soto',135,true,100);
INSERT INTO reparto_papi_ricky (nombre, temporadas, protagonico, sueldo) values ('Tamara Acosta',135,true,100);
INSERT INTO reparto_papi_ricky (nombre, temporadas, protagonico, sueldo) values ('María Elena Swett',135,true,100);
INSERT INTO reparto_papi_ricky (nombre, temporadas, protagonico, sueldo) values ('Juan Falcón',135,true,95);
INSERT INTO reparto_papi_ricky (nombre, temporadas, protagonico, sueldo) values ('Silvia Santelices',135,true,85);
INSERT INTO reparto_papi_ricky (nombre, temporadas, protagonico, sueldo) values ('Leonardo Perucci',135,true,85);
INSERT INTO reparto_papi_ricky (nombre, temporadas, protagonico, sueldo) values ('Teresita Reyes',135,true,80);
INSERT INTO reparto_papi_ricky (nombre, temporadas, protagonico, sueldo) values ('Luis Gnecco',135,true,75);
INSERT INTO reparto_papi_ricky (nombre, temporadas, protagonico, sueldo) values ('Alejandro Trejo',135,true,65);
INSERT INTO reparto_papi_ricky (nombre, temporadas, protagonico, sueldo) values ('Grimanesa Jiménez',135,true,60);
INSERT INTO reparto_papi_ricky (nombre, temporadas, protagonico, sueldo) values ('Remigio Remedy',135,true,60);
INSERT INTO reparto_papi_ricky (nombre, temporadas, protagonico, sueldo) values ('María Paz Grandjean',135,true,55);
INSERT INTO reparto_papi_ricky (nombre, temporadas, protagonico, sueldo) values ('Héctor Morales',135,true,50);
INSERT INTO reparto_papi_ricky (nombre, temporadas, protagonico, sueldo) values ('César Caillet',135,true,40);
INSERT INTO reparto_papi_ricky (nombre, temporadas, protagonico, sueldo) values ('José Tomás Guzmán',135,true,25);
INSERT INTO reparto_papi_ricky (nombre, temporadas, protagonico, sueldo) values ('Manuel Aguirre',135,true,30);
SELECT * FROM reparto_papi_ricky;