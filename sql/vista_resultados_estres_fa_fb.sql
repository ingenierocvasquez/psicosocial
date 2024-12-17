 DROP VIEW vista_resultados_estres_fa_fb;

 CREATE VIEW vista_resultados_estres_fa_fb AS
-- Resultados Estres
-- Subconsulta para SÌntomas fisiolÛgicos
WITH a AS (
    SELECT 
        fec_aplica, 
        nro_documento,
        ROUND(AVG(valor) * 4, 1) AS a
    FROM vista_unpivot_tbl_estres_fa_fb
    WHERE pregunta IN (
        'pregunta_1', 'pregunta_2', 'pregunta_3', 'pregunta_4', 'pregunta_5', 'pregunta_6', 'pregunta_7', 'pregunta_8'
    )
    GROUP BY fec_aplica, nro_documento
),

-- SÌntomas de comportamiento social
b AS (
    SELECT 
        fec_aplica, 
        nro_documento,
        ROUND(AVG(valor) * 3, 1) AS b
    FROM vista_unpivot_tbl_estres_fa_fb
    WHERE pregunta IN (
        'pregunta_9', 'pregunta_10', 'pregunta_11', 'pregunta_12'
    )
    GROUP BY fec_aplica, nro_documento
),

-- Subconsulta para "Comunicacion y relaciones interpersonales"
c AS (
   SELECT 
        fec_aplica, 
        nro_documento,
        ROUND(AVG(valor) * 2, 1) AS c
    FROM vista_unpivot_tbl_estres_fa_fb
    WHERE pregunta IN (
        'pregunta_13', 'pregunta_14', 'pregunta_15', 'pregunta_16', 'pregunta_17', 'pregunta_18', 'pregunta_19', 'pregunta_20', 'pregunta_21', 'pregunta_22'
    )
    GROUP BY fec_aplica, nro_documento
),

-- Subconsulta para "SituaciÛn econÛmica del grupo familiar"
d AS (
    SELECT 
        fec_aplica, 
        nro_documento,
        ROUND(AVG(valor), 1) AS d
    FROM vista_unpivot_tbl_estres_fa_fb
    WHERE pregunta IN (
        'pregunta_23', 'pregunta_24', 'pregunta_25', 'pregunta_26', 'pregunta_27', 'pregunta_28', 'pregunta_29', 'pregunta_30', 'pregunta_31'
    )
    GROUP BY fec_aplica, nro_documento
)

-- Unión final para combinar ambas dimensiones
SELECT
   colaborador.tipo_forma,
	a.fec_aplica,
   a.nro_documento, 
	 a,
    b, 
    c,
    d,
    ROUND((a + b + c + d),1) AS 'pt_total_estres_bruto',
    ROUND(((a + b + c + d) / 61.16) * 100, 1) AS 'pt_total_estres_trasnformado',
	    CASE 
        WHEN colaborador.tipo_forma = 'Forma A' THEN 
            CASE 
                WHEN ROUND(((a + b + c + d) / 61.16) * 100, 1) <= 7.8 THEN 'Muy bajo'
                WHEN ROUND(((a + b + c + d) / 61.16) * 100, 1) <= 12.6 THEN 'Bajo'
                WHEN ROUND(((a + b + c + d) / 61.16) * 100, 1) <= 17.7 THEN 'Medio'
                WHEN ROUND(((a + b + c + d) / 61.16) * 100, 1) <= 25.0 THEN 'Alto'
                WHEN ROUND(((a + b + c + d) / 61.16) * 100, 1) <= 100.0 THEN 'Muy alto'
                ELSE 'Error Validar Datos'
            END 
        WHEN colaborador.tipo_forma = 'Forma B' THEN 
            CASE 
                WHEN ROUND(((a + b + c + d) / 61.16) * 100, 1) <= 6.5 THEN 'Muy bajo'
                WHEN ROUND(((a + b + c + d) / 61.16) * 100, 1) <= 11.8 THEN 'Bajo'
                WHEN ROUND(((a + b + c + d) / 61.16) * 100, 1) <= 17.0 THEN 'Medio'
                WHEN ROUND(((a + b + c + d) / 61.16) * 100, 1) <= 23.4 THEN 'Alto'
                WHEN ROUND(((a + b + c + d) / 61.16) * 100, 1) <= 100.0 THEN 'Muy alto'
                ELSE 'Error Validar Datos'
            END
        ELSE 'Error Datos Invalidos'
    END AS nr_total_estres
	
FROM a
LEFT JOIN b ON a.fec_aplica = b.fec_aplica AND a.nro_documento = b.nro_documento
LEFT JOIN c ON a.fec_aplica = c.fec_aplica AND a.nro_documento = c.nro_documento
LEFT JOIN d ON a.fec_aplica = d.fec_aplica AND a.nro_documento = d.nro_documento
LEFT JOIN colaborador ON a.nro_documento = colaborador.id_colaborador
;
