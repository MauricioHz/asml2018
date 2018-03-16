Use santamar_asmldesarrollo;

DROP TABLE IF EXISTS mantencion_actividad_usuario;
DROP TABLE IF EXISTS mantencion_bodega;
DROP TABLE IF EXISTS mantencion_orden_detalle;
DROP TABLE IF EXISTS mantencion_equipo;
DROP TABLE IF EXISTS mantencion_orden;
DROP TABLE IF EXISTS mantencion_plan;
DROP TABLE IF EXISTS mantencion_programa_semana;
DROP TABLE IF EXISTS mantencion_tipo_repuesto;
DROP TABLE IF EXISTS mantencion_repuesto_stock;
DROP TABLE IF EXISTS mantencion_tipo_responsable;
DROP TABLE IF EXISTS mantencion_tipo_responsable_equipo;
DROP TABLE IF EXISTS mantencion_tipo_area;
DROP TABLE IF EXISTS mantencion_tipo_subarea;
DROP TABLE IF EXISTS mantencion_tipo_tecnico;

CREATE TABLE mantencion_actividad_usuario (
  id int(11) NOT NULL,
  fecha_hora datetime DEFAULT NULL,
  usuario_id varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  actividad varchar(600) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

CREATE TABLE mantencion_tipo_area (
  id int(2) NOT NULL,
  descripcion varchar(50) CHARACTER SET utf8 NOT NULL,
  vigente int not null DEFAULT 1,
  updated_at datetime NOT NULL,
  created_at datetime NOT NULL,
  deleted_at datetime NOT NULL,
  PRIMARY KEY(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

CREATE TABLE mantencion_bodega (
  id int(2) NOT NULL,
  descripcion varchar(80) COLLATE utf8_spanish_ci NOT NULL,
  detalle varchar(400) COLLATE utf8_spanish_ci NOT NULL,
  tecnico_id int(3) NOT NULL,
  vigente int not null DEFAULT 1,
  updated_at datetime NOT NULL,
  created_at datetime NOT NULL,
  deleted_at datetime NOT NULL,
  PRIMARY KEY(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

CREATE TABLE mantencion_orden_detalle (
  id int(8) NOT NULL,
  orden_id int(8) NOT NULL,
  repuesto_stock_id int(6) NOT NULL,
  cantidad int(6) NOT NULL,
  vigente int not null DEFAULT 1,
  updated_at datetime NOT NULL,
  created_at datetime NOT NULL,
  deleted_at datetime NOT NULL,
  PRIMARY KEY(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

CREATE TABLE mantencion_equipo (
  id int(11) NOT NULL,
  plan_id int(3) NOT NULL,
  area_id int(3) NOT NULL,
  subarea_id int(3) NOT NULL,
  tipo char(1) COLLATE utf8_spanish_ci NOT NULL,
  equipo_id varchar(80) COLLATE utf8_spanish_ci NOT NULL,
  responsable_id int(3) NOT NULL,
  observacion varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  vigente int not null DEFAULT 1,
  updated_at datetime NOT NULL,
  created_at datetime NOT NULL,
  deleted_at datetime NOT NULL,
  PRIMARY KEY(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

CREATE TABLE mantencion_orden (
  id int(8) NOT NULL,
  semana varchar(5) CHARACTER SET latin1 NOT NULL,
  equipo_id int(3) NOT NULL,
  fecha_inicio datetime NOT NULL,
  fecha_termino datetime NOT NULL,
  tipo_mantencion varchar(10) CHARACTER SET utf8 NOT NULL,
  descripcion varchar(400) CHARACTER SET utf8 NOT NULL,
  observacion varchar(400) CHARACTER SET utf8 DEFAULT NULL,
  tecnico_id int(3) NOT NULL,
  supervisor_id int(3) NOT NULL,
  usuario_id int(3) NOT NULL,
  estado_aprobacion int(1) NOT NULL,
  ciclo int(1) NOT NULL,
  vigente int not null DEFAULT 1,
  updated_at datetime NOT NULL,
  created_at datetime NOT NULL,
  deleted_at datetime NOT NULL,
  PRIMARY KEY(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

CREATE TABLE mantencion_plan (
  id int(3) NOT NULL,
  codigo varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  fecha date NOT NULL,
  version int(2) NOT NULL,
  anio int(4) NOT NULL,
  nombre varchar(300) COLLATE utf8_spanish_ci NOT NULL,
  usuario_id int(3) NOT NULL,
  observacion varchar(400) COLLATE utf8_spanish_ci NOT NULL,
  vigente int not null DEFAULT 1,
  updated_at datetime NOT NULL,
  created_at datetime NOT NULL,
  deleted_at datetime NOT NULL,
  PRIMARY KEY(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

CREATE TABLE mantencion_programa_semana (
  id int(2) NOT NULL,
  equipo_id int(3) NOT NULL,
  plan_id int(3) NOT NULL,
  anio int(4) NOT NULL,
  semana int(2) NOT NULL,
  orden_id int(8) DEFAULT NULL,
  actividad varchar(300) COLLATE utf8_spanish_ci NOT NULL,
  descripcion varchar(300) COLLATE utf8_spanish_ci NOT NULL,
  vigente int not null DEFAULT 1,
  updated_at datetime NOT NULL,
  created_at datetime NOT NULL,
  deleted_at datetime NOT NULL,
  PRIMARY KEY(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

CREATE TABLE mantencion_tipo_repuesto (
  id int(8) NOT NULL,
  codigo varchar(100) CHARACTER SET utf8 NOT NULL,
  descripcion varchar(100) CHARACTER SET utf8 NOT NULL,
  detalle varchar(300) COLLATE utf8_spanish_ci NOT NULL,
  vigente int not null DEFAULT 1,
  updated_at datetime NOT NULL,
  created_at datetime NOT NULL,
  deleted_at datetime NOT NULL,
  PRIMARY KEY(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

CREATE TABLE mantencion_repuesto_stock (
  id int(11) NOT NULL,
  repuesto_id int(11) NOT NULL,
  bodega_id int(2) NOT NULL,
  codigo varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  repuesto varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  cantidad int(11) NOT NULL,
  unidad varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  saldo int(8) NOT NULL,
  cantidad_minimo int(4) NOT NULL,
  precio int(8) NOT NULL,
  observacion varchar(300) COLLATE utf8_spanish_ci NOT NULL,
  vigente int not null DEFAULT 1,
  updated_at datetime NOT NULL,
  created_at datetime NOT NULL,
  deleted_at datetime NOT NULL,
  PRIMARY KEY(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

CREATE TABLE mantencion_tipo_responsable (
  id int(3) NOT NULL,
  usuario_id int(3) NOT NULL,
  responsable varchar(80) COLLATE utf8_spanish_ci NOT NULL,
  vigente int not null DEFAULT 1,
  updated_at datetime NOT NULL,
  created_at datetime NOT NULL,
  deleted_at datetime NOT NULL,
  PRIMARY KEY(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

CREATE TABLE mantencion_tipo_responsable_equipo (
  id int(3) NOT NULL,
  responsable_id int(3) NOT NULL,
  equipo_idint(3) NOT NULL,
  nombre varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  observacion varchar(300) COLLATE utf8_spanish_ci NOT NULL,
  vigente int not null DEFAULT 1,
  updated_at datetime NOT NULL,
  created_at datetime NOT NULL,
  deleted_at datetime NOT NULL,
  PRIMARY KEY(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

CREATE TABLE mantencion_tipo_subarea (
  id int(2) NOT NULL,
  area_id int(2) NOT NULL,
  descripcion varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  vigente int not null DEFAULT 1,
  updated_at datetime NOT NULL,
  created_at datetime NOT NULL,
  deleted_at datetime NOT NULL,
  PRIMARY KEY(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

CREATE TABLE mantencion_tipo_tecnico (
  id int(3) NOT NULL,
  descripcion varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  especialidad varchar(80) COLLATE utf8_spanish_ci NOT NULL,
  vigente int not null DEFAULT 1,
  updated_at datetime NOT NULL,
  created_at datetime NOT NULL,
  deleted_at datetime NOT NULL,
  PRIMARY KEY(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

/*
md actividad;
md bodega;
md equipo;
md orden;
md orden_detalle;
md plan;
md programa;
md repuesto_stock;
md repuesto;
md responsable;
md responsable_equipo;
md area;
md subarea;
md tecnico;
md ok;
*/

ALTER TABLE mantencion_tipo_area
ADD CONSTRAINT FK_area_subarea
ADD FOREIGN KEY (id) REFERENCES mantencion_subarea(area_id);

ALTER TABLE mantencion_orden
ADD CONSTRAINT FK_orden_detalle_orden
ADD FOREIGN KEY (id) REFERENCES mantencion_orden_detalle(orden_id);
