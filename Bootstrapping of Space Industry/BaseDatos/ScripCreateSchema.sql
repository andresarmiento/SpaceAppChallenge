create table TB_TIPO_EDIFICIO
(
	IdTipoEdificio int identity(1,1) primary key(IdTipoEdificio),
	Descripcion varchar(80),
	Informacion text 
)

create table TB_TIPO_PERSONAJE
(
	IdTipoPersonaje int identity(1,1) primary key(IdTipoPersonaje),
	Descripcion varchar(50),
	informacion text
)
create table TB_CARACTERISTICAS
(
	IdCaracteristicas int identity(1,1) primary key(IdCaracteristicas),
	Descripcion varchar(50)
)
create table TB_EDIFICIO
(
	IdEdificio int identity(1,1) primary key(IdEdificio),
	IdPadre int,
	IdTipoEdificio int foreign key(IdTipoEdificio) references TB_TIPO_EDIFICIO(IdTipoEdificio),
	CostoVenta decimal,
	Descripcion varchar(50)
)
create table TB_PERSONAJE
(
	IdPersonaje int identity(1,1) primary key(IdPersonaje),
	IdTipoPersonaje int foreign key (IdTipoPersonaje) references TB_TIPO_PERSONAJE(IdTipoPersonaje),
	Descripcion varchar(50)
)
create table TB_PERSONAJE_CARACTERISTICA
(
	IdPersonaje int foreign key(IdPersonaje) references TB_PERSONAJE(IdPersonaje),
	IdCaracteristica int foreign key(IdCaracteristica) references TB_CARACTERISTICAS(IdCaracteristicas),
	ValorCaracteristica varchar(50)
)
create table TB_PERSONAJE_EDIFICIO
(
	IdEdificio int foreign key(IdEdificio) references TB_EDIFICIO(IdEdificio),
	IdPersonaje int foreign key(IdPersonaje) references TB_PERSONAJE(IdPersonaje),
	primary key(IdEdificio,IdPersonaje)
)
create table TB_TIPO_RECURSO
(
	IdTipoRecurso int identity(1,1) primary key(IdTipoRecurso),
	Descripcion varchar(50)
)
create table TB_RECURSO
(
	IdRecurso int identity(1,1) primary key(IdRecurso),
	IdTipoRecurso int foreign key(IdTipoRecurso) references TB_TIPO_RECURSO(IdTipoRecurso),
	ValorUnidad int,
	Informcion text
)
create table TB_EDIFICIO_RECURSOS
(
	IdEdificio int foreign key (IdEdificio) references TB_EDIFICIO(IdEdificio),
	IdRecurso int foreign key (IdRecurso) references TB_RECURSO(IdRecurso),
	Cantidad int
)
create table TB_PERSONAJE_RECURSO
(
	IdPersonaje int foreign key (IdPersonaje) references TB_PERSONAJE(IdPersonaje),
	IdRecurso int foreign key(IdRecurso) references TB_RECURSO(IdRecurso),
	Cantidad int
)
create table TB_CONTACTO
(
	IdContacto int identity(1,1) primary key (IdContacto),
	Nombre varchar(50),
	Apellido varchar(50),
	Correo text
)

create table TB_USUARIO
(
	IdUsuario int identity(1,1) primary key (IdUsuario),
	IdContacto int foreign key (IdContacto) references TB_CONTACTO(IdContacto),
	NombreUsuario varchar(50),
	Clave varchar(50)
)
create table TB_LOG_USUARIO_RECURSO
(
	IdUsuario int foreign key (IdUsuario) references TB_USUARIO(IdUsuario),
	IdRecurso int foreign key (IdRecurso) references TB_RECURSO(IdRecurso),
	Cantidad int,
	Fecha datetime
)
create table TB_LOG_EDIFICIO_USUARIO
(
	IdLogEdificioUsuario int identity(1,1) primary key(IdLogEdificioUsuario),
	IdEdificio int foreign key(IdEdificio) references TB_EDIFICIO(IdEdificio),
	IdUsuarioSistema int foreign key(IdUsuarioSistema) references TB_USUARIO(IdUsuario),
)
create table TB_TIPO_TX
(
	IdTipoTx int identity(1,1) primary key(IdTipoTx),
	Descripcion varchar(50)
)
create table TB_ESTADO_TX
(
	IdEstado int identity(1,1) primary key(IdEstado),
	Descripcion varchar(50)
)
create table TB_TX
(
	IdTx decimal(18,0) primary key(IdTx),
	IdLogEdificio int foreign key(IdLogEdificio) references TB_LOG_EDIFICIO_USUARIO(IdLogEdificioUsuario),
	IdTipoTX int foreign key(IdTipoTX) references TB_TIPO_TX(IdTipoTx),
	IdEstadoTx int foreign key(IdEstadoTx) references 	TB_ESTADO_TX(IdEstado),
	FechaTx datetime
)