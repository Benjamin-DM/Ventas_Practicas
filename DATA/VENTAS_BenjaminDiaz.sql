CREATE DATABASE VENTAS
	default character set utf8;
    use VENTAS;
CREATE table CUSTOMER(
	CUSTCOD char(8) not null comment 'Codigo que se genera al "CUSTOMER"',
    CUSTFIRSTNAME varchar(20) not null comment 'Nombre del "CUSTOMER"',
    CUSTLASTNAME varchar(20) not null comment 'Apellido del "CUSTOMER"',
	CUSTCITY varchar(20) null comment 'Ciudad de residencia del "CUSTOMER"',
	CUSTSTATE char(2) null comment 'Estado de residencia del "CUSTOMER"',
	CUSTZIP numeric null comment 'Número de teléfono del "CUSTOMER"',
	CUSTBAL numeric null comment 'Sueldo del "CUSTOMER"',
    CONSTRAINT CUSTOMER_pk primary key (CUSTCOD)
) COMMENT 'contiene los datos del cliente';
select*from CUSTOMER;
CREATE table EMPLOYEE(
	EMPCOD char(8) not null comment 'Codigo que se genera al "EMPLOYEE"',
    EMPFIRSTNAME varchar(20) null comment 'Nombre del "EMPLOYEE"',
    EMPLASTNAME varchar(20) not null comment 'Apellido del "EMPLOYEE"',
	EMPPHONE numeric null comment 'Número del "EMPLOYEE"',
	EMPEMAIL varchar(20) not null comment 'Email del "EMPLOYEE"',
    CONSTRAINT EMPLOYEE_pk primary key (EMPCOD)
) COMMENT 'contiene los datos del empleado';
select*from EMPLOYEE;
create table ORDERTBL(
	ORDCOD CHAR(8) not null comment 'Codigo que se genera al "ORDEN',
    ORDDATE date not null comment 'Contiene la fecha de la "ORDEN"',
    CUSTCOD	char(8) not null comment 'Contiene el codigo que se genera al "CUSTOMER"',
    EMPCOD char(8) not null comment 'Contiene el codigo del "EMPLOYEE"',
    constraint ORDERTBL_pk primary key (ORDCOD)
    ) COMMENT 'Contiene los datos de la orden';
    
alter table ORDERTBL ADD constraint ORDERTBL_CUSTOMER foreign key ORDERTBL_CUSTOMER(CUSTCOD)
REFERENCES CUSTOMER (CUSTCOD);customer

alter table ORDERTBL ADD constraint ORDERTBL_EMPLOYEE foreign key ORDERTBL_EMPLOYEE(EMPCOD)
REFERENCES EMPLOYEE (EMPCOD);

