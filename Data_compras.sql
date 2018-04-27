
TRUNCATE TABLE compra_tipo_solicitud;
INSERT INTO compra_tipo_solicitud(descripcion) VALUES
('BOLETA HONORARIOS Y DE SERVICIOS'),
('FACTURA'),
('ORDEN DE COMPRA');

TRUNCATE TABLE compra_tipo_plazo;
INSERT INTO compra_tipo_plazo (descripcion) VALUES
('7 DIAS'),
('5 DIAS'),
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

TRUNCATE TABLE compra_tipo_moneda;
INSERT INTO compra_tipo_moneda (descripcion) VALUES
('PESO'),
('EURO'),
('DOLAR'),
('UF');

TRUNCATE TABLE compra_tipo_medida;
INSERT INTO compra_tipo_medida(descripcion) VALUES
('Bandejas'),
('Cajas'),
('Centímetros'),
('Estuches'),
('Gramos'),
('Kilo'),
('Litro'),
('Metros'),
('Rollos'),
('Toneladas'),
('Unidad');

TRUNCATE TABLE compra_tipo_forma_pago;
INSERT INTO compra_tipo_forma_pago(descripcion) VALUES
('CHEQUE'),
('EFECTIVO'),
('REEMBOLSO A TERCEROS'),
('TARJETA DE CREDITO EMPRESA'),
('TRANSFERENCIA A CTA. CTE. PROVEEDOR'),
('VALE VISTA');

TRUNCATE TABLE compra_tipo_solicitud;
INSERT INTO compra_tipo_solicitud (descripcion) VALUES 
('URGENTE'),
('URGENTE(48_HORAS)'),
('EMPAQUE_HUEVO(3_SEMANAS)'),
('NORMAL');

TRUNCATE TABLE compra_tipo_documento;
INSERT INTO compra_tipo_documento(descripcion) VALUES
('ORDEN DE COMPRA'),
('FACTURA'),
('BOLETA HONORARIOS Y DE SERVICIOS');

TRUNCATE TABLE compra_tipo_cuenta;
INSERT INTO compra_tipo_cuenta(descripcion) VALUES
('Cuenta corriente'),
('Cuenta vista'),
('Chequera electrónica'),
('Cuenta RUT'),
('Cuenta de Ahorro');

TRUNCATE TABLE compra_tipo_condicion;
INSERT INTO compra_tipo_condicion(descripcion) VALUES
('Contado'),
('Contado y Crédito'),
('Anticipado'),
('Anticipado y contado'),
('Anticipado y crédito'),
('Crédito a'),
('Cheque a');

TRUNCATE TABLE compra_tipo_compra;
INSERT INTO compra_tipo_compra(descripcion) VALUES
('ACTIVO_FIJO'),
('ALIMENTO_GALLINAS'),
('ANALISIS'),
('ARRIENDOS_LEASING'),
('ATENCIONES_AL_PERSONAL'),
('BANCARIOS_FINANCIEROS'),
('CAPACITACION'),
('COMUNICACIONES'),
('FERTILIZANTES_QUIMICOS_INSECTICIDAS_PLAGAS'),
('GALLINAS_POLLITAS'),
('GASTOS_OFICINA'),
('MANTENCION_REPARACIONES'),
('MATERIAL_EMPAQUE'),
('NOTARIALES_REGISTROS'),
('OBRA EN CURSO'),
('PATENTES_CONTRIBUCIONES'),
('PUBLICIDAD'),
('SERVICIOS_BASICOS'),
('SERVICIOS_PROFESIONALES_TEMPORALES'),
('SUPERMERCADOS');

TRUNCATE TABLE compra_tipo_cargo;
INSERT INTO compra_tipo_cargo(descripcion) 
VALUES ('JEFATURA');

TRUNCATE TABLE compra_tipo_banco;
INSERT INTO compra_tipo_banco(descripcion) 
VALUES ('BCI-TBANC-NOVA'),
('BANCO BICE'),
('BANCO CONSORCIO'),
('BANCO CORP BANCA'),
('BANCO DE CHILE-EDWARDS'),
('BANCO DEL DESARROLLO'),
('BANCO ESTADO'),
('BANCO FALABELLA'),
('BANCO INTERNACIONAL'),
('BANCO ITAU'),
('BANCO PARIS'),
('BANCO RIPLEY'),
('BANCO SANTANDER-SANTIAGO'),
('BANCO SECURITY'),
('BBVA'),
('HSBC BANK (CHILE)'),
('SCOTIABANK'),
('RABOBANK'),
('BANCO EXTRANJERO');

TRUNCATE TABLE compra_tipo_area;
INSERT INTO compra_tipo_area(descripcion) VALUES
('AVICOLA'),
('ANIMALES'),
('ADMINISTRACION'),
('BODEGA_VENTAS'),
('BODEGAS_ADMINISTRACION'),
('CALIDAD_SEGURIDAD'),
('EMPAQUE'),
('ADMINISTRACION');





