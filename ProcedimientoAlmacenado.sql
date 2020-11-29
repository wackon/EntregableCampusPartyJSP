use CampusParty

CREATE PROCEDURE insertarcampusero
@id varchar(20),
@nombreCampusero varchar(50),
@ciudad varchar(50),
@serial varchar(50),
@ram varchar(50),
@dd varchar(50),
@marca varchar(50),
@procesador varchar(50),
@nomS varchar(50),
@tipoS varchar(50),
@valorS varchar(50),
@auto varchar(50),
@placa varchar(50)

AS
begin
INSERT INTO Campusero(id,nombreCampusero,ciudad,serial,ram,dd,marca,procesador,nomS,tipoS,valorS,auto,placa)
	values(@id,@nombreCampusero,@ciudad,@serial,@ram,@dd,@marca,@procesador,@nomS,@tipoS,@valorS,@auto,@placa)

end

CREATE PROCEDURE Insertarequipo
(
@nombreEquipo varchar(50),
@juego varchar (50),
@plataforma varchar(50)
)
AS
begin
INSERT INTO Team(nombreEquipo,juego,plataforma)
	values(@nombreEquipo,@juego,@plataforma)

end

CREATE PROCEDURE Insertarciudad
(
@nombreCiudad varchar (50),
@habitantes int,
@universidad int
)
AS
begin
INSERT INTO Ciudad(nombreCiudad,habitantes,universidad)
	values(@nombreCiudad,@habitantes,@universidad)
end

CREATE PROCEDURE Insertarpabellon
(
@nombrePabellon varchar(50),
@tematica varchar(50),
@area int,
@ubicacion varchar(50),
@capacidad int
)
AS
begin
INSERT INTO Pabellon(nombrePabellon,tematica,area,ubicacion,capacidad)
	values(@nombrePabellon,@tematica,@area,@ubicacion,@capacidad)

end
