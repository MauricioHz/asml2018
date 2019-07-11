
// Método para todos los parámetros.
public function up()
{
  Schema::create('tabla', function (Blueprint $table) {
  $table->increments('id');
  $table->string('descripcion', 300);
  $table->integer('vigente')->default(1);
  $table->timestamps();
 });
}

// Método generico.
public function up()
{
  Schema::create('tabla', function (Blueprint $table) {
  $table->increments('id');
  $table->string('descripcion', 300)->comment('my comment');
  $table->integer('vigente')->default(1);
  $table->timestamps();
 });
}


--> gestion_accion_inmediata 
$table->string('noconformidad_id', 10)->comment('número de no conformidad');
$table->integer('area_id')->comment ('registra el área causante de la no conformidad');
$table->integer('responsable_id')->comment('responsable de la acción inmediata que fue implementada');
$table->dateTime('fecha_implementacion')->comment ('fecha seleccionada por el usuario');
$table->integer('vigente')->default (1);
  



Use santamar_asmldesarrollo;

DROP TABLE IF EXISTS gestion_accion_inmediata;
DROP TABLE IF EXISTS gestion_analisis_causa;
DROP TABLE IF EXISTS gestion_eficacia;
DROP TABLE IF EXISTS gestion_equipo_designado;
DROP TABLE IF EXISTS gestion_noconformidad;
DROP TABLE IF EXISTS gestion_requisito;
DROP TABLE IF EXISTS gestion_verifica;
DROP TABLE IF EXISTS gestion_encargado_iso;
DROP TABLE IF EXISTS gestion_tipo_estado;
DROP TABLE IF EXISTS gestion_tipo_perfil;
DROP TABLE IF EXISTS gestion_tipo_cargo;
DROP TABLE IF EXISTS gestion_tipo_area;
DROP TABLE IF EXISTS gestion_tipo_responsable;
DROP TABLE IF EXISTS gestion_tipo_director;
DROP TABLE IF EXISTS gestion_tipo_estado;
DROP TABLE IF EXISTS gestion_tipo_origen;
DROP TABLE IF EXISTS gestion_tipo_proceso;
DROP TABLE IF EXISTS gestion_tipo_rol;
DROP TABLE IF EXISTS gestiom_tipo_requisito;
DROP TABLE IF EXISTS gestion_tipo_accion;
DROP TABLE IF EXISTS gestion_tipo_hallazgo;


CREATE TABLE gestion_accion_inmediata (
  id int(6) NOT NULL COMMENT 'identificador del registro',
  noconformidad_id int(6) NOT NULL COMMENT 'número de no conformidad',
  area_id varchar(4) CHARACTER SET utf8 DEFAULT NULL COMMENT 'registra el área causante de la no conformidad',
  responsable_id varchar(4) COLLATE utf8_spanish_ci DEFAULT NULL COMMENT 'responsable de la acción inmediata que fue implementada',
  fecha_implementacion datetime DEFAULT NULL COMMENT 'fecha seleccionada por el usuario',
  vigente int not null DEFAULT 1,
  updated_at datetime NOT NULL,
  created_at datetime NOT NULL,
  deleted_at datetime NOT NULL,
  PRIMARY KEY(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

CREATE TABLE gestion_analisis_causa (
  id int(5) NOT NULL,
  noconformidad_id int(6) NOT NULL COMMENT 'número de no conformidad',
  fecha_analisis_causa date NOT NULL,
  tipo_accion varchar(40) COLLATE utf8_spanish_ci NOT NULL,
  detalle_analisis_causa varchar(600) COLLATE utf8_spanish_ci NOT NULL,
  responsable_1 varchar(40) COLLATE utf8_spanish_ci NOT NULL,
  fecha_implementacion_1 date NOT NULL,
  fecha_implementacion_2 date NOT NULL,
  miembro_direccion_aprueba varchar(40) COLLATE utf8_spanish_ci NOT NULL,
  responsable_2 int(40) NOT NULL,
  fecha_implementacion_3 date NOT NULL,
  descripcion_accion_seguir varchar(600) COLLATE utf8_spanish_ci NOT NULL,
  usuario_id int(2) NOT NULL,
  vigente int not null DEFAULT 1,
  updated_at datetime NOT NULL,
  created_at datetime NOT NULL,
  deleted_at datetime NOT NULL,
  PRIMARY KEY(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

CREATE TABLE gestion_eficacia (
  id int(3) NOT NULL,
  noconformidad_id int(6) NOT NULL COMMENT 'número de no conformidad',
  respuesta int(1) NOT NULL,
  responsable_id varchar(40) COLLATE utf8_spanish_ci NOT NULL,
  fecha_cierre date NOT NULL,
  fecha_registro timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  vigente int not null DEFAULT 1,
  updated_at datetime NOT NULL,
  created_at datetime NOT NULL,
  deleted_at datetime NOT NULL,
  PRIMARY KEY(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

CREATE TABLE gestion_equipo_designado (
  id int(5) NOT NULL,
  noconformidad_id int(6) NOT NULL COMMENT 'número de no conformidad',
  num_ac varchar(10) NOT NULL, -- <---------------------------------------revisar
  cargo_1 varchar(50) NOT NULL,
  cargo_2 varchar(50) NOT NULL,
  encargado_iso varchar(40) NOT NULL,
  fecha_revision date NOT NULL,
  hora varchar(5) NOT NULL,
  correo varchar(40) NOT NULL,
  usuario_id int(1) NOT NULL,
  cargo_area_causante varchar(40) NOT NULL,
  cargo_area_detecta varchar(40) NOT NULL,
  usuario_id2 int(2) NOT NULL,
  vigente int not null DEFAULT 1,
  updated_at datetime NOT NULL,
  created_at datetime NOT NULL,
  deleted_at datetime NOT NULL,
  PRIMARY KEY(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

CREATE TABLE gestion_tipo_estado (
  id int(2) NOT NULL,
  descripcion char(40) COLLATE utf8_spanish_ci NOT NULL,
  vigente int not null DEFAULT 1,
  updated_at datetime NOT NULL,
  created_at datetime NOT NULL,
  deleted_at datetime NOT NULL,
  PRIMARY KEY(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

CREATE TABLE gestion_noconformidad (
  id int(5) NOT NULL,
  numero_registro varchar(10) COLLATE utf8_spanish_ci DEFAULT NULL,
  fecha_deteccion date DEFAULT NULL,
  cargo_detecta varchar(40) COLLATE utf8_spanish_ci DEFAULT NULL,
  area_detecta varchar(40) COLLATE utf8_spanish_ci DEFAULT NULL,
  tipo_hallazgo varchar(40) COLLATE utf8_spanish_ci DEFAULT NULL,
  origen_hallazgo varchar(40) COLLATE utf8_spanish_ci DEFAULT NULL,
  proceso_afectado varchar(40) COLLATE utf8_spanish_ci DEFAULT NULL,
  detalle_hallazgo varchar(700) COLLATE utf8_spanish_ci DEFAULT NULL,
  descripcion_hallazgo varchar(500) COLLATE utf8_spanish_ci DEFAULT NULL,
  archivo_1 varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  archivo_2 varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  usuario_id varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  vigente int not null DEFAULT 1,
  updated_at datetime NOT NULL,
  created_at datetime NOT NULL,
  deleted_at datetime NOT NULL,
  PRIMARY KEY(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

CREATE TABLE gestion_tipo_perfil (
  id int(2) NOT NULL,
  descripcion varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  vigente int not null DEFAULT 1,
  updated_at datetime NOT NULL,
  created_at datetime NOT NULL,
  deleted_at datetime NOT NULL,
  PRIMARY KEY(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

CREATE TABLE gestion_requisito (
  id int(6) NOT NULL COMMENT 'identificador de registro requisito no cumplido',
  noconformidad_id varchar(10) COLLATE utf8_spanish_ci DEFAULT NULL COMMENT 'identificador registro no conformidad',
  fecha datetime DEFAULT NULL COMMENT 'fecha seleccionada por el usuario',
  tipo_requisito varchar(60) CHARACTER SET utf8 DEFAULT NULL COMMENT 'código tipo de requisito',
  detalle varchar(700) CHARACTER SET utf8 DEFAULT NULL COMMENT 'descripción del requisito que no se cumplio',
  fecha_registro datetime DEFAULT NULL COMMENT 'fecha del sistema',
  usuario_auditor varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL COMMENT 'nombre usuario auditor',
  vigente int not null DEFAULT 1,
  updated_at datetime NOT NULL,
  created_at datetime NOT NULL,
  deleted_at datetime NOT NULL,
  PRIMARY KEY(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

CREATE TABLE gestion_verifica (
  id int(5) NOT NULL,
  noconformidad_id varchar(10) COLLATE utf8_spanish_ci DEFAULT NULL COMMENT 'identificador registro no conformidad',
  numero_registro varchar(14) COLLATE utf8_spanish_ci NOT NULL,
  responsable varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  estado int(1) NOT NULL,
  detalle_seguimiento varchar(300) COLLATE utf8_spanish_ci DEFAULT NULL,
  fecha_verifica date NOT NULL,
  usuario_id int(2) NOT NULL,
  vigente int not null DEFAULT 1,
  updated_at datetime NOT NULL,
  created_at datetime NOT NULL,
  deleted_at datetime NOT NULL,
  PRIMARY KEY(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

CREATE TABLE gestion_tipo_area (
  id int(6) NOT NULL ,
  vigente int not null DEFAULT 1,
  updated_at datetime NOT NULL,
  created_at datetime NOT NULL,
  deleted_at datetime NOT NULL,
  PRIMARY KEY(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

CREATE TABLE gestion_tipo_responsable (
  id int(6) NOT NULL ,
  vigente int not null DEFAULT 1,
  updated_at datetime NOT NULL,
  created_at datetime NOT NULL,
  deleted_at datetime NOT NULL,
  PRIMARY KEY(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

CREATE TABLE gestion_tipo_cargo (
  id int(6) NOT NULL ,
descripcion varchar(80) not null,  
  vigente int not null DEFAULT 1,
  updated_at datetime NOT NULL,
  created_at datetime NOT NULL,
  deleted_at datetime NOT NULL,
  PRIMARY KEY(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

CREATE TABLE gestion_tipo_director (
  id int(6) NOT NULL ,
  descripcion varchar(80) not null,
  vigente int not null DEFAULT 1,
  updated_at datetime NOT NULL,
  created_at datetime NOT NULL,
  deleted_at datetime NOT NULL,
  PRIMARY KEY(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

CREATE TABLE gestion_encargado_iso (
  id int(6) NOT NULL ,
  descripcion varchar(80) not null,
  vigente int not null DEFAULT 1,
  updated_at datetime NOT NULL,
  created_at datetime NOT NULL,
  deleted_at datetime NOT NULL,
  PRIMARY KEY(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

CREATE TABLE gestion_tipo_origen (
  id int(6) NOT NULL ,
  descripcion varchar(80) not null,
  vigente int not null DEFAULT 1,
  updated_at datetime NOT NULL,
  created_at datetime NOT NULL,
  deleted_at datetime NOT NULL,
  PRIMARY KEY(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

CREATE TABLE gestion_tipo_proceso (
  id int(6) NOT NULL ,
  descripcion varchar(80) not null,
  vigente int not null DEFAULT 1,
  updated_at datetime NOT NULL,
  created_at datetime NOT NULL,
  deleted_at datetime NOT NULL,
  PRIMARY KEY(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

CREATE TABLE gestion_tipo_rol (
  id int(6) NOT NULL ,
  descripcion varchar(80) not null,
  vigente int not null DEFAULT 1,
  updated_at datetime NOT NULL,
  created_at datetime NOT NULL,
  deleted_at datetime NOT NULL,
  PRIMARY KEY(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

CREATE TABLE gestiom_tipo_requisito (
  id int(6) NOT NULL ,
  descripcion varchar(80) not null,
  vigente int not null DEFAULT 1,
  updated_at datetime NOT NULL,
  created_at datetime NOT NULL,
  deleted_at datetime NOT NULL,
  PRIMARY KEY(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

CREATE TABLE gestion_tipo_accion (
  id int(6) NOT NULL ,
  descripcion varchar(80) not null,
  vigente int not null DEFAULT 1,
  updated_at datetime NOT NULL,
  created_at datetime NOT NULL,
  deleted_at datetime NOT NULL,
  PRIMARY KEY(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

CREATE TABLE gestion_tipo_hallazgo (
  id int(6) NOT NULL ,
  descripcion varchar(80) not null,
  vigente int not null DEFAULT 1,
  updated_at datetime NOT NULL,
  created_at datetime NOT NULL,
  deleted_at datetime NOT NULL,
  PRIMARY KEY(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;


/*
CMD para crear carpetas

md accion_inmediata;
md analisis_causa;
md eficacia;
md equipo_designado;
md noconformidad;
md accion_inmediata;
md requisito;
md verifica;
md encargado_iso;
md tipo_estado;
md tipo_perfil;
md tipo_cargo;
md tipo_area;
md tipo_responsable;
md tipo_cargo;
md tipo_director;
md tipo_estado;
md tipo_origen;
md tipo_proceso;
md tipo_responsable;
md tipo_rol;
md tipo_requisito;
md tipo_accion;
md tipo_hallazgo;

-->



Por ejemplo, para copiar todos los archivos de la carpeta 
Documentos en el Escritorio, ejecuta el comando 

C:\Users\Equipo\Documentos\*.* C:\Users\Equipo\Escritorio. 

copy C:\Users\PC_BTSYS_01\Desktop\test\t1\f1.txt C:\Users\PC_BTSYS_01\Desktop\test\t2

copy c:\templateCrud\index.blade.php c:\ruta\carpeta-reemplazar

copy templateCrud\*.* c:\ruta\carpeta-reemplazar

--> c:\templateCrud\index.blade.php
--> c:\templateCrud\create.blade.php
--> c:\templateCrud\edit.blade.php
--> c:\templateCrud\show.blade.php
--> c:\templateCrud\update.blade.php
--> c:\templateCrud\delete.blade.php

copy c:\templateCrud\*.* c:\ruta\accion_inmediata;
copy c:\templateCrud\*.* c:\ruta\analisis_causa;
copy c:\templateCrud\*.* c:\ruta\eficacia;
copy c:\templateCrud\*.* c:\ruta\equipo_designado;
copy c:\templateCrud\*.* c:\ruta\noconformidad;
copy c:\templateCrud\*.* c:\ruta\accion_inmediata;
copy c:\templateCrud\*.* c:\ruta\requisito;
copy c:\templateCrud\*.* c:\ruta\verifica;
copy c:\templateCrud\*.* c:\ruta\encargado_iso;
copy c:\templateCrud\*.* c:\ruta\tipo_estado;
copy c:\templateCrud\*.* c:\ruta\tipo_perfil;
copy c:\templateCrud\*.* c:\ruta\tipo_cargo;
copy c:\templateCrud\*.* c:\ruta\tipo_area;
copy c:\templateCrud\*.* c:\ruta\tipo_responsable;
copy c:\templateCrud\*.* c:\ruta\tipo_cargo;
copy c:\templateCrud\*.* c:\ruta\tipo_director;
copy c:\templateCrud\*.* c:\ruta\tipo_estado;
copy c:\templateCrud\*.* c:\ruta\tipo_origen;
copy c:\templateCrud\*.* c:\ruta\tipo_proceso;
copy c:\templateCrud\*.* c:\ruta\tipo_responsable;
copy c:\templateCrud\*.* c:\ruta\tipo_rol;
copy c:\templateCrud\*.* c:\ruta\tipo_requisito;
copy c:\templateCrud\*.* c:\ruta\tipo_accion;
copy c:\templateCrud\*.* c:\ruta\tipo_hallazgo;

*/
