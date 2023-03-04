/* 
Consultas evaluación módulo 5 - PARTE2

Franco Jorquera
*/

/* 2)Creación de tablas
     Se escogieron id de forma secuencial, existiendo otras alternativas.
*/

DROP TABLE IF EXISTS actores;
DROP TABLE IF EXISTS teleseries;
DROP TABLE IF EXISTS reparto_actores;

CREATE TABLE actores
(
	id serial,
	nombre character varying(255) NOT NULL,
	PRIMARY KEY (id)	
);

CREATE TABLE reparto_actores
(
	id serial,
	id_actor integer,
	id_teleserie integer,
	protagonico boolean,
	sueldo integer,
	PRIMARY KEY (id),
	FOREIGN KEY (id_actor) REFERENCES actores (id) MATCH SIMPLE,
	FOREIGN KEY (id_teleserie)	REFERENCES actores (id) MATCH SIMPLE
);

CREATE TABLE teleseries
(
	id serial,
	nombre character varying(255) NOT NULL,
	capitulos integer,
	PRIMARY KEY (id)	
);

INSERT INTO actores (nombre) values ('Paz Bascuñan');
INSERT INTO actores (nombre) values ('Pablo Macaya');
INSERT INTO actores (nombre) values ('Cristián Arriagada');
INSERT INTO actores (nombre) values ('Josefina Montané');
INSERT INTO actores (nombre) values ('Loreto Aravena');
INSERT INTO actores (nombre) values ('Lorena Bosch');
INSERT INTO actores (nombre) values ('Nicolás Poblete');
INSERT INTO actores (nombre) values ('Héctor Morales');
INSERT INTO actores (nombre) values ('Aranzazú Yankovic');
INSERT INTO actores (nombre) values ('Luis Gnecco');
INSERT INTO actores (nombre) values ('Catalina Guerra');
INSERT INTO actores (nombre) values ('Solange Lackington');
INSERT INTO actores (nombre) values ('Ignacio Garmendia');
INSERT INTO actores (nombre) values ('Julio González');
INSERT INTO actores (nombre) values ('Antonella Orsini');
INSERT INTO actores (nombre) values ('Tamara Acosta');
INSERT INTO actores (nombre) values ('Silvia Santelices');
INSERT INTO actores (nombre) values ('Alejandro Trejo');
INSERT INTO actores (nombre) values ('Grimanesa Jiménez');

INSERT INTO teleseries (nombre,capitulos) values ('Soltera otra vez', 225);
INSERT INTO teleseries (nombre,capitulos) values ('Papi Ricky', 135);

INSERT INTO reparto_actores (id_actor,id_teleserie,protagonico,sueldo) values (1,1,true,100);
INSERT INTO reparto_actores (id_actor,id_teleserie,protagonico,sueldo) values (2,1,true,100);
INSERT INTO reparto_actores (id_actor,id_teleserie,protagonico,sueldo) values (3,1,true,95);
INSERT INTO reparto_actores (id_actor,id_teleserie,protagonico,sueldo) values (4,1,true,90);
INSERT INTO reparto_actores (id_actor,id_teleserie,protagonico,sueldo) values (5,1,true,95);
INSERT INTO reparto_actores (id_actor,id_teleserie,protagonico,sueldo) values (6,1,true,90);
INSERT INTO reparto_actores (id_actor,id_teleserie,protagonico,sueldo) values (7,1,true,85);
INSERT INTO reparto_actores (id_actor,id_teleserie,protagonico,sueldo) values (8,1,true,80);
INSERT INTO reparto_actores (id_actor,id_teleserie,protagonico,sueldo) values (9,1,true,80);
INSERT INTO reparto_actores (id_actor,id_teleserie,protagonico,sueldo) values (10,1,true,95);
INSERT INTO reparto_actores (id_actor,id_teleserie,protagonico,sueldo) values (11,1,true,90);
INSERT INTO reparto_actores (id_actor,id_teleserie,protagonico,sueldo) values (12,1,true,70);
INSERT INTO reparto_actores (id_actor,id_teleserie,protagonico,sueldo) values (13,1,true,70);
INSERT INTO reparto_actores (id_actor,id_teleserie,protagonico,sueldo) values (14,1,true,75);
INSERT INTO reparto_actores (id_actor,id_teleserie,protagonico,sueldo) values (15,1,true,70);
INSERT INTO reparto_actores (id_actor,id_teleserie,protagonico,sueldo) values (16,1,false,60);
INSERT INTO reparto_actores (id_actor,id_teleserie,protagonico,sueldo) values (17,1,false,55);
INSERT INTO reparto_actores (id_actor,id_teleserie,protagonico,sueldo) values (18,1,false,55);
INSERT INTO reparto_actores (id_actor,id_teleserie,protagonico,sueldo) values (19,1,false,60);

INSERT INTO reparto_actores (id_actor,id_teleserie,protagonico,sueldo) values (1,2,true,100);
INSERT INTO reparto_actores (id_actor,id_teleserie,protagonico,sueldo) values (2,2,true,100);
INSERT INTO reparto_actores (id_actor,id_teleserie,protagonico,sueldo) values (3,2,true,100);
INSERT INTO reparto_actores (id_actor,id_teleserie,protagonico,sueldo) values (4,2,true,100);
INSERT INTO reparto_actores (id_actor,id_teleserie,protagonico,sueldo) values (5,2,true,95);
INSERT INTO reparto_actores (id_actor,id_teleserie,protagonico,sueldo) values (6,2,true,85);
INSERT INTO reparto_actores (id_actor,id_teleserie,protagonico,sueldo) values (7,2,true,85);
INSERT INTO reparto_actores (id_actor,id_teleserie,protagonico,sueldo) values (8,2,true,80);
INSERT INTO reparto_actores (id_actor,id_teleserie,protagonico,sueldo) values (9,2,true,75);
INSERT INTO reparto_actores (id_actor,id_teleserie,protagonico,sueldo) values (10,2,true,65);
INSERT INTO reparto_actores (id_actor,id_teleserie,protagonico,sueldo) values (11,2,true,60);
INSERT INTO reparto_actores (id_actor,id_teleserie,protagonico,sueldo) values (12,2,true,60);
INSERT INTO reparto_actores (id_actor,id_teleserie,protagonico,sueldo) values (13,2,true,55);
INSERT INTO reparto_actores (id_actor,id_teleserie,protagonico,sueldo) values (14,2,true,50);
INSERT INTO reparto_actores (id_actor,id_teleserie,protagonico,sueldo) values (15,2,true,40);
INSERT INTO reparto_actores (id_actor,id_teleserie,protagonico,sueldo) values (16,2,true,25);
INSERT INTO reparto_actores (id_actor,id_teleserie,protagonico,sueldo) values (17,2,true,30);

--SELECT * FROM reparto_actores

/* 3)Crear una consulta que muestre todas las teleseries y todos los actores de reparto asociados. 
	No incluya los actores de rol secundario.
*/
SELECT ts.nombre AS nombre_teleserie,
	ac.nombre,
	re.protagonico
FROM
	actores ac,
	reparto_actores re,
	teleseries ts
WHERE ac.id = re.id_actor 
	AND ts.id = re.id_teleserie 
	AND re.protagonico = true;
	


