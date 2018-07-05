-- 1
SELECT * FROM gestion_noconformidad WHERE num_reg = 'NC225-2018'

-- 2 ACCION INMEDIATA
SELECT 
LENGTH(CASE WHEN fec_imp = '0000-00-00' THEN '' ELSE fec_imp END) +
LENGTH(des_ai_imp) AS valida_campos_accion_inmediata
FROM gestion_noconformidad
WHERE num_reg = 'NC225-2018'

-- 3 REQUISITO NO CUMPLIDO
SELECT * FROM santamar_gestion.gestion_requisito WHERE id_noconformidad = 'NC225-2018'

-- 4  EQUIPO DESIGNADO
SELECT * FROM gestion_equipo_designado WHERE num_ac = 'NC225-2018'

-- 5 ANALISIS DE CAUSA RAIZ
SELECT * FROM gestion_analisis_causa WHERE numero_registro = 'NC225-2018'

-- 6 VERIFICAR LA IMPLEMENTACION 
SELECT * FROM  gestion_verifica WHERE numero_registro = 'NC225-2018'

-- 7 COMPROBAR EFICACIA
SELECT * FROM gestion_eficacia WHERE numero_registro = 'NC225-2018'

-- NOTA
-- Falta revisar el tercer check del listado.
