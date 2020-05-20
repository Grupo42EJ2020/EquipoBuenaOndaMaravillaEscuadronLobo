CREATE DATABASE PIADS

CREATE TABLE Empleado(
	IdEmpleado int primary key IDENTITY(1,1),
	Nombre nvarchar(100),
	Direccion nvarchar(100))

CREATE TABLE Tema(
	IdTema int primary key IDENTITY(1,1),
	Nombre nvarchar(100))

CREATE TABLE Video(
	IdVideo int  primary key IDENTITY(1,1),
	Nombre nvarchar(200),
	Url nvarchar(100),
	FechaPublicacion datetime)

CREATE TABLE Curso(
	IdCurso int primary key IDENTITY(1,1),
	Descripcion nvarchar(200),
	IdEmpleado int,
	constraint fk_idEmp FOREIGN KEY(IdEmpleado) REFERENCES Empleado(IdEmpleado)
)

CREATE TABLE Curso_Tema(
	IdCT int  primary key IDENTITY(1,1),
	IdCurso int,
	IdTema int,
	constraint fk_idCurso FOREIGN KEY(IdCurso) REFERENCES Curso(IdCurso),
	constraint fk_idTema FOREIGN KEY(IdTema) REFERENCES Tema(IdTema),
)

CREATE TABLE Curso_Tema_Video(
	IdCTV int primary key IDENTITY(1,1),
	IdCT int,
	IdVideo int,
	constraint fk_idCT FOREIGN KEY(IdCT) REFERENCES Curso_Tema(IdCT),
	constraint fk_idVideo FOREIGN KEY(IdVideo) REFERENCES Video(IdVideo),
)

--STORED PROCEDURE DE VIDEO
CREATE PROCEDURE sp_Agregar_Video
@Nombre nvarchar(50),
@Url nvarchar(100),
@FechaPublicacion datetime
AS
BEGIN
INSERT INTO Video(Nombre,Url,FechaPublicacion) VALUES (@Nombre,@Url,@FechaPublicacion);
END;

CREATE PROCEDURE sp_ConsultarTodo_Video
AS
BEGIN
SELECT*FROM Video
END;

CREATE PROCEDURE sp_ConsultarUno_Video
@IdVideo int
AS
BEGIN
SELECT*FROM Video WHERE IdVideo = @IdVideo
END;

CREATE PROCEDURE sp_Eliminar_Video
@IdVideo int
AS
BEGIN
DELETE FROM Video WHERE IdVideo = @IdVideo;
END;

CREATE PROCEDURE sp_Actualizar_Video
@IdVideo int,
@Nombre nvarchar(200),
@Url nvarchar(100),
@FechaPublicacion DateTime
AS
BEGIN
UPDATE Video SET Nombre=@Nombre, Url=@Url, FechaPublicacion=@FechaPublicacion Where IdVideo=@IdVideo
END;

--STORED PROCEDURES DE TEMA

CREATE PROCEDURE sp_Agregar_Tema
@Nombre nvarchar(100)
AS
BEGIN
INSERT INTO Tema(Nombre) VALUES (@Nombre);
END;

CREATE PROCEDURE sp_ConsultarTodo_Tema
AS
BEGIN
SELECT*FROM Tema
END;

CREATE PROCEDURE sp_ConsultarUno_Tema
@IdTema int
AS
BEGIN
SELECT*FROM Tema WHERE IdTema = @IdTema
END;

CREATE PROCEDURE sp_Eliminar_Tema
@IdTema int
AS
BEGIN
DELETE FROM Tema WHERE IdTema = @IdTema;
END;

CREATE PROCEDURE sp_Actualizar_Tema
@IdTema int,
@Nombre nvarchar(100)
AS
BEGIN
UPDATE Tema SET Nombre=@Nombre Where IdTema=@IdTema
END;
