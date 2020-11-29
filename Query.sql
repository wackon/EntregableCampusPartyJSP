create database CampusParty

use CampusParty

create table Campusero
(
id varchar(20) not null primary key,
nombreCampusero varchar(50),
ciudad varchar(50),
serial varchar(50),
ram varchar(50),
dd varchar(50),
marca varchar(50),
procesador varchar(50),
nomS varchar(50),
tipoS varchar(50),
valorS varchar(50),
auto varchar(50),
placa varchar(50),
)

create table Team
(
nombreEquipo varchar(50),
juego varchar (50),
plataforma varchar(50),
)

create table Ciudad
(
nombreCiudad varchar (50),
habitantes int,
universidad int,
)

create table Pabellon
(
nombrePabellon varchar(50),
tematica varchar(50),
area int,
ubicacion varchar(50),
capacidad int,
)