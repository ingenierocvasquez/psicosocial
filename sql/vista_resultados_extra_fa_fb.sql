DROP VIEW vista_resultados_extra_fa_fb;

CREATE VIEW vista_resultados_extra_fa_fb AS
-- Resultados Extralaboral
-- Subconsulta para dim1: Tiempo fuera del trabajo
WITH dim1 AS (
    SELECT 
        fec_aplica, 
        nro_documento,
		  ROUND(SUM(valor)) AS sum_dim1, 
        ROUND((SUM(valor) / 16) * 100, 1) AS puntaje_transformado,
        CASE 
            WHEN ROUND((SUM(valor) / 16) * 100, 1) <= 6.3 THEN 'Sin Riesgo o Riesgo Despreciable'
            WHEN ROUND((SUM(valor) / 16) * 100, 1) <= 25.0 THEN 'Riesgo Bajo'
            WHEN ROUND((SUM(valor) / 16) * 100, 1) <= 37.5 THEN 'Riesgo Medio'
            WHEN ROUND((SUM(valor) / 16) * 100, 1) <= 50.0 THEN 'Riesgo Alto'
            WHEN ROUND((SUM(valor) / 16) * 100, 1) <= 100.0 THEN 'Riesgo muy alto'
            ELSE 'Error Validar Datos'
        END AS nivel_riesgo
    FROM vista_unpivot_tbl_extra_fa_fb
    WHERE pregunta IN (
        'pregunta_14', 'pregunta_15', 'pregunta_16', 'pregunta_17'
    )
    GROUP BY fec_aplica, nro_documento
),

-- Subconsulta para dim2: Relaciones familiares
dim2 AS (
    SELECT 
        fec_aplica, 
        nro_documento,
		  ROUND(SUM(valor)) AS sum_dim2, 
        ROUND((SUM(valor) / 12) * 100, 1) AS puntaje_transformado,
        CASE 
            WHEN ROUND((SUM(valor) / 12) * 100, 1) <= 8.3 THEN 'Sin Riesgo o Riesgo Despreciable'
            WHEN ROUND((SUM(valor) / 12) * 100, 1) <= 25.0 THEN 'Riesgo Bajo'
            WHEN ROUND((SUM(valor) / 12) * 100, 1) <= 33.3 THEN 'Riesgo Medio'
            WHEN ROUND((SUM(valor) / 12) * 100, 1) <= 50.0 THEN 'Riesgo Alto'
            WHEN ROUND((SUM(valor) / 12) * 100, 1) <= 100.0 THEN 'Riesgo muy alto'
            ELSE 'Error Validar Datos'
        END AS nivel_riesgo
    FROM vista_unpivot_tbl_extra_fa_fb
    WHERE pregunta IN (
        'pregunta_22', 'pregunta_25', 'pregunta_27'
    )
    GROUP BY fec_aplica, nro_documento
),

-- Subconsulta para "Comunicacion y relaciones interpersonales"
dim3 AS (
    SELECT 
        fec_aplica, 
        nro_documento,
        ROUND(SUM(valor)) AS sum_dim3,
        ROUND((SUM(valor) / 20) * 100, 1) AS puntaje_transformado,
        CASE 
            WHEN ROUND((SUM(valor) / 20) * 100, 1) <= 0.9 THEN 'Sin Riesgo o Riesgo Despreciable'
            WHEN ROUND((SUM(valor) / 20) * 100, 1) <= 10.0 THEN 'Riesgo Bajo'
            WHEN ROUND((SUM(valor) / 20) * 100, 1) <= 20.0 THEN 'Riesgo Medio'
            WHEN ROUND((SUM(valor) / 20) * 100, 1) <= 30.0 THEN 'Riesgo Alto'
            WHEN ROUND((SUM(valor) / 20) * 100, 1) <= 100.0 THEN 'Riesgo muy alto'
            ELSE 'Error Validar Datos'
        END AS nivel_riesgo
    FROM vista_unpivot_tbl_extra_fa_fb
    WHERE pregunta IN ('pregunta_18', 'pregunta_19', 'pregunta_20', 'pregunta_21', 'pregunta_23')
    GROUP BY fec_aplica, nro_documento
),

-- Subconsulta para "SituaciÛn econÛmica del grupo familiar"
dim4 AS (
    SELECT 
        fec_aplica, 
        nro_documento,
        ROUND(SUM(valor)) AS sum_dim4,
        ROUND((SUM(valor) / 12) * 100, 1) AS puntaje_transformado,
        CASE 
            WHEN ROUND((SUM(valor) / 12) * 100, 1) <= 8.3 THEN 'Sin Riesgo o Riesgo Despreciable'
            WHEN ROUND((SUM(valor) / 12) * 100, 1) <= 25.0 THEN 'Riesgo Bajo'
            WHEN ROUND((SUM(valor) / 12) * 100, 1) <= 33.3 THEN 'Riesgo Medio'
            WHEN ROUND((SUM(valor) / 12) * 100, 1) <= 50.0 THEN 'Riesgo Alto'
            WHEN ROUND((SUM(valor) / 12) * 100, 1) <= 100.0 THEN 'Riesgo muy alto'
            ELSE 'Error Validar Datos'
        END AS nivel_riesgo
    FROM vista_unpivot_tbl_extra_fa_fb
    WHERE pregunta IN ('pregunta_29', 'pregunta_30', 'pregunta_31')
    GROUP BY fec_aplica, nro_documento
),

-- Subconsulta para "CaracterÌsticas de la vivienda y de su entorno"
dim5 AS (
    SELECT 
        fec_aplica, 
        nro_documento,
        ROUND(SUM(valor)) AS sum_dim5,
        ROUND((SUM(valor) / 36) * 100, 1) AS puntaje_transformado,
        CASE 
            WHEN ROUND((SUM(valor) / 36) * 100, 1) <= 5.6 THEN 'Sin Riesgo o Riesgo Despreciable'
            WHEN ROUND((SUM(valor) / 36) * 100, 1) <= 11.1 THEN 'Riesgo Bajo'
            WHEN ROUND((SUM(valor) / 36) * 100, 1) <= 13.9 THEN 'Riesgo Medio'
            WHEN ROUND((SUM(valor) / 36) * 100, 1) <= 22.2 THEN 'Riesgo Alto'
            WHEN ROUND((SUM(valor) / 36) * 100, 1) <= 100.0 THEN 'Riesgo muy alto'
            ELSE 'Error Validar Datos'
        END AS nivel_riesgo
    FROM vista_unpivot_tbl_extra_fa_fb
    WHERE pregunta IN ('pregunta_5', 'pregunta_6', 'pregunta_7', 'pregunta_8', 'pregunta_9', 'pregunta_10', 'pregunta_11', 'pregunta_12', 'pregunta_13')
    GROUP BY fec_aplica, nro_documento
),


-- Subconsulta para "Influencia del entorno extralaboral sobre el trabajo"
dim6 AS (
    SELECT 
        fec_aplica, 
        nro_documento,
        ROUND(SUM(valor)) AS sum_dim6,
        ROUND((SUM(valor) / 12) * 100, 1) AS puntaje_transformado,
        CASE 
            WHEN ROUND((SUM(valor) / 12) * 100, 1) <= 8.3 THEN 'Sin Riesgo o Riesgo Despreciable'
            WHEN ROUND((SUM(valor) / 12) * 100, 1) <= 16.7 THEN 'Riesgo Bajo'
            WHEN ROUND((SUM(valor) / 12) * 100, 1) <= 25.0 THEN 'Riesgo Medio'
            WHEN ROUND((SUM(valor) / 12) * 100, 1) <= 41.7 THEN 'Riesgo Alto'
            WHEN ROUND((SUM(valor) / 12) * 100, 1) <= 100.0 THEN 'Riesgo muy alto'
            ELSE 'Error Validar Datos'
        END AS nivel_riesgo
    FROM vista_unpivot_tbl_extra_fa_fb
    WHERE pregunta IN ('pregunta_24', 'pregunta_26', 'pregunta_28')
    GROUP BY fec_aplica, nro_documento
),

-- Subconsulta para "Desplazamiento vivienda - trabajo - vivienda"
dim7 AS (
    SELECT 
        fec_aplica, 
        nro_documento,
        ROUND(SUM(valor)) AS sum_dim7,
        ROUND((SUM(valor) / 16) * 100, 1) AS puntaje_transformado,
        CASE 
            WHEN ROUND((SUM(valor) / 16) * 100, 1) <= 0.9 THEN 'Sin Riesgo o Riesgo Despreciable'
            WHEN ROUND((SUM(valor) / 16) * 100, 1) <= 12.5 THEN 'Riesgo Bajo'
            WHEN ROUND((SUM(valor) / 16) * 100, 1) <= 25.0 THEN 'Riesgo Medio'
            WHEN ROUND((SUM(valor) / 16) * 100, 1) <= 43.8 THEN 'Riesgo Alto'
            WHEN ROUND((SUM(valor) / 16) * 100, 1) <= 100.0 THEN 'Riesgo muy alto'
            ELSE 'Error Validar Datos'
        END AS nivel_riesgo
    FROM vista_unpivot_tbl_extra_fa_fb
    WHERE pregunta IN ('pregunta_1', 'pregunta_2', 'pregunta_3', 'pregunta_4')
    GROUP BY fec_aplica, nro_documento
)


-- Unión final para combinar ambas dimensiones
SELECT 
    dim1.fec_aplica,
    dim1.nro_documento, 
    dim1.puntaje_transformado AS 'pt_dim1',
    dim1.nivel_riesgo AS 'nr_dim1',
    dim2.puntaje_transformado AS 'pt_dim2',
    dim2.nivel_riesgo AS 'nr_dim2',
    dim3.puntaje_transformado AS 'pt_dim3',
    dim3.nivel_riesgo AS 'nr_dim3',
    dim4.puntaje_transformado AS 'pt_dim4',
    dim4.nivel_riesgo AS 'nr_dim4',
    dim5.puntaje_transformado AS 'pt_dim5',
    dim5.nivel_riesgo AS 'nr_dim5',
    dim6.puntaje_transformado AS 'pt_dim6',
    dim6.nivel_riesgo AS 'nr_dim6',
    dim7.puntaje_transformado AS 'pt_dim7',
    dim7.nivel_riesgo AS 'nr_dim7',
   ROUND(((dim1.sum_dim1 + dim2.sum_dim2 + dim3.sum_dim3 + dim4.sum_dim4 + dim5.sum_dim5 + dim6.sum_dim6 + dim7.sum_dim7) / 124) * 100, 1) AS 'pt_total_extra',
	 CASE 
            WHEN ROUND(((dim1.sum_dim1 + dim2.sum_dim2 + dim3.sum_dim3 + dim4.sum_dim4 + dim5.sum_dim5 + dim6.sum_dim6 + dim7.sum_dim7) / 124) * 100, 1) <= 11.3 THEN 'Sin Riesgo o Riesgo Despreciable'
            WHEN ROUND(((dim1.sum_dim1 + dim2.sum_dim2 + dim3.sum_dim3 + dim4.sum_dim4 + dim5.sum_dim5 + dim6.sum_dim6 + dim7.sum_dim7) / 124) * 100, 1) <= 16.9 THEN 'Riesgo Bajo'
            WHEN ROUND(((dim1.sum_dim1 + dim2.sum_dim2 + dim3.sum_dim3 + dim4.sum_dim4 + dim5.sum_dim5 + dim6.sum_dim6 + dim7.sum_dim7) / 124) * 100, 1) <= 22.6 THEN 'Riesgo Medio'
            WHEN ROUND(((dim1.sum_dim1 + dim2.sum_dim2 + dim3.sum_dim3 + dim4.sum_dim4 + dim5.sum_dim5 + dim6.sum_dim6 + dim7.sum_dim7) / 124) * 100, 1) <= 29.0 THEN 'Riesgo Alto'
            WHEN ROUND(((dim1.sum_dim1 + dim2.sum_dim2 + dim3.sum_dim3 + dim4.sum_dim4 + dim5.sum_dim5 + dim6.sum_dim6 + dim7.sum_dim7) / 124) * 100, 1) <= 100.0 THEN 'Riesgo muy alto'
            ELSE 'Error Validar Datos'
        END AS 'nr_total_extra'
	
FROM dim1
LEFT JOIN dim2 ON dim1.fec_aplica = dim2.fec_aplica AND dim1.nro_documento = dim2.nro_documento
LEFT JOIN dim3 ON dim1.fec_aplica = dim3.fec_aplica AND dim1.nro_documento = dim3.nro_documento
LEFT JOIN dim4 ON dim1.fec_aplica = dim4.fec_aplica AND dim1.nro_documento = dim4.nro_documento
LEFT JOIN dim5 ON dim1.fec_aplica = dim5.fec_aplica AND dim1.nro_documento = dim5.nro_documento
LEFT JOIN dim6 ON dim1.fec_aplica = dim6.fec_aplica AND dim1.nro_documento = dim6.nro_documento
LEFT JOIN dim7 ON dim1.fec_aplica = dim7.fec_aplica AND dim1.nro_documento = dim7.nro_documento
;
