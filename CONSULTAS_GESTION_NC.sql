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

-- cambiar consulta

SELECT
	A.idnc AS id_noconformidad,
	A.num_reg AS numero_registro,
	DATE_FORMAT( A.fec_det, '%d-%m-%Y' ) AS fecha_deteccion,
	DATE_FORMAT( A.fec_imp, '%d-%m-%Y' ) AS fecha_implementacion,
	A.tip_hall AS tipo_hallazgo,
	A.pcs_afe AS proceso_afectado,	
	A.url_imf_adj AS archivo_adjunto_1,
	A.url_imf_adj2 AS archivo_adjunto_2,
	A.estado AS estado,
	A.usuario AS usuario,
	(CASE WHEN des_ai_imp = '' OR fec_imp = '0000-00-00' THEN '0' ELSE '1' END ) AS accion_inmediata,
	IF( B.numero_registro IS NULL, '0', '1' ) AS analisis_causa,
	IF( C.numero_registro IS NULL, '0', '1' ) AS verifica
FROM gestion_noconformidad AS A
LEFT JOIN gestion_analisis_causa AS B 
ON A.num_reg = B.numero_registro
LEFT JOIN gestion_verifica AS C 
ON A.num_reg = C.numero_registro
WHERE A.estado IN( 1, 2, 4 )
GROUP BY A.idnc, A.num_reg, fecha_deteccion, fecha_implementacion, A.tip_hall,
A.pcs_afe, A.url_imf_adj, A.url_imf_adj2, A.estado, A.usuario, accion_inmediata,
analisis_causa, verifica
ORDER BY num_reg DESC
