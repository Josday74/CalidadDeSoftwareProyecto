USE [master]
GO

CREATE DATABASE [Hospital]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Hospital', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Hospital.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Hospital_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Hospital_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Hospital] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Hospital].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Hospital] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Hospital] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Hospital] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Hospital] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Hospital] SET ARITHABORT OFF 
GO
ALTER DATABASE [Hospital] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Hospital] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Hospital] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Hospital] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Hospital] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Hospital] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Hospital] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Hospital] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Hospital] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Hospital] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Hospital] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Hospital] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Hospital] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Hospital] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Hospital] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Hospital] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Hospital] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Hospital] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Hospital] SET  MULTI_USER 
GO
ALTER DATABASE [Hospital] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Hospital] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Hospital] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Hospital] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Hospital] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Hospital] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Hospital] SET QUERY_STORE = OFF
GO
USE [Hospital]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bitacora](
	[CodigoError] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](100) NOT NULL,
	[Origen] [varchar](50) NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[IdEmpleado] [varchar](9) NOT NULL,
 CONSTRAINT [PK_Bitacora] PRIMARY KEY CLUSTERED 
(
	[CodigoError] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cita](
	[idCita] [int] IDENTITY(1,1) NOT NULL,
	[idPaciente] [varchar](9) NOT NULL,
	[idEmpleado] [varchar](9) NOT NULL,
	[idHabitacion] [int] NOT NULL,
	[idServicio] [int] NOT NULL,
	[FechaCita] [datetime] NOT NULL,
	[Disponible] [varchar](15) NOT NULL,
 CONSTRAINT [PK_Cita] PRIMARY KEY CLUSTERED 
(
	[idCita] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleado](
	[IdEmpleado] [varchar](9) NOT NULL,
	[Contraseña] [varchar](500) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Apellido] [varchar](50) NOT NULL,
	[Correo] [varchar](60) NOT NULL,
	[NumTel] [varchar](8) NULL,
	[idRol] [int] NOT NULL,
 CONSTRAINT [PK_Empleados] PRIMARY KEY CLUSTERED 
(
	[IdEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Habitacion](
	[idHabitacion] [int] IDENTITY(1,1) NOT NULL,
	[piso] [int] NOT NULL,
	[tipoHabitacion] [varchar](30) NOT NULL,
 CONSTRAINT [PK_Habitacion] PRIMARY KEY CLUSTERED 
(
	[idHabitacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Paciente](
	[idPaciente] [varchar](9) NOT NULL,
	[nombreP] [varchar](20) NOT NULL,
	[apellido] [varchar](20) NOT NULL,
	[direccion] [varchar](50) NOT NULL,
	[genero] [char](1) NOT NULL,
	[numTel] [varchar](8) NOT NULL,
	[fechaNaci] [datetime] NOT NULL,
 CONSTRAINT [PK_Paciente] PRIMARY KEY CLUSTERED 
(
	[idPaciente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rol](
	[idRol] [int] IDENTITY(1,1) NOT NULL,
	[descRol] [nchar](30) NOT NULL,
 CONSTRAINT [PK_Rol] PRIMARY KEY CLUSTERED 
(
	[idRol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServicioMedico](
	[idServicio] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
	[precioServicio] [decimal](18, 4) NOT NULL,
 CONSTRAINT [PK_ServiciosMedicos] PRIMARY KEY CLUSTERED 
(
	[idServicio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Bitacora]  WITH CHECK ADD  CONSTRAINT [FK__Bitacora__IdEmpl__2E1BDC42] FOREIGN KEY([IdEmpleado])
REFERENCES [dbo].[Empleado] ([IdEmpleado])
GO
ALTER TABLE [dbo].[Bitacora] CHECK CONSTRAINT [FK__Bitacora__IdEmpl__2E1BDC42]
GO
ALTER TABLE [dbo].[Cita]  WITH CHECK ADD  CONSTRAINT [FK_Empleado] FOREIGN KEY([idEmpleado])
REFERENCES [dbo].[Empleado] ([IdEmpleado])
GO
ALTER TABLE [dbo].[Cita] CHECK CONSTRAINT [FK_Empleado]
GO
ALTER TABLE [dbo].[Cita]  WITH CHECK ADD  CONSTRAINT [FK_Habitacion] FOREIGN KEY([idHabitacion])
REFERENCES [dbo].[Habitacion] ([idHabitacion])
GO
ALTER TABLE [dbo].[Cita] CHECK CONSTRAINT [FK_Habitacion]
GO
ALTER TABLE [dbo].[Cita]  WITH CHECK ADD  CONSTRAINT [FK_Paciente] FOREIGN KEY([idPaciente])
REFERENCES [dbo].[Paciente] ([idPaciente])
GO
ALTER TABLE [dbo].[Cita] CHECK CONSTRAINT [FK_Paciente]
GO
ALTER TABLE [dbo].[Cita]  WITH CHECK ADD  CONSTRAINT [FK_Servicio] FOREIGN KEY([idServicio])
REFERENCES [dbo].[ServicioMedico] ([idServicio])
GO
ALTER TABLE [dbo].[Cita] CHECK CONSTRAINT [FK_Servicio]
GO
ALTER TABLE [dbo].[Empleado]  WITH CHECK ADD  CONSTRAINT [FK_Empleado_Rol] FOREIGN KEY([idRol])
REFERENCES [dbo].[Rol] ([idRol])
GO
ALTER TABLE [dbo].[Empleado] CHECK CONSTRAINT [FK_Empleado_Rol]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE   PROCEDURE [dbo].[ActualizarCita]
@IDCITA int,
@PACIENTE Varchar(9), 
@EMPLEADO Varchar(9),
@HABITACION int,
@SERVICIO int,
@FECHA DATETIME,
@DISPONIBLE VARCHAR(15)
AS
BEGIN
    UPDATE CITA 
    SET IDPACIENTE=@PACIENTE, IDEMPLEADO=@EMPLEADO, 
    IDHABITACION=@HABITACION, IDSERVICIO=@SERVICIO,
    FECHACITA=@FECHA, DISPONIBLE = @DISPONIBLE
    WHERE IDCITA = @IDCITA
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[ActualizarEmpleado]
    @IDEMPLEADO VARCHAR(9),
    @CONTRASENA VARCHAR(500),
    @NOMBRE VARCHAR(50),
    @APELLIDO VARCHAR(50),
    @CORREO VARCHAR(50),
    @NUMTEL VARCHAR(8),
	@ROL INT
AS
BEGIN
    UPDATE EMPLEADO
    SET idRol=@ROL, Contraseña=@CONTRASENA, Nombre=@NOMBRE, 
        Apellido=@APELLIDO, Correo=@CORREO, NumTel=@NUMTEL
    WHERE IdEmpleado=@IDEMPLEADO;
END;
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ActualizarPaciente] 
@idP varchar(9), 
@nomP varchar(20),
@apellido varchar(20),
@direccion varchar(50),
@genero char(1),
@numtel varchar(8),
@fecha datetime
AS
BEGIN
	update Paciente set nombreP=@nomP, Apellido=@apellido, 
	Direccion=@direccion,Genero=@genero,
	NumTel=@numtel,FechaNaci=@fecha 
	where idPaciente=@idP
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[ConsultarUsuario]
@Cedula varchar(255),@Contrasenia varchar(255)
AS
BEGIN
select * from Empleado where IdEmpleado=@Cedula and Contraseña=@Contrasenia;
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

    CREATE   PROCEDURE [dbo].[EliminarCita]
@IDCITA int
AS
BEGIN
    DELETE FROM CITA WHERE IDCITA = @IDCITA
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[EliminarEmpleado]
    @IDEMPLEADO VARCHAR(9)
AS
BEGIN
    DELETE 
    FROM EMPLEADO
    WHERE IdEmpleado=@IDEMPLEADO;
END;



GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[EliminarPaciente]
@idP varchar(9)
AS
BEGIN
	delete from Paciente where idPaciente=@idP

END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[RegistrarBitacora]
@descrip as varchar(100),
@origen as varchar(50),
@idEmpleado as varchar(9)
AS
BEGIN
insert into Bitacora(Descripcion, Origen, Fecha, IdEmpleado)
values(@descrip, @origen, GETDATE(), @idEmpleado )
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
    CREATE   PROCEDURE [dbo].[RegistrarCita]
@PACIENTE Varchar(9), 
@EMPLEADO Varchar(9),
@HABITACION int,
@SERVICIO int,
@FECHA DATETIME,
@DISPONIBLE VARCHAR(15)
AS
BEGIN
    INSERT INTO CITA(IDPACIENTE,IDEMPLEADO,IDHABITACION, IDSERVICIO,FECHACITA,DISPONIBLE) 
    VALUES (@PACIENTE,@EMPLEADO,@HABITACION,@SERVICIO,@FECHA,@DISPONIBLE)
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[RegistrarEmpleado]
	@IDEMPLEADO AS VARCHAR(9),
    @CONTRASEÑA AS VARCHAR(500),
    @NOMBRE AS VARCHAR(50),
    @APELLIDO AS VARCHAR(50),
    @CORREO AS VARCHAR(60),
    @NUMTEL AS VARCHAR(8),
	@ROL AS INT
AS
BEGIN
    INSERT INTO EMPLEADO (IdEmpleado, Contraseña, Nombre, Apellido, Correo, NumTel,idRol)
		VALUES (@IDEMPLEADO, @CONTRASEÑA, @NOMBRE, 
        @APELLIDO, @CORREO, @NUMTEL,@ROL);
END;
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[RegistrarPaciente] 
@idP varchar(9), 
@nomP varchar(20),
@apellido varchar(20),
@direccion varchar(50),
@genero char(1),
@numtel varchar(8),
@fecha datetime
AS
BEGIN
	Insert into Paciente(idPaciente,nombreP,Apellido,Direccion,Genero,NumTel,FechaNaci)
	values (@idP,@nomP,@apellido,@direccion,@genero,@numtel,@fecha)
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[SeleccionarBitacora]
AS
BEGIN
    SELECT * FROM Bitacora;
END;
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  CREATE   PROCEDURE [dbo].[SeleccionarCitas]
AS
BEGIN
    SELECT C.idCita, CONCAT(P.nombreP,' ',P.apellido) as "NombrePaciente", 
	CONCAT(E.nombre,' ',E.apellido) as "NombreEmpleado", 
	H.tipoHabitacion, S.descripcion,C.fechaCita, C.Disponible FROM 
	CITA C, Paciente P, Empleado E, Habitacion H, ServicioMedico S 
	WHERE C.idPaciente=P.idPaciente 
	and c.IdEmpleado=e.IdEmpleado
	and c.idHabitacion=h.idHabitacion
	and c.idServicio=s.idServicio;
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SeleccionarEmpleados]
AS
BEGIN
    SELECT * FROM EMPLEADO;
END;
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SeleccionarHabitacion]
AS
BEGIN
    SELECT * FROM Habitacion;
END;
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SeleccionarPacientes]
AS
BEGIN
	Select * from Paciente;

END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SeleccionarRoles]

AS
BEGIN

    SELECT * from Rol;
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[SeleccionarServicios]
AS
BEGIN
    SELECT * FROM SERVICIOMEDICO;
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

    CREATE   PROCEDURE [dbo].[SeleccionarUnaCita]
@IDCITA int
AS
BEGIN
    SELECT C.idCita, CONCAT(P.nombreP,' ',P.apellido) as "NombrePaciente", 
	CONCAT(E.nombre,' ',E.apellido) as "NombreEmpleado", 
	H.tipoHabitacion, S.descripcion,C.fechaCita, C.Disponible FROM 
	CITA C, Paciente P, Empleado E, Habitacion H, ServicioMedico S 
	WHERE IDCITA = @IDCITA
	AND C.idPaciente=P.idPaciente 
	and c.IdEmpleado=e.IdEmpleado
	and c.idHabitacion=h.idHabitacion
	and c.idServicio=s.idServicio;
END
GO
/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SeleccionarUnEmpleado]
    @IDEMPLEADO AS VARCHAR(9)
AS
BEGIN
    SELECT * 
    FROM EMPLEADO
    WHERE IDEMPLEADO=@IDEMPLEADO;
END;
GO

SET ANSI_NULLS ON
GO