
CREATE TABLE `compra_proveedor` (
  `id` int(4) NOT NULL,
  `rut` int(8) NOT NULL,
  `dv` varchar(1) COLLATE utf8_spanish_ci NOT NULL,
  `razon_social` varchar(60) COLLATE utf8_spanish_ci NOT NULL,
  `nombre_comercial` varchar(60) COLLATE utf8_spanish_ci DEFAULT NULL,
  `direccion` varchar(60) COLLATE utf8_spanish_ci DEFAULT NULL,
  `comuna` varchar(40) COLLATE utf8_spanish_ci DEFAULT NULL,
  `ciudad` varchar(40) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fono` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fax` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `email` varchar(60) COLLATE utf8_spanish_ci DEFAULT NULL,
  `email_contacto` varchar(60) COLLATE utf8_spanish_ci DEFAULT NULL,
  `contacto` varchar(40) COLLATE utf8_spanish_ci DEFAULT NULL,
  `observaciones` varchar(400) COLLATE utf8_spanish_ci DEFAULT NULL,
  `forma_pago` int(11) DEFAULT NULL,
  `nueva_forma_pago` varchar(80) COLLATE utf8_spanish_ci DEFAULT NULL,
  `moneda_cotizacion` int(11) DEFAULT NULL,
  `nueva_moneda_cotizacion` varchar(80) COLLATE utf8_spanish_ci DEFAULT NULL,
  `moneda_pago` int(11) DEFAULT NULL,
  `nueva_moneda_pago` varchar(80) COLLATE utf8_spanish_ci DEFAULT NULL,
  `condicion_pago` int(11) DEFAULT NULL,
  `nueva_condicion_pago` varchar(80) COLLATE utf8_spanish_ci DEFAULT NULL,
  `plazo_pago` int(11) DEFAULT NULL,
  `nuevo_plazo_pago` varchar(80) COLLATE utf8_spanish_ci DEFAULT NULL,
  `rut_reembolso` varchar(12) COLLATE utf8_spanish_ci DEFAULT NULL,
  `nombre` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `apellido_paterno` varchar(80) COLLATE utf8_spanish_ci DEFAULT NULL,
  `apellido_materno` varchar(80) COLLATE utf8_spanish_ci DEFAULT NULL,
  `banco` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `tipo_cuenta` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `numero_cuenta` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `vigente` int(11) NOT NULL DEFAULT '1',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

CREATE TABLE `compra_proveedor_iso` (
  `id` int(4) NOT NULL,
  `rut` int(8) NOT NULL DEFAULT '0',
  `pagina_web` varchar(60) COLLATE utf8_spanish_ci DEFAULT NULL,
  `tipo_insumo` varchar(60) COLLATE utf8_spanish_ci DEFAULT NULL,
  `aprobador_interno` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_ingreso` date DEFAULT NULL,
  `fecha_aprobacion` date DEFAULT NULL,
  `monto_plazo` varchar(60) COLLATE utf8_spanish_ci DEFAULT NULL,
  `acreditacion` varchar(60) COLLATE utf8_spanish_ci DEFAULT NULL,
  `horario` varchar(60) COLLATE utf8_spanish_ci DEFAULT NULL,
  `tiempo_entrega` varchar(30) COLLATE utf8_spanish_ci DEFAULT NULL,
  `ficha_tecnica` varchar(30) COLLATE utf8_spanish_ci DEFAULT NULL,
  `devoluciones` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `giro` varchar(60) COLLATE utf8_spanish_ci DEFAULT NULL,
  `extranjero` varchar(5) COLLATE utf8_spanish_ci NOT NULL,
  `vigente` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*
$table->primary('id');
$table->integer('rut');
$table->string('dv');
$table->string('razon_social', 200);
$table->string('nombre_comercial', 200);
$table->string('direccion', 400);
$table->string('comuna', 200);
$table->string('ciudad', 200);
$table->string('fono', 30)->nullable();
$table->string('fax', 30)->nullable();
$table->string('email', 100)->nullable();
$table->string('email_contacto', 100)->nullable();
$table->string('contacto', 200)->nullable();;
$table->string('observaciones', 800)->nullable();
$table->string('forma_pago', 50);
$table->string('nueva_forma_pago', 50)->nullable();
$table->string('moneda_cotizacion', 15);
$table->string('nueva_moneda_cotizacion', 15)->nullable();
$table->string('moneda_pago', 15);
$table->string('nueva_moneda_pago', 15)->nullable();
$table->string('condicion_pago', 50);
$table->string('nueva_condicion_pago', 50)->nullable();
$table->string('plazo_pago', 50);
$table->string('nuevo_plazo_pago', 50)->nullable();
$table->string('rut_reembolso', 12)->nullable();
$table->string('nombre', 100)->nullable();
$table->string('apellido_paterno', 100)->nullable();
$table->string('apellido_materno', 100)->nullable();
$table->string('banco', 300)->nullable();
$table->string('tipo_cuenta', 50)->nullable();
$table->string('numero_cuenta', 50)->nullable();
$table->integer('vigente')->default(1);

iso:
$table->primary('id');
$table->string('rut', 100);
$table->string('pagina_web', 200);
$table->string('tipo_insumo', 200);
$table->string('aprobador_interno', 100);
$table->date('fecha_ingreso', 100);
$table->date('fecha_aprobacion', 100);
$table->string('monto_plazo', 100);
$table->string('acreditacion', 100);
$table->string('horario', 100);
$table->string('tiempo_entrega', 100);
$table->string('ficha_tecnica', 100);
$table->string('devoluciones', 100);
$table->string('giro', 100);
$table->string('extranjero', 100); 
$table->integer('vigente')->default(1);
*/

CREATE TABLE compra_proveedor_pago(
	id int(6) NOT NULL,
	forma_pago int not null,
	nueva_forma_pago varchar(80) COLLATE utf8_spanish_ci DEFAULT NULL,
	moneda_cotizacion int not null,
	nueva_moneda_cotizacion varchar(80) COLLATE utf8_spanish_ci DEFAULT NULL,
	moneda_pago int not null,
	nueva_moneda_pago varchar(80) COLLATE utf8_spanish_ci DEFAULT NULL,
	condicion_pago int not null,
	nueva_condicion_pago varchar(80) COLLATE utf8_spanish_ci DEFAULT NULL,
	plazo_pago int not null,
	nuevo_plazo_pago varchar(80) COLLATE utf8_spanish_ci DEFAULT NULL,
	vigente int not null DEFAULT 1,
	updated_at datetime NOT NULL,
	created_at datetime NOT NULL,
	deleted_at datetime NOT NULL,
	PRIMARY KEY(id)	
);

ALTER TABLE `compra_proveedor_pago` CHANGE `updated_at` `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP;
ALTER TABLE `compra_proveedor_pago` CHANGE `created_at` `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP;
ALTER TABLE `compra_proveedor_pago` CHANGE `deleted_at` `deleted_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP;

CREATE TABLE compra_reembolso(
  id int(6) NOT NULL,
  forma_pago_id int(6) NOT NULL,
  rut varchar(12) NOT NULL,
  nombre varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  apellido_paterno varchar(80) COLLATE utf8_spanish_ci DEFAULT NULL,
  apellido_materno varchar(80) COLLATE utf8_spanish_ci DEFAULT NULL,
  vigente int not null DEFAULT 1,
  updated_at datetime NOT NULL,
  created_at datetime NOT NULL,
  deleted_at datetime NOT NULL,
  PRIMARY KEY(id)
);

CREATE TABLE compra_transferencia(
  id int(6) NOT NULL,
  forma_pago_id int(6) NOT NULL,
  rut varchar(12) NOT NULL,
  banco varchar(100) NOT NULL,
  tipo_cuenta varchar(100) NOT NULL,
  numero_cuenta varchar(100) NOT NULL,
  vigente int not null DEFAULT 1,
  updated_at datetime NOT NULL,
  created_at datetime NOT NULL,
  deleted_at datetime NOT NULL,
  PRIMARY KEY(id)
	
);


CREATE TABLE `compra_solicitud` (
  id int(6) NOT NULL,
  fecha date DEFAULT NULL,
  proveedor_rut int(8) DEFAULT NULL,
  proveedor_rut_dv varchar(1) COLLATE utf8_spanish_ci DEFAULT NULL,
  proveedor_nombre varchar(60) COLLATE utf8_spanish_ci DEFAULT NULL,
  proveedor_direccion varchar(60) COLLATE utf8_spanish_ci DEFAULT NULL,
  proveedor_comuna varchar(30) COLLATE utf8_spanish_ci DEFAULT NULL,
  proveedor_ciudad varchar(30) COLLATE utf8_spanish_ci DEFAULT NULL,
  proveedor_fono int(8) DEFAULT NULL,
  proveedor_fax varchar(8) COLLATE utf8_spanish_ci DEFAULT NULL,
  proveedor_email varchar(60) COLLATE utf8_spanish_ci DEFAULT NULL,
  proveedor_contacto varchar(60) COLLATE utf8_spanish_ci DEFAULT NULL,
  tipo_solicitud varchar(30) COLLATE utf8_spanish_ci DEFAULT NULL,
  solicitante varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  jefe_autoriza varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  archivo_uno varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  archivo_dos varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  neto decimal(16,6) DEFAULT NULL,
  iva decimal(16,6) DEFAULT NULL,
  exento decimal(16,6) DEFAULT NULL,
  monto_total decimal(16,6) DEFAULT NULL,
  observaciones varchar(400) COLLATE utf8_spanish_ci NOT NULL,
  vigente int not null DEFAULT 1,
  updated_at datetime NOT NULL,
  created_at datetime NOT NULL,
  deleted_at datetime NOT NULL,
  PRIMARY KEY(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;


CREATE TABLE compra_solicitud_detalle (
  id int(6) NOT NULL,		
  solicitud_id int(6) DEFAULT NULL,
  tipo_area_id int(6) NOT NULL,
  tipo_compra_id int(6) NOT NULL,
  producto varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL,
  descripcion varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL,
  unidad varchar(30) COLLATE utf8_spanish_ci DEFAULT NULL,
  cantidad decimal(16,6) DEFAULT NULL,
  exento decimal(16,6) DEFAULT NULL, 
  precio decimal(16,6) DEFAULT NULL,
  total decimal(16,6) DEFAULT NULL,
  vigente int not null DEFAULT 1,
  updated_at datetime NOT NULL,
  created_at datetime NOT NULL,
  deleted_at datetime NOT NULL,
  PRIMARY KEY(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

CREATE TABLE compra_solicitud_recepcion (
  id int(6) NOT NULL,
  solicitud_id int(6) DEFAULT NULL,
  fecha date DEFAULT NULL,
  usuario_recibe int(6) NOT NULL,
  estado_recepcion int(1) NOT NULL,
  observaciones varchar(400) COLLATE utf8_spanish_ci NOT NULL,
  vigente int not null DEFAULT 1,
  updated_at datetime NOT NULL,
  created_at datetime NOT NULL,
  deleted_at datetime NOT NULL,
  PRIMARY KEY(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

CREATE TABLE compra_autorizacion (
  id int(6) NOT NULL,
  solicitud_id int(6) DEFAULT NULL,
  fecha_autoriza_jefatura datetime,
  autoriza_jefatura int(6) NOT NULL DEFAULT 0,  
  fecha_autoriza_finanza datetime,
  autoriza_finanza int(6) NOT NULL DEFAULT 0,
  fecha_autoriza_gerencia datetime,
  autoriza_gerencia int(6) NOT NULL DEFAULT 0,
  vigente int not null DEFAULT 1,
  PRIMARY KEY(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

CREATE TABLE compra_proveedor (
  id int(4) NOT NULL,
  rut int(8) NOT NULL DEFAULT '0',
  dv varchar(1) COLLATE utf8_spanish_ci DEFAULT NULL,
  razon_social varchar(60) COLLATE utf8_spanish_ci DEFAULT NULL,
  nombre_comercial varchar(60) COLLATE utf8_spanish_ci DEFAULT NULL,
  direccion varchar(60) COLLATE utf8_spanish_ci DEFAULT NULL,
  comuna varchar(40) COLLATE utf8_spanish_ci DEFAULT NULL,
  ciudad varchar(40) COLLATE utf8_spanish_ci DEFAULT NULL,
  fono varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  fax varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  email varchar(60) COLLATE utf8_spanish_ci DEFAULT NULL,
  email_contacto varchar(60) COLLATE utf8_spanish_ci NOT NULL,
  contacto varchar(40) COLLATE utf8_spanish_ci DEFAULT NULL,
  observaciones varchar(400) COLLATE utf8_spanish_ci NOT NULL,
  vigente int not null DEFAULT 1,
  updated_at datetime NOT NULL,
  created_at datetime NOT NULL,
  deleted_at datetime NOT NULL,
  PRIMARY KEY(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

CREATE TABLE compra_proveedor_iso (
  id int(4) NOT NULL,
  rut int(8) NOT NULL DEFAULT '0',
  pagina_web varchar(60) COLLATE utf8_spanish_ci DEFAULT NULL,
  tipo_insumo varchar(60) COLLATE utf8_spanish_ci DEFAULT NULL,
  aprobador_interno varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  fecha_ingreso date DEFAULT NULL,
  fecha_aprobacion date DEFAULT NULL,
  monto_plazo varchar(60) COLLATE utf8_spanish_ci DEFAULT NULL,
  acreditacion varchar(60) COLLATE utf8_spanish_ci DEFAULT NULL,
  horario varchar(60) COLLATE utf8_spanish_ci DEFAULT NULL,
  tiempo_entrega varchar(30) COLLATE utf8_spanish_ci DEFAULT NULL,
  ficha_tecnica varchar(30) COLLATE utf8_spanish_ci DEFAULT NULL,
  devoluciones varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  giro varchar(60) COLLATE utf8_spanish_ci DEFAULT NULL,
  extranjero varchar(5) COLLATE utf8_spanish_ci NOT NULL,
  vigente int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

CREATE TABLE app_perfil_usuario(
	id int not null AUTO_INCREMENT,
	descripcion varchar(100) not null,
	vigente int not null DEFAULT 1,
	updated_at datetime NOT NULL,
  	created_at datetime NOT NULL,
	deleted_at datetime NOT NULL,
	PRIMARY KEY(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

CREATE TABLE app_usuario (
  id int(2) NOT NULL,
  usuario varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  clave varchar(4) COLLATE utf8_spanish_ci DEFAULT NULL,
  clave2 varchar(60) COLLATE utf8_spanish_ci DEFAULT NULL,
  nombre_usuario varchar(30) COLLATE utf8_spanish_ci DEFAULT NULL,
  cargo_id varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  correo varchar(25) COLLATE utf8_spanish_ci DEFAULT NULL,
  perfil_id varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  modulo_oc varchar(4) COLLATE utf8_spanish_ci DEFAULT NULL,
  modulo_nc varchar(4) COLLATE utf8_spanish_ci DEFAULT NULL,
  modulo_ot varchar(4) COLLATE utf8_spanish_ci NOT NULL,
  vigente int not null DEFAULT 1,
  updated_at datetime NOT NULL,
  created_at datetime NOT NULL,
  deleted_at datetime NOT NULL,
  PRIMARY KEY(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;


-- DATOS


-- // Fin version simplificada
-- *******************************************************************************************
-- *******************************************************************************************
-- *******************************************************************************************


-- ---------------------------------------------------
-- PARAMATROS
-- ---------------------------------------------------
/*
DROP TABLE IF EXISTS compra_tipo_cargo;
DROP TABLE IF EXISTS compra_tipo_documento;
DROP TABLE IF EXISTS compra_tipo_solicitud;
DROP TABLE IF EXISTS compra_tipo_cuenta;
DROP TABLE IF EXISTS compra_tipo_compra;
DROP TABLE IF EXISTS compra_tipo_banco;
DROP TABLE IF EXISTS compra_tipo_condicion;
DROP TABLE IF EXISTS compra_tipo_moneda;
DROP TABLE IF EXISTS compra_tipo_medida;
DROP TABLE IF EXISTS compra_tipo_area;
*/

CREATE TABLE compra_tipo_cargo(
	id int not null AUTO_INCREMENT,
	descripcion varchar(100) not null,
	vigente int not null DEFAULT 1,
	updated_at datetime NOT NULL,
  	created_at datetime NOT NULL,
	deleted_at datetime NOT NULL,
	PRIMARY KEY(id)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE compra_tipo_documento(
	id int not null AUTO_INCREMENT,
	descripcion varchar(100) not null,
	vigente int not null DEFAULT 1,
	updated_at datetime NOT NULL,
  	created_at datetime NOT NULL,
	deleted_at datetime NOT NULL,
	PRIMARY KEY(id)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE compra_tipo_cuenta(
	id int not null AUTO_INCREMENT,
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
	descripcion varchar(100) not null,
	vigente int not null DEFAULT 1,
	updated_at datetime NOT NULL,
  	created_at datetime NOT NULL,
	deleted_at datetime NOT NULL,
	PRIMARY KEY(id)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE compra_tipo_banco(
	id int not null AUTO_INCREMENT,
	descripcion varchar(100) not null,
	vigente int not null DEFAULT 1,
	updated_at datetime NOT NULL,
  	created_at datetime NOT NULL,
	deleted_at datetime NOT NULL,
	PRIMARY KEY(id)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE compra_tipo_condicion(
	id int not null AUTO_INCREMENT,
	descripcion varchar(100) not null,
	vigente int not null DEFAULT 1,
	updated_at datetime NOT NULL,
  	created_at datetime NOT NULL,
	deleted_at datetime NOT NULL,
	PRIMARY KEY(id)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE compra_tipo_moneda(
	id int not null AUTO_INCREMENT,
	descripcion varchar(100) not null,
	vigente int not null DEFAULT 1,
	updated_at datetime NOT NULL,
  	created_at datetime NOT NULL,
	deleted_at datetime NOT NULL,
	PRIMARY KEY(id)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE compra_tipo_plazo;
CREATE TABLE compra_tipo_plazo(
	id int not null AUTO_INCREMENT,
	descripcion varchar(100) not null,
	vigente int not null DEFAULT 1,
	updated_at datetime NOT NULL,
  	created_at datetime NOT NULL,
	deleted_at datetime NOT NULL,
	PRIMARY KEY(id)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE compra_tipo_medida(
	id int not null AUTO_INCREMENT,
	descripcion varchar(100) not null,
	vigente int not null DEFAULT 1,
	updated_at datetime NOT NULL,
  	created_at datetime NOT NULL,
	deleted_at datetime NOT NULL,
	PRIMARY KEY(id)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE compra_tipo_area(
	id int not null AUTO_INCREMENT,
	descripcion varchar(100) not null,
	vigente int not null DEFAULT 1,
	updated_at datetime NOT NULL,
  	created_at datetime NOT NULL,
	deleted_at datetime NOT NULL,
	PRIMARY KEY(id)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*
// compra_tipo_area

$table->primary('id');
$table->string('nombre', 200);
$table->integer('vigente');

*/
