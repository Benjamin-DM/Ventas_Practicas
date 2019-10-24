CREATE DATABASE IF NOT EXISTS VENTAS ;
USE VENTAS;
CREATE OR REPLACE TABLE CUSTOMER (
CUSTNO char (8) COMMENT 'Aqui va el numero de customer',
CUSTFIRSTNAME varchar (80) NOT NULL COMMENT 'Aqui va el primer nombre',
CUSTLASTNAME varchar(80) NOT NULL COMMENT 'Aqui va el apellido',
CUSTCITY varchar (80) NOT NULL COMMENT 'Aqui va la ciudad',
CUSTSTATE char (2) NOT NULL COMMENT 'Aqui va el estado',
CUSTZIP char (10) NOT NULL COMMENT 'Aqui va el ubigeo',
CUSTBAL decimal (10,2) NOT NULL COMMENT 'Aqui va el dinero de la venta',
 CONSTRAINT CUSTOMER PRIMARY KEY (CUSTNO)
)COMMENT 'Esta tabla tiene los datos principales de la persona';

CREATE OR REPLACE TABLE EMPLOYEE (
EMPNO char (8) NOT NULL COMMENT 'Aqui va el ID DEL EMPLEADO',
EMPFIRSTNAME varchar (80) NOT NULL COMMENT 'Aqui va el primer nombre',
EMPLASTNAME varchar(80) NOT NULL COMMENT 'Aqui va el apellido',
EMPPHONE varchar (80) NOT NULL COMMENT 'Aqui va EL CELULAR DEL EMPLEADO',
EMPEMAIL varchar (180) NOT NULL COMMENT 'Aqui va el EMAIL DEL EMPLEADO',

 CONSTRAINT EMPLOYEE PRIMARY KEY (EMPNO)
)COMMENT 'Esta tabla tiene los datos principales de lOS EMPLEADOS';

CREATE OR REPLACE TABLE ORDERTBL (
ORDNO char (8) NOT NULL COMMENT 'Aqui va el ID DE LA TABLA',
ORDDATE date NOT NULL COMMENT 'Aqui va la fecha',
CUSTNO char (8) NOT NULL COMMENT 'id de la tabla customer',
EMPNO char (8) COMMENT 'Aqui va EL id de la tabla empleado',

 CONSTRAINT ORDERTBL PRIMARY KEY (ORDNO)
)COMMENT 'Esta tabla ES PARA ORDENAR LOS DATOS';