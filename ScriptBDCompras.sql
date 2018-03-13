-- COMPRAS

-- -------------------------------------------------------------------------------------------
-- TABLAS
-- -------------------------------------------------------------------------------------------

-- Parametros

TipoSolicitud --> enduro en REST
TipoDocumento --> enduro en REST
Banco --> enduro en REST
TipoCuentaBanco --> enduro en REST
TipoFormaPago --> enduro en REST
TipoCondicionPago --> enduro en REST
TipoPlazoPago --> enduro en REST
TipoArea --> tabla db
TipoCompra --> tabla db
TipoMoneda --> enduro en REST

-- * --> enduro en REST Si es necesario crear toda la funcionalidad.

-- Repositorios
Proveedor
Solicitud
DetalleSolicitud
FormaPagoSolicitud
RecepcionProductoServicio
FlujoAutorizaciones -- almacena fecha y hora de la autorizacion y notificacion.
Usuario
Perfil
-- ---------------------------------------------------
-- PARAMATROS para version simplificada.
-- ---------------------------------------------------
CREATE TABLE Proveedor(
id
rut_proveedor
razon_social
	
);


-- // Fin version simplificada
-- ---------------------------------------------------
-- PARAMATROS
-- ---------------------------------------------------

CREATE TABLE app_empresa(
	id int not null AUTO_INCREMENT,
	rut int not null,
	dv int not null,
	descripcion varchar(200) not null,
	vigente int not null DEFAULT 1,
  	updated_at datetime NOT NULL,
  	created_at datetime NOT NULL,
  	deleted_at datetime NOT NULL,
	PRIMARY KEY(id)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE compra_cargo(
	id int not null AUTO_INCREMENT,
	empresa_id int not null,
	descripcion varchar(100) not null,
	vigente int not null DEFAULT 1,
	updated_at datetime NOT NULL,
  	created_at datetime NOT NULL,
	deleted_at datetime NOT NULL,
	PRIMARY KEY(id)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE compra_tipo_documento(
	id int not null AUTO_INCREMENT,
	empresa_id int not null,
	descripcion varchar(100) not null,
	vigente int not null DEFAULT 1,
	updated_at datetime NOT NULL,
  	created_at datetime NOT NULL,
	deleted_at datetime NOT NULL,
	PRIMARY KEY(id)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE compra_tipo_cuenta(
	id int not null AUTO_INCREMENT,
	empresa_id int not null,
	descripcion varchar(100) not null,
	vigente int not null DEFAULT 1,
	updated_at datetime NOT NULL,
  	created_at datetime NOT NULL,
	deleted_at datetime NOT NULL,
	PRIMARY KEY(id)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE compra_tipo_solicitud(
	id int not null AUTO_INCREMENT,
	descripcion varchar(100) not null,
	vigente int not null DEFAULT 1,
	updated_at datetime NOT NULL,
  	created_at datetime NOT NULL,
	deleted_at datetime NOT NULL,
	PRIMARY KEY(id)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE compra_tipo_compra(
	id int not null AUTO_INCREMENT,
	empresa_id int not null,
	descripcion varchar(100) not null,
	vigente int not null DEFAULT 1,
	updated_at datetime NOT NULL,
  	created_at datetime NOT NULL,
	deleted_at datetime NOT NULL,
	PRIMARY KEY(id)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE compra_banco(
	id int not null AUTO_INCREMENT,
	empresa_id int not null,
	descripcion varchar(100) not null,
	vigente int not null DEFAULT 1,
	updated_at datetime NOT NULL,
  	created_at datetime NOT NULL,
	deleted_at datetime NOT NULL,
	PRIMARY KEY(id)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE compra_condicion_pago(
	id int not null AUTO_INCREMENT,
	empresa_id int not null,
	descripcion varchar(100) not null,
	vigente int not null DEFAULT 1,
	updated_at datetime NOT NULL,
  	created_at datetime NOT NULL,
	deleted_at datetime NOT NULL,
	PRIMARY KEY(id)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE compra_tipo_moneda(
	id int not null AUTO_INCREMENT,
	empresa_id int not null,
	descripcion varchar(100) not null,
	vigente int not null DEFAULT 1,
	updated_at datetime NOT NULL,
  	created_at datetime NOT NULL,
	deleted_at datetime NOT NULL,
	PRIMARY KEY(id)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE compra_plazo_pago(
	id int not null AUTO_INCREMENT,
	empresa_id int not null,
	descripcion varchar(100) not null,
	vigente int not null DEFAULT 1,
	updated_at datetime NOT NULL,
  	created_at datetime NOT NULL,
	deleted_at datetime NOT NULL,
	PRIMARY KEY(id)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE compra_unidad_medida(
	id int not null AUTO_INCREMENT,
	empresa_id int not null,
	descripcion varchar(100) not null,
	vigente int not null DEFAULT 1,
	updated_at datetime NOT NULL,
  	created_at datetime NOT NULL,
	deleted_at datetime NOT NULL,
	PRIMARY KEY(id)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE compra_envio_correo(
	id int not null AUTO_INCREMENT,
	empresa_id int not null,
	descripcion varchar(100) not null,
	vigente int not null DEFAULT 1,
	updated_at datetime NOT NULL,
  	created_at datetime NOT NULL,
	deleted_at datetime NOT NULL,
	PRIMARY KEY(id)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE compra_perfil_usuario(
	id int not null AUTO_INCREMENT,
	empresa_id int not null,
	descripcion varchar(100) not null,
	vigente int not null DEFAULT 1,
	updated_at datetime NOT NULL,
  	created_at datetime NOT NULL,
	deleted_at datetime NOT NULL,
	PRIMARY KEY(id)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE compra_area(
	id int not null AUTO_INCREMENT,
	empresa_id int not null,
	descripcion varchar(100) not null,
	vigente int not null DEFAULT 1,
	updated_at datetime NOT NULL,
  	created_at datetime NOT NULL,
	deleted_at datetime NOT NULL,
	PRIMARY KEY(id)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ---------------------------------------------------
-- TABLAS
-- ---------------------------------------------------

CREATE TABLE compra_solicitud(
id int not null AUTO_INCREMENT,

vigente int not null DEFAULT 1,
PRIMARY KEY(id)
);

CREATE TABLE compra_solicitud_detalle(
id int not null AUTO_INCREMENT,

vigente int not null DEFAULT 1,
PRIMARY KEY(id)
);

CREATE TABLE compra_forma_pago(
id int not null AUTO_INCREMENT,

vigente int not null DEFAULT 1,
PRIMARY KEY(id)
);

CREATE TABLE compra_proveedor(
id int not null AUTO_INCREMENT,

vigente int not null DEFAULT 1,
PRIMARY KEY(id)
);

CREATE TABLE compra_forma_pago_proveedor(
id int not null AUTO_INCREMENT,

vigente int not null DEFAULT 1,
PRIMARY KEY(id)
);

CREATE TABLE compra_flujo_autorizacion(
id int not null AUTO_INCREMENT,

vigente int not null DEFAULT 1,
PRIMARY KEY(id)
);

CREATE TABLE compra_comentario_solicitud(
id int not null AUTO_INCREMENT,
usuario_id int not null,
comentario varchar(500) not null,
fecha TIMESTAMP not null,
vigente int not null DEFAULT 1,
PRIMARY KEY(id)
);

CREATE TABLE compra_log(
id int not null AUTO_INCREMENT,
usuario_id int not null,
accion varchar(100) not null,
fecha TIMESTAMP not null,
vigente int not null DEFAULT 1,
PRIMARY KEY(id)
)

-- -------------------------------------------------------------------------------------------
-- FOREING KEY
-- -------------------------------------------------------------------------------------------


-- -------------------------------------------------------------------------------------------
-- STORE PROCEDURE
-- -------------------------------------------------------------------------------------------

--------------------------------------------
-- SEGURIDAD
--------------------------------------------

 
	
	md Area
	md Banco
	md ComentarioSolicitud
	md CondicionPago
	md EnvioCorreo
	md FlujoAutorizacion
	md FormaPago
	md FormaPagoProveedor
	md Log
	md PerfilUsuario
	md PlazoPago
	md Proveedor
	md Solicitud
	md SolicitudDetalle
	md TipoCompra
	md TipoCuenta
	md TipoDocumento
	md TipoMoneda
	md TipoSolicitud
	md UnidadMedida



	DROP TABLE app_empresa;
	DROP TABLE compra_area;
	DROP TABLE compra_banco;
	DROP TABLE compra_comentario_solicitud;
	DROP TABLE compra_condicion_pago;
	DROP TABLE compra_envio_correo;
	DROP TABLE compra_flujo_autorizacion;
	DROP TABLE compra_forma_pago;
	DROP TABLE compra_forma_pago_proveedor;
	DROP TABLE compra_log;
	DROP TABLE compra_perfil_usuario;
	DROP TABLE compra_plazo_pago;
	DROP TABLE compra_proveedor;
	DROP TABLE compra_solicitud;
	DROP TABLE compra_solicitud_detalle;
	DROP TABLE compra_tipo_compra;
	DROP TABLE compra_tipo_cuenta;
	DROP TABLE compra_tipo_documento;
	DROP TABLE compra_tipo_moneda;
	DROP TABLE compra_tipo_solicitud;
	DROP TABLE compra_unidad_medida;

-- -----------------------------------
-- crear carpetas de vista compra
-- -----------------------------------

	md Area
	md Banco
	md ComentarioSolicitud
	md CondicionPago
	md EnvioCorreo
	md FlujoAutorizacion
	md FormaPago
	md FormaPagoProveedor
	md Log
	md PerfilUsuario
	md PlazoPago
	md Proveedor
	md Solicitud
	md SolicitudDetalle
	md TipoCompra
	md TipoCuenta
	md TipoDocumento
	md TipoMoneda
	md TipoSolicitud
	md UnidadMedida

-- -----------------------------------
-- crear controller compra
-- -----------------------------------

php artisan make:controller compra\DocumentoCausaController --resource --model=Documento


	php artisan make:controller compra\AreaController --resource
	php artisan make:controller compra\BancoController --resource
	php artisan make:controller compra\ComentarioSolicitudController --resource
	php artisan make:controller compra\CondicionPagoController --resource
	php artisan make:controller compra\EnvioCorreoController --resource
	php artisan make:controller compra\FlujoAutorizacionController --resource
	php artisan make:controller compra\FormaPagoController --resource
	php artisan make:controller compra\FormaPagoProveedorController --resource
	php artisan make:controller compra\LogController --resource
	php artisan make:controller compra\PerfilUsuarioController --resource
	php artisan make:controller compra\PlazoPagoController --resource
	php artisan make:controller compra\ProveedorController --resource
	php artisan make:controller compra\SolicitudController --resource
	php artisan make:controller compra\SolicitudDetalleController --resource
	php artisan make:controller compra\TipoCompraController --resource
	php artisan make:controller compra\TipoCuentaController --resource
	php artisan make:controller compra\TipoDocumentoController --resource
	php artisan make:controller compra\TipoMonedaController --resource
	php artisan make:controller compra\TipoSolicitudController --resource
	php artisan make:controller compra\UnidadMedidaController --resource

	php artisan make:model Area
	php artisan make:model Banco
	php artisan make:model ComentarioSolicitud
	php artisan make:model CondicionPago
	php artisan make:model EnvioCorreo
	php artisan make:model FlujoAutorizacion
	php artisan make:model FormaPago
	php artisan make:model FormaPagoProveedor
	php artisan make:model Log
	php artisan make:model PerfilUsuario
	php artisan make:model PlazoPago
	php artisan make:model Proveedor
	php artisan make:model Solicitud
	php artisan make:model SolicitudDetalle
	php artisan make:model TipoCompra
	php artisan make:model TipoCuenta
	php artisan make:model TipoDocumento
	php artisan make:model TipoMoneda
	php artisan make:model TipoSolicitud
	php artisan make:model UnidadMedida


	*******************

	*Solicitud
	*SolicitudDetalle
	*SolicitudProveedor

	SolicitudFormaPago
	SolicitudComentario
	Recepcion
	Proveedor
	ProveedorFormaPago	
	AutorizacionFlujo
	AutorizacionCompra

	php artisan make:controller compra\SolicitudFormaPagoController --resource
	php artisan make:controller compra\SolicitudComentarioController --resource
	php artisan make:controller compra\RecepcionController --resource
	php artisan make:controller compra\ProveedorController --resource
	php artisan make:controller compra\ProveedorFormaPagoController --resource
	php artisan make:controller compra\AutorizacionFlujoController --resource
	php artisan make:controller compra\AutorizacionCompraController --resource



	php artisan make:model
	
php artisan make:model SolicitudFormaPago
php artisan make:model SolicitudComentario
php artisan make:model Recepcion
php artisan make:model Proveedor
php artisan make:model ProveedorFormaPago	
php artisan make:model AutorizacionFlujo
php artisan make:model AutorizacionCompra


Area
Banco
ComentarioSolicitud
CondicionPago
EnvioCorreo
FlujoAutorizacion
FormaPago
FormaPagoProveedor
Log
PerfilUsuario
PlazoPago
Proveedor
Solicitud
SolicitudDetalle
TipoCompra
TipoCuenta
TipoDocumento
TipoMoneda
TipoSolicitud
UnidadMedida


insert into compra_area(descripcion) values
('GERENCIA'),
('PRESIDENCIA'),
('ADMINISTRACION'),
('CONTABILIDAD (Y REMUNERACIONES)'),
('FINANZAS (Y TESORERIA)'),
('ADMINISTRACION  DE  VENTAS'),
('BODEGAS'),
('CASAS'),
('COMERCIALIZACION'),
('SUPERMERCADOS'),
('CALIDAD / SEGURIDAD'),
('CABALLOS'),
('NOVILLOS'),
('OVEJAS'),
('FRUTICOLA'),
('PACKING'),
('AVICOLA'),
('FABRICA DE ALIMENTO'),
('SALA DE VENTAS'),
('MANTENCION'),
('CLASIFICADORA'),
('PABELLONES MANUALES'),
('PABELLONES AUTOMATICAS'),
('CRIANZA'),
('COMPOSTAJE');


CREATE TABLE compra_area_detalle(
	id int not null AUTO_INCREMENT,
	solicitud_id int not null,
	descripcion varchar(100) not null,
	porcentaje decimaldecimal(16,6),
	monto decimaldecimal(16,6),
	vigente int not null DEFAULT 1,
	PRIMARY KEY(id)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;


insert into compra_tipo_compra(descripcion) values
('ACTIVO FIJO'),
('OBRA EN CURSO'),
('ALIMENTO GALLINAS'),
('GALLINAS – POLLITAS'),
('MATERIAL DE EMPAQUE'),
('FERTILIZANTES – QUIMICOS – INSECTICIDAS – PLAGAS'),
('ANALISIS'),
('NOTARIALES Y REGISTROS'),
('MANTENCION Y REPARACIONES'),
('CAPACITACION'),
('SUPERMERCADOS (FLETES - RAPEL - PROMOCIONES)'),
('SERVICIOS PROFESIONALES Y TEMPORALES'),
('GASTOS DE OFICINA (ASEO - UTILES - FOTOC - OTROS)'),
('SERVICIOS BASICOS (LUZ –AGUA –GAS-COMBUSTIBLE)'),
('COMUNICACIONES (TELEFONO – CORREO –INTERNET)'),
('PUBLICIDAD (CUOTA SOCIAL – PAG. AMARILLAS – HIBU)'),
('PATENTES Y CONTRIBUCIONES'),
('ARRIENDOS - LEASING'),
('BANCARIOS Y  FINANCIEROS'),
('ATENCIONES AL PERSONAL (CAFÉ, AZUCAR, BUS, SALA CUNA, ATENC. VISITAS)');


insert into	compra_plazo_pago(descripcion) values
('7 DIAS'),
('10 DIAS'),
('15 DIAS'),
('30 DIAS'),
('45 DIAS'),
('60 DIAS'),
('90 DIAS'),
('120 DIAS'),
('150 DIAS'),
('30-60 DIAS'),
('30-60-90 DIAS');

