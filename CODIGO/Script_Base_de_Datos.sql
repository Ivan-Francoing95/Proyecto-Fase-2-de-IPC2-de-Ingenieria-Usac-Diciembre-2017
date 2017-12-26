create database Red_Social

create table Usuarios(
IDUsuario int primary key,
NombreUsuario varchar(255),
CorreoUsuario varchar(255),
FechaNacimientoUsuario Date,
ContraseñaUsuario varchar(255),
Contactos varchar(255),
KarmaUsuario int
)

create table Asociaciones(
IDAsociacion int primary key,
NombreAsociacion varchar(255),
ObjetivoAsociacion varchar(255),
LogoAsociacion LONGBLOB
)

create table Usuarios_Asociacion(
IDUA int primary key,
IDUsu int,
IDAso int,
Foreign key(IDUsu) references Usuarios(IDUsuario),
Foreign key(IDAso) references Asociaciones(IDAsociacion)
)

create table Habilidades(
IDHabilidad int primary key,
NombreHabilidad varchar (255)
)

create table Conocimientos(
IDConocimiento int primary key,
NombreConocimiento varchar(255)
)

create table Conocimientos_Habilidades(
IDCH int primary key,
IDHab int,
IDCon int,
Foreign key(IDHab) references Habilidades(IDHabilidad),
Foreign key(IDCon) references Conocimientos(IDConocimiento)
)

create table Usuarios_Habilidades_Conoc(
IDUHC int primary key,
IDUsua int,
IDHC int,
Foreign key(IDUsua) references Usuarios(IDUsuario),
Foreign key(IDHC) references Conocimientos_Habilidades(IDCH)
)

create table Pago(
IDPago int primary key,
DescripcionPago varchar(255),
Banco varchar (255),
CuentaBancaria int,
IDUsuar int,
Foreign key (IDUsuar) references Usuarios(IDUsuario)
)

create table Tareas(
IDTarea int primary key,
NombreTarea varchar (255),
FechaInicioTarea date,
FechaFinalTarea date,
TareaIndependiente bool
)

create table Proyectos(
IDProyecto int primary key,
NombreProyecto varchar (255),
FechaInicioProyecto date,
FechaFinalProyecto date,
PrecioProyecto decimal,
IDUs int,
IDPag int,
Foreign key (IDUS) references Usuarios(IDUsuario),
Foreign key (IDPag) references Pago(IDPago)
)


