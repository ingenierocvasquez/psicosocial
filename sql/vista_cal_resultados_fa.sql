DROP VIEW vista_resultados_fa;

CREATE VIEW vista_resultados_fa AS
-- Dominio 1
-- Subconsulta para dim1: Características del liderazgo
WITH dim1 AS (
    SELECT 
        fec_aplica, 
        nro_documento,
		  ROUND(SUM(valor)) AS sum_dim1, 
        ROUND((SUM(valor) / 52) * 100, 1) AS puntaje_transformado,
        CASE 
            WHEN ROUND((SUM(valor) / 52) * 100, 1) <= 3.8 THEN 'Sin Riesgo o Riesgo Despreciable'
            WHEN ROUND((SUM(valor) / 52) * 100, 1) <= 15.4 THEN 'Riesgo Bajo'
            WHEN ROUND((SUM(valor) / 52) * 100, 1) <= 30.8 THEN 'Riesgo Medio'
            WHEN ROUND((SUM(valor) / 52) * 100, 1) <= 46.2 THEN 'Riesgo Alto'
            WHEN ROUND((SUM(valor) / 52) * 100, 1) <= 100.0 THEN 'Riesgo muy alto'
            ELSE 'Error Validar Datos'
        END AS nivel_riesgo
    FROM vista_unpivot_tbl_fa
    WHERE pregunta IN (
        'pregunta_63', 'pregunta_64', 'pregunta_65', 'pregunta_66', 
        'pregunta_67', 'pregunta_68', 'pregunta_69', 'pregunta_70', 
        'pregunta_71', 'pregunta_72', 'pregunta_73', 'pregunta_74', 'pregunta_75'
    )
    GROUP BY fec_aplica, nro_documento
),

-- Subconsulta para dim2: Relaciones sociales en el trabajo
dim2 AS (
    SELECT 
        fec_aplica, 
        nro_documento,
		  ROUND(SUM(valor)) AS sum_dim2, 
        ROUND((SUM(valor) / 56) * 100, 1) AS puntaje_transformado,
        CASE 
            WHEN ROUND((SUM(valor) / 56) * 100, 1) <= 5.4 THEN 'Sin Riesgo o Riesgo Despreciable'
            WHEN ROUND((SUM(valor) / 56) * 100, 1) <= 16.1 THEN 'Riesgo Bajo'
            WHEN ROUND((SUM(valor) / 56) * 100, 1) <= 25.0 THEN 'Riesgo Medio'
            WHEN ROUND((SUM(valor) / 56) * 100, 1) <= 37.5 THEN 'Riesgo Alto'
            WHEN ROUND((SUM(valor) / 56) * 100, 1) <= 100.0 THEN 'Riesgo muy alto'
            ELSE 'Error Validar Datos'
        END AS nivel_riesgo
    FROM vista_unpivot_tbl_fa
    WHERE pregunta IN (
        'pregunta_76', 'pregunta_77', 'pregunta_78', 'pregunta_79', 
        'pregunta_80', 'pregunta_81', 'pregunta_82', 'pregunta_83', 
        'pregunta_84', 'pregunta_85', 'pregunta_86', 'pregunta_87', 
        'pregunta_88', 'pregunta_89'
    )
    GROUP BY fec_aplica, nro_documento
),

-- Subconsulta para "Retroalimentación del desempeño"
dim3 AS (
    SELECT 
        fec_aplica, 
        nro_documento,
        ROUND(SUM(valor)) AS sum_dim3,
        ROUND((SUM(valor) / 20) * 100, 1) AS puntaje_transformado,
        CASE 
            WHEN ROUND((SUM(valor) / 20) * 100, 1) <= 10.0 THEN 'Sin Riesgo o Riesgo Despreciable'
            WHEN ROUND((SUM(valor) / 20) * 100, 1) <= 25.0 THEN 'Riesgo Bajo'
            WHEN ROUND((SUM(valor) / 20) * 100, 1) <= 40.0 THEN 'Riesgo Medio'
            WHEN ROUND((SUM(valor) / 20) * 100, 1) <= 55.0 THEN 'Riesgo Alto'
            WHEN ROUND((SUM(valor) / 20) * 100, 1) <= 100.0 THEN 'Riesgo muy alto'
            ELSE 'Error Validar Datos'
        END AS nivel_riesgo
    FROM vista_unpivot_tbl_fa
    WHERE pregunta IN ('pregunta_90', 'pregunta_91', 'pregunta_92', 'pregunta_93', 'pregunta_94')
    GROUP BY fec_aplica, nro_documento
),

-- Subconsulta para "Relación con los colaboradores"
dim4 AS (
    SELECT 
        fec_aplica, 
        nro_documento,
        ROUND(SUM(valor)) AS sum_dim4,
        ROUND((SUM(valor) / 36) * 100, 1) AS puntaje_transformado,
        CASE 
            WHEN ROUND((SUM(valor) / 36) * 100, 1) <= 13.9 THEN 'Sin Riesgo o Riesgo Despreciable'
            WHEN ROUND((SUM(valor) / 36) * 100, 1) <= 25.0 THEN 'Riesgo Bajo'
            WHEN ROUND((SUM(valor) / 36) * 100, 1) <= 33.3 THEN 'Riesgo Medio'
            WHEN ROUND((SUM(valor) / 36) * 100, 1) <= 47.2 THEN 'Riesgo Alto'
            WHEN ROUND((SUM(valor) / 36) * 100, 1) <= 100.0 THEN 'Riesgo muy alto'
            ELSE 'Error Validar Datos'
        END AS nivel_riesgo
    FROM vista_unpivot_tbl_fa
    WHERE pregunta IN ('pregunta_115', 'pregunta_116', 'pregunta_117', 'pregunta_118', 'pregunta_119', 'pregunta_120', 'pregunta_121', 'pregunta_122', 'pregunta_123')
    GROUP BY fec_aplica, nro_documento
),

-- Dominio 2
-- Subconsulta para "Claridad de rol"
dim5 AS (
    SELECT 
        fec_aplica, 
        nro_documento,
        ROUND(SUM(valor)) AS sum_dim5,
        ROUND((SUM(valor) / 28) * 100, 1) AS puntaje_transformado,
        CASE 
            WHEN ROUND((SUM(valor) / 28) * 100, 1) <= 0.9 THEN 'Sin Riesgo o Riesgo Despreciable'
            WHEN ROUND((SUM(valor) / 28) * 100, 1) <= 10.7 THEN 'Riesgo Bajo'
            WHEN ROUND((SUM(valor) / 28) * 100, 1) <= 21.4 THEN 'Riesgo Medio'
            WHEN ROUND((SUM(valor) / 28) * 100, 1) <= 39.3 THEN 'Riesgo Alto'
            WHEN ROUND((SUM(valor) / 28) * 100, 1) <= 100.0 THEN 'Riesgo muy alto'
            ELSE 'Error Validar Datos'
        END AS nivel_riesgo
    FROM vista_unpivot_tbl_fa
    WHERE pregunta IN ('pregunta_53', 'pregunta_54', 'pregunta_55', 'pregunta_56', 'pregunta_57', 'pregunta_58', 'pregunta_59')
    GROUP BY fec_aplica, nro_documento
),


-- Subconsulta para "Capacitacion"
dim6 AS (
    SELECT 
        fec_aplica, 
        nro_documento,
        ROUND(SUM(valor)) AS sum_dim6,
        ROUND((SUM(valor) / 12) * 100, 1) AS puntaje_transformado,
        CASE 
            WHEN ROUND((SUM(valor) / 12) * 100, 1) <= 0.9 THEN 'Sin Riesgo o Riesgo Despreciable'
            WHEN ROUND((SUM(valor) / 12) * 100, 1) <= 16.7 THEN 'Riesgo Bajo'
            WHEN ROUND((SUM(valor) / 12) * 100, 1) <= 33.3 THEN 'Riesgo Medio'
            WHEN ROUND((SUM(valor) / 12) * 100, 1) <= 50.0 THEN 'Riesgo Alto'
            WHEN ROUND((SUM(valor) / 12) * 100, 1) <= 100.0 THEN 'Riesgo muy alto'
            ELSE 'Error Validar Datos'
        END AS nivel_riesgo
    FROM vista_unpivot_tbl_fa
    WHERE pregunta IN ('pregunta_60', 'pregunta_61', 'pregunta_62')
    GROUP BY fec_aplica, nro_documento
),

-- Subconsulta para "ParticipaciÛn y manejo del cambio"
dim7 AS (
    SELECT 
        fec_aplica, 
        nro_documento,
        ROUND(SUM(valor)) AS sum_dim7,
        ROUND((SUM(valor) / 16) * 100, 1) AS puntaje_transformado,
        CASE 
            WHEN ROUND((SUM(valor) / 16) * 100, 1) <= 12.5THEN 'Sin Riesgo o Riesgo Despreciable'
            WHEN ROUND((SUM(valor) / 16) * 100, 1) <= 25.0 THEN 'Riesgo Bajo'
            WHEN ROUND((SUM(valor) / 16) * 100, 1) <= 37.5 THEN 'Riesgo Medio'
            WHEN ROUND((SUM(valor) / 16) * 100, 1) <= 50.0 THEN 'Riesgo Alto'
            WHEN ROUND((SUM(valor) / 16) * 100, 1) <= 100.0 THEN 'Riesgo muy alto'
            ELSE 'Error Validar Datos'
        END AS nivel_riesgo
    FROM vista_unpivot_tbl_fa
    WHERE pregunta IN ('pregunta_48', 'pregunta_49', 'pregunta_50', 'pregunta_51')
    GROUP BY fec_aplica, nro_documento
),

-- Subconsulta para "Oportunidades para el uso y desarrollo de habilidades y conocimientos"
dim8 AS (
    SELECT 
        fec_aplica, 
        nro_documento,
        ROUND(SUM(valor)) AS sum_dim8,
        ROUND((SUM(valor) / 16) * 100, 1) AS puntaje_transformado,
        CASE 
            WHEN ROUND((SUM(valor) / 16) * 100, 1) <= 0.9 THEN 'Sin Riesgo o Riesgo Despreciable'
            WHEN ROUND((SUM(valor) / 16) * 100, 1) <= 6.3 THEN 'Riesgo Bajo'
            WHEN ROUND((SUM(valor) / 16) * 100, 1) <= 18.8 THEN 'Riesgo Medio'
            WHEN ROUND((SUM(valor) / 16) * 100, 1) <= 31.3 THEN 'Riesgo Alto'
            WHEN ROUND((SUM(valor) / 16) * 100, 1) <= 100.0 THEN 'Riesgo muy alto'
            ELSE 'Error Validar Datos'
        END AS nivel_riesgo
    FROM vista_unpivot_tbl_fa
    WHERE pregunta IN ('pregunta_39', 'pregunta_40', 'pregunta_41', 'pregunta_42')
    GROUP BY fec_aplica, nro_documento
),

-- Subconsulta para "Control y autonomía sobre el trabajo"
dim9 AS (
    SELECT 
        fec_aplica, 
        nro_documento,
        ROUND(SUM(valor)) AS sum_dim9,
        ROUND((SUM(valor) / 12) * 100, 1) AS puntaje_transformado,
        CASE 
            WHEN ROUND((SUM(valor) / 12) * 100, 1) <= 8.3 THEN 'Sin Riesgo o Riesgo Despreciable'
            WHEN ROUND((SUM(valor) / 12) * 100, 1) <= 25.0 THEN 'Riesgo Bajo'
            WHEN ROUND((SUM(valor) / 12) * 100, 1) <= 41.7 THEN 'Riesgo Medio'
            WHEN ROUND((SUM(valor) / 12) * 100, 1) <= 58.3 THEN 'Riesgo Alto'
            WHEN ROUND((SUM(valor) / 12) * 100, 1) <= 100.0 THEN 'Riesgo muy alto'
            ELSE 'Error Validar Datos'
        END AS nivel_riesgo
    FROM vista_unpivot_tbl_fa
    WHERE pregunta IN ('pregunta_44', 'pregunta_45', 'pregunta_46')
    GROUP BY fec_aplica, nro_documento
),

-- Dominio 3
-- Subconsulta para "Demandas ambientales y de esfuerzo físico"
dim10 AS (
    SELECT 
        fec_aplica, 
        nro_documento,
        ROUND(SUM(valor)) AS sum_dim10,
        ROUND((SUM(valor) / 48) * 100, 1) AS puntaje_transformado,
        CASE 
            WHEN ROUND((SUM(valor) / 48) * 100, 1) <= 14.6 THEN 'Sin Riesgo o Riesgo Despreciable'
            WHEN ROUND((SUM(valor) / 48) * 100, 1) <= 22.9 THEN 'Riesgo Bajo'
            WHEN ROUND((SUM(valor) / 48) * 100, 1) <= 31.3 THEN 'Riesgo Medio'
            WHEN ROUND((SUM(valor) / 48) * 100, 1) <= 39.6 THEN 'Riesgo Alto'
            WHEN ROUND((SUM(valor) / 48) * 100, 1) <= 100.0 THEN 'Riesgo muy alto'
            ELSE 'Error Validar Datos'
        END AS nivel_riesgo
    FROM vista_unpivot_tbl_fa
    WHERE pregunta IN ('pregunta_1', 'pregunta_2', 'pregunta_3', 'pregunta_4', 'pregunta_5', 'pregunta_6', 'pregunta_7', 'pregunta_8', 'pregunta_9', 'pregunta_10',
            'pregunta_11', 'pregunta_12')
    GROUP BY fec_aplica, nro_documento
),

-- Subconsulta para "Demandas emocionales"
dim11 AS (
    SELECT 
        fec_aplica, 
        nro_documento,
        ROUND(SUM(valor)) AS sum_dim11,
        ROUND((SUM(valor) / 36) * 100, 1) AS puntaje_transformado,
        CASE 
            WHEN ROUND((SUM(valor) / 36) * 100, 1) <= 16.7 THEN 'Sin Riesgo o Riesgo Despreciable'
            WHEN ROUND((SUM(valor) / 36) * 100, 1) <= 25.0 THEN 'Riesgo Bajo'
            WHEN ROUND((SUM(valor) / 36) * 100, 1) <= 33.3 THEN 'Riesgo Medio'
            WHEN ROUND((SUM(valor) / 36) * 100, 1) <= 47.2 THEN 'Riesgo Alto'
            WHEN ROUND((SUM(valor) / 36) * 100, 1) <= 100.0 THEN 'Riesgo muy alto'
            ELSE 'Error Validar Datos'
        END AS nivel_riesgo
    FROM vista_unpivot_tbl_fa
    WHERE pregunta IN ('pregunta_106', 'pregunta_107', 'pregunta_108', 'pregunta_109', 'pregunta_110', 'pregunta_111', 'pregunta_112', 'pregunta_113', 'pregunta_114')
    GROUP BY fec_aplica, nro_documento
),

-- Subconsulta para "Demandas cuantitativas"
dim12 AS (
    SELECT 
        fec_aplica, 
        nro_documento,
        ROUND(SUM(valor)) AS sum_dim12,
        ROUND((SUM(valor) / 24) * 100, 1) AS puntaje_transformado,
        CASE 
            WHEN ROUND((SUM(valor) / 24) * 100, 1) <= 25.0 THEN 'Sin Riesgo o Riesgo Despreciable'
            WHEN ROUND((SUM(valor) / 24) * 100, 1) <= 33.3 THEN 'Riesgo Bajo'
            WHEN ROUND((SUM(valor) / 24) * 100, 1) <= 45.8 THEN 'Riesgo Medio'
            WHEN ROUND((SUM(valor) / 24) * 100, 1) <= 54.2 THEN 'Riesgo Alto'
            WHEN ROUND((SUM(valor) / 24) * 100, 1) <= 100.0 THEN 'Riesgo muy alto'
            ELSE 'Error Validar Datos'
        END AS nivel_riesgo
    FROM vista_unpivot_tbl_fa
    WHERE pregunta IN ('pregunta_13', 'pregunta_14', 'pregunta_15', 'pregunta_32', 'pregunta_43', 'pregunta_47')
    GROUP BY fec_aplica, nro_documento
),

-- Subconsulta para "Influencia del trabajo sobre el entorno extralaboral"
dim13 AS (
    SELECT 
        fec_aplica, 
        nro_documento,
        ROUND(SUM(valor)) AS sum_dim13,
        ROUND((SUM(valor) / 16) * 100, 1) AS puntaje_transformado,
        CASE 
            WHEN ROUND((SUM(valor) / 16) * 100, 1) <= 18.8 THEN 'Sin Riesgo o Riesgo Despreciable'
            WHEN ROUND((SUM(valor) / 16) * 100, 1) <= 31.3 THEN 'Riesgo Bajo'
            WHEN ROUND((SUM(valor) / 16) * 100, 1) <= 43.8 THEN 'Riesgo Medio'
            WHEN ROUND((SUM(valor) / 16) * 100, 1) <= 50.0 THEN 'Riesgo Alto'
            WHEN ROUND((SUM(valor) / 16) * 100, 1) <= 100.0 THEN 'Riesgo muy alto'
            ELSE 'Error Validar Datos'
        END AS nivel_riesgo
    FROM vista_unpivot_tbl_fa
    WHERE pregunta IN ('pregunta_35', 'pregunta_36', 'pregunta_37', 'pregunta_38')
    GROUP BY fec_aplica, nro_documento
),

-- Subconsulta para "Exigencias de responsabilidad del cargo"
dim14 AS (
    SELECT 
        fec_aplica, 
        nro_documento,
        ROUND(SUM(valor)) AS sum_dim14,
        ROUND((SUM(valor) / 24) * 100, 1) AS puntaje_transformado,
        CASE 
            WHEN ROUND((SUM(valor) / 24) * 100, 1) <= 37.5 THEN 'Sin Riesgo o Riesgo Despreciable'
            WHEN ROUND((SUM(valor) / 24) * 100, 1) <= 54.2 THEN 'Riesgo Bajo'
            WHEN ROUND((SUM(valor) / 24) * 100, 1) <= 66.7 THEN 'Riesgo Medio'
            WHEN ROUND((SUM(valor) / 24) * 100, 1) <= 79.2 THEN 'Riesgo Alto'
            WHEN ROUND((SUM(valor) / 24) * 100, 1) <= 100.0 THEN 'Riesgo muy alto'
            ELSE 'Error Validar Datos'
        END AS nivel_riesgo
    FROM vista_unpivot_tbl_fa
    WHERE pregunta IN ('pregunta_19', 'pregunta_22', 'pregunta_23', 'pregunta_24', 'pregunta_25', 'pregunta_26')
    GROUP BY fec_aplica, nro_documento
),

-- Subconsulta para "Demandas de carga mental"
dim15 AS (
    SELECT 
        fec_aplica, 
        nro_documento,
        ROUND(SUM(valor)) AS sum_dim15,
        ROUND((SUM(valor) / 20) * 100, 1) AS puntaje_transformado,
        CASE 
            WHEN ROUND((SUM(valor) / 20) * 100, 1) <= 60.0 THEN 'Sin Riesgo o Riesgo Despreciable'
            WHEN ROUND((SUM(valor) / 20) * 100, 1) <= 70.0 THEN 'Riesgo Bajo'
            WHEN ROUND((SUM(valor) / 20) * 100, 1) <= 80.0 THEN 'Riesgo Medio'
            WHEN ROUND((SUM(valor) / 20) * 100, 1) <= 90.0 THEN 'Riesgo Alto'
            WHEN ROUND((SUM(valor) / 20) * 100, 1) <= 100.0 THEN 'Riesgo muy alto'
            ELSE 'Error Validar Datos'
        END AS nivel_riesgo
    FROM vista_unpivot_tbl_fa
    WHERE pregunta IN ('pregunta_16', 'pregunta_17', 'pregunta_18', 'pregunta_20', 'pregunta_21')
    GROUP BY fec_aplica, nro_documento
),

-- Subconsulta para "Consistencia del rol"
dim16 AS (
    SELECT 
        fec_aplica, 
        nro_documento,
        ROUND(SUM(valor)) AS sum_dim16,
        ROUND((SUM(valor) / 20) * 100, 1) AS puntaje_transformado,
        CASE 
            WHEN ROUND((SUM(valor) / 20) * 100, 1) <= 15.0 THEN 'Sin Riesgo o Riesgo Despreciable'
            WHEN ROUND((SUM(valor) / 20) * 100, 1) <= 25.0 THEN 'Riesgo Bajo'
            WHEN ROUND((SUM(valor) / 20) * 100, 1) <= 35.0 THEN 'Riesgo Medio'
            WHEN ROUND((SUM(valor) / 20) * 100, 1) <= 45.0 THEN 'Riesgo Alto'
            WHEN ROUND((SUM(valor) / 20) * 100, 1) <= 100.0 THEN 'Riesgo muy alto'
            ELSE 'Error Validar Datos'
        END AS nivel_riesgo
    FROM vista_unpivot_tbl_fa
    WHERE pregunta IN ('pregunta_27', 'pregunta_28', 'pregunta_29', 'pregunta_30', 'pregunta_52')
    GROUP BY fec_aplica, nro_documento
),

-- Subconsulta para "Demandas de la jornada de trabajo"
dim17 AS (
    SELECT 
        fec_aplica, 
        nro_documento,
        ROUND(SUM(valor)) AS sum_dim17,
        ROUND((SUM(valor) / 12) * 100, 1) AS puntaje_transformado,
        CASE 
            WHEN ROUND((SUM(valor) / 12) * 100, 1) <= 8.3 THEN 'Sin Riesgo o Riesgo Despreciable'
            WHEN ROUND((SUM(valor) / 12) * 100, 1) <= 25.0 THEN 'Riesgo Bajo'
            WHEN ROUND((SUM(valor) / 12) * 100, 1) <= 33.3 THEN 'Riesgo Medio'
            WHEN ROUND((SUM(valor) / 12) * 100, 1) <= 50.0 THEN 'Riesgo Alto'
            WHEN ROUND((SUM(valor) / 12) * 100, 1) <= 100.0 THEN 'Riesgo muy alto'
            ELSE 'Error Validar Datos'
        END AS nivel_riesgo
    FROM vista_unpivot_tbl_fa
    WHERE pregunta IN ('pregunta_31', 'pregunta_33', 'pregunta_34')
    GROUP BY fec_aplica, nro_documento
),


-- Dominio 4
-- Subconsulta para "Recompensas derivadas de la pertenencia a la organización y del trabajo que se realiza"
dim18 AS (
    SELECT 
        fec_aplica, 
        nro_documento,
        ROUND(SUM(valor)) AS sum_dim18,
        ROUND((SUM(valor) / 20) * 100, 1) AS puntaje_transformado,
        CASE 
            WHEN ROUND((SUM(valor) / 20) * 100, 1) <= 0.9 THEN 'Sin Riesgo o Riesgo Despreciable'
            WHEN ROUND((SUM(valor) / 20) * 100, 1) <= 5.0 THEN 'Riesgo Bajo'
            WHEN ROUND((SUM(valor) / 20) * 100, 1) <= 10.0 THEN 'Riesgo Medio'
            WHEN ROUND((SUM(valor) / 20) * 100, 1) <= 20.0 THEN 'Riesgo Alto'
            WHEN ROUND((SUM(valor) / 20) * 100, 1) <= 100.0 THEN 'Riesgo muy alto'
            ELSE 'Error Validar Datos'
        END AS nivel_riesgo
    FROM vista_unpivot_tbl_fa
    WHERE pregunta IN ('pregunta_95', 'pregunta_102', 'pregunta_103', 'pregunta_104', 'pregunta_105')
    GROUP BY fec_aplica, nro_documento
),

-- Subconsulta para "Reconocimiento y compensación"
dim19 AS (
    SELECT 
        fec_aplica, 
        nro_documento,
        ROUND(SUM(valor)) AS sum_dim19,
        ROUND((SUM(valor) / 24) * 100, 1) AS puntaje_transformado,
        CASE 
            WHEN ROUND((SUM(valor) / 24) * 100, 1) <= 4.2 THEN 'Sin Riesgo o Riesgo Despreciable'
            WHEN ROUND((SUM(valor) / 24) * 100, 1) <= 16.7 THEN 'Riesgo Bajo'
            WHEN ROUND((SUM(valor) / 24) * 100, 1) <= 25.0 THEN 'Riesgo Medio'
            WHEN ROUND((SUM(valor) / 24) * 100, 1) <= 37.5 THEN 'Riesgo Alto'
            WHEN ROUND((SUM(valor) / 24) * 100, 1) <= 100.0 THEN 'Riesgo muy alto'
            ELSE 'Error Validar Datos'
        END AS nivel_riesgo
    FROM vista_unpivot_tbl_fa
    WHERE pregunta IN ('pregunta_96', 'pregunta_97', 'pregunta_98', 'pregunta_99', 'pregunta_100', 'pregunta_101')
    GROUP BY fec_aplica, nro_documento
)


-- Unión final para combinar ambas dimensiones
SELECT 
    dim1.fec_aplica,
    dim1.nro_documento,
    #dim1.sum_dim1,
    #dim2.sum_dim2,
    #dim3.sum_dim3,
    #dim4.sum_dim4,    
    dim1.puntaje_transformado AS 'pt_dim1',
    dim1.nivel_riesgo AS 'nr_dim1',
    dim2.puntaje_transformado AS 'pt_dim2',
    dim2.nivel_riesgo AS 'nr_dim2',
    dim3.puntaje_transformado AS 'pt_dim3',
    dim3.nivel_riesgo AS 'nr_dim3',
    dim4.puntaje_transformado AS 'pt_dim4',
    dim4.nivel_riesgo AS 'nr_dim4',
    ROUND(((dim1.sum_dim1 + dim2.sum_dim2 + dim3.sum_dim3 + dim4.sum_dim4) / 164) * 100, 1) AS 'pt_dom1',
	 CASE 
            WHEN ROUND(((dim1.sum_dim1 + dim2.sum_dim2 + dim3.sum_dim3 + dim4.sum_dim4) / 164) * 100, 1) <= 9.1 THEN 'Sin Riesgo o Riesgo Despreciable'
            WHEN ROUND(((dim1.sum_dim1 + dim2.sum_dim2 + dim3.sum_dim3 + dim4.sum_dim4) / 164) * 100, 1) <= 17.7 THEN 'Riesgo Bajo'
            WHEN ROUND(((dim1.sum_dim1 + dim2.sum_dim2 + dim3.sum_dim3 + dim4.sum_dim4) / 164) * 100, 1) <= 25.6 THEN 'Riesgo Medio'
            WHEN ROUND(((dim1.sum_dim1 + dim2.sum_dim2 + dim3.sum_dim3 + dim4.sum_dim4) / 164) * 100, 1) <= 34.8 THEN 'Riesgo Alto'
            WHEN ROUND(((dim1.sum_dim1 + dim2.sum_dim2 + dim3.sum_dim3 + dim4.sum_dim4) / 164) * 100, 1) <= 100.0 THEN 'Riesgo muy alto'
            ELSE 'Error Validar Datos'
        END AS 'nr_dom1',
    dim5.puntaje_transformado AS 'pt_dim5',
    dim5.nivel_riesgo AS 'nr_dim5',
    dim6.puntaje_transformado AS 'pt_dim6',
    dim6.nivel_riesgo AS 'nr_dim6',
    dim7.puntaje_transformado AS 'pt_dim7',
    dim7.nivel_riesgo AS 'nr_dim7',
    dim8.puntaje_transformado AS 'pt_dim8',
    dim8.nivel_riesgo AS 'nr_dim8',
    dim9.puntaje_transformado AS 'pt_dim9',
    dim9.nivel_riesgo AS 'nr_dim9',
    ROUND(((dim5.sum_dim5 + dim6.sum_dim6 + dim7.sum_dim7 + dim8.sum_dim8 + dim9.sum_dim9) / 84) * 100, 1) AS 'pt_dom2',
	 CASE 
            WHEN ROUND(((dim5.sum_dim5 + dim6.sum_dim6 + dim7.sum_dim7 + dim8.sum_dim8 + dim9.sum_dim9) / 84) * 100, 1) <= 10.7 THEN 'Sin Riesgo o Riesgo Despreciable'
            WHEN ROUND(((dim5.sum_dim5 + dim6.sum_dim6 + dim7.sum_dim7 + dim8.sum_dim8 + dim9.sum_dim9) / 84) * 100, 1) <= 19.1 THEN 'Riesgo Bajo'
            WHEN ROUND(((dim5.sum_dim5 + dim6.sum_dim6 + dim7.sum_dim7 + dim8.sum_dim8 + dim9.sum_dim9) / 84) * 100, 1) <= 29.8 THEN 'Riesgo Medio'
            WHEN ROUND(((dim5.sum_dim5 + dim6.sum_dim6 + dim7.sum_dim7 + dim8.sum_dim8 + dim9.sum_dim9) / 84) * 100, 1) <= 40.5 THEN 'Riesgo Alto'
            WHEN ROUND(((dim5.sum_dim5 + dim6.sum_dim6 + dim7.sum_dim7 + dim8.sum_dim8 + dim9.sum_dim9) / 84) * 100, 1) <= 100.0 THEN 'Riesgo muy alto'
            ELSE 'Error Validar Datos'
        END AS 'nr_dom2',
   dim10.puntaje_transformado AS 'pt_dim10',
   dim10.nivel_riesgo AS 'nr_dim10',
   dim11.puntaje_transformado AS 'pt_dim11',
   dim11.nivel_riesgo AS 'nr_dim11',
   dim12.puntaje_transformado AS 'pt_dim12',
   dim12.nivel_riesgo AS 'nr_dim12',
   dim13.puntaje_transformado AS 'pt_dim13',
   dim13.nivel_riesgo AS 'nr_dim13',
   dim14.puntaje_transformado AS 'pt_dim14',
   dim14.nivel_riesgo AS 'nr_dim14',
   dim15.puntaje_transformado AS 'pt_dim15',
   dim15.nivel_riesgo AS 'nr_dim15',
   dim16.puntaje_transformado AS 'pt_dim16',
   dim16.nivel_riesgo AS 'nr_dim16',
   dim17.puntaje_transformado AS 'pt_dim17',
   dim17.nivel_riesgo AS 'nr_dim17',
   ROUND(((dim10.sum_dim10 + dim11.sum_dim11 + dim12.sum_dim12 + dim13.sum_dim13 + dim14.sum_dim14 + dim15.sum_dim15 + dim16.sum_dim16 + dim17.sum_dim17) / 200) * 100, 1) AS 'pt_dom3',
	 CASE 
            WHEN ROUND(((dim10.sum_dim10 + dim11.sum_dim11 + dim12.sum_dim12 + dim13.sum_dim13 + dim14.sum_dim14 + dim15.sum_dim15 + dim16.sum_dim16 + dim17.sum_dim17) / 200) * 100, 1) <= 28.5 THEN 'Sin Riesgo o Riesgo Despreciable'
            WHEN ROUND(((dim10.sum_dim10 + dim11.sum_dim11 + dim12.sum_dim12 + dim13.sum_dim13 + dim14.sum_dim14 + dim15.sum_dim15 + dim16.sum_dim16 + dim17.sum_dim17) / 200) * 100, 1) <= 35.0 THEN 'Riesgo Bajo'
            WHEN ROUND(((dim10.sum_dim10 + dim11.sum_dim11 + dim12.sum_dim12 + dim13.sum_dim13 + dim14.sum_dim14 + dim15.sum_dim15 + dim16.sum_dim16 + dim17.sum_dim17) / 200) * 100, 1) <= 41.5 THEN 'Riesgo Medio'
            WHEN ROUND(((dim10.sum_dim10 + dim11.sum_dim11 + dim12.sum_dim12 + dim13.sum_dim13 + dim14.sum_dim14 + dim15.sum_dim15 + dim16.sum_dim16 + dim17.sum_dim17) / 200) * 100, 1) <= 47.5 THEN 'Riesgo Alto'
            WHEN ROUND(((dim10.sum_dim10 + dim11.sum_dim11 + dim12.sum_dim12 + dim13.sum_dim13 + dim14.sum_dim14 + dim15.sum_dim15 + dim16.sum_dim16 + dim17.sum_dim17) / 200) * 100, 1) <= 100.0 THEN 'Riesgo muy alto'
            ELSE 'Error Validar Datos'
        END AS 'nr_dom3',
   dim18.puntaje_transformado AS 'pt_dim18',
   dim18.nivel_riesgo AS 'nr_dim18',
   dim19.puntaje_transformado AS 'pt_dim19',
   dim19.nivel_riesgo AS 'nr_dim19',
   ROUND(((dim18.sum_dim18 + dim19.sum_dim19) / 44) * 100, 1) AS 'pt_dom4',
	 CASE 
            WHEN ROUND(((dim18.sum_dim18 + dim19.sum_dim19) / 44) * 100, 1) <= 4.2 THEN 'Sin Riesgo o Riesgo Despreciable'
            WHEN ROUND(((dim18.sum_dim18 + dim19.sum_dim19) / 44) * 100, 1) <= 16.7 THEN 'Riesgo Bajo'
            WHEN ROUND(((dim18.sum_dim18 + dim19.sum_dim19) / 44) * 100, 1) <= 25.0 THEN 'Riesgo Medio'
            WHEN ROUND(((dim18.sum_dim18 + dim19.sum_dim19) / 44) * 100, 1) <= 37.5 THEN 'Riesgo Alto'
            WHEN ROUND(((dim18.sum_dim18 + dim19.sum_dim19) / 44) * 100, 1) <= 100.0 THEN 'Riesgo muy alto'
            ELSE 'Error Validar Datos'
        END AS 'nr_dom4',
   ROUND(((dim1.sum_dim1 + dim2.sum_dim2 + dim3.sum_dim3 + dim4.sum_dim4 + dim5.sum_dim5 + dim6.sum_dim6 + dim7.sum_dim7 + dim8.sum_dim8 + dim9.sum_dim9 + dim10.sum_dim10 + dim11.sum_dim11 + dim12.sum_dim12 + dim13.sum_dim13 + dim14.sum_dim14 + dim15.sum_dim15 + dim16.sum_dim16 + dim17.sum_dim17 + dim18.sum_dim18 + dim19.sum_dim19) / 492) * 100, 1) AS 'pt_total_fa',
	 CASE 
            WHEN ROUND(((dim1.sum_dim1 + dim2.sum_dim2 + dim3.sum_dim3 + dim4.sum_dim4 + dim5.sum_dim5 + dim6.sum_dim6 + dim7.sum_dim7 + dim8.sum_dim8 + dim9.sum_dim9 + dim10.sum_dim10 + dim11.sum_dim11 + dim12.sum_dim12 + dim13.sum_dim13 + dim14.sum_dim14 + dim15.sum_dim15 + dim16.sum_dim16 + dim17.sum_dim17 + dim18.sum_dim18 + dim19.sum_dim19) / 492) * 100, 1) <= 19.7 THEN 'Sin Riesgo o Riesgo Despreciable'
            WHEN ROUND(((dim1.sum_dim1 + dim2.sum_dim2 + dim3.sum_dim3 + dim4.sum_dim4 + dim5.sum_dim5 + dim6.sum_dim6 + dim7.sum_dim7 + dim8.sum_dim8 + dim9.sum_dim9 + dim10.sum_dim10 + dim11.sum_dim11 + dim12.sum_dim12 + dim13.sum_dim13 + dim14.sum_dim14 + dim15.sum_dim15 + dim16.sum_dim16 + dim17.sum_dim17 + dim18.sum_dim18 + dim19.sum_dim19) / 492) * 100, 1) <= 25.8 THEN 'Riesgo Bajo'
            WHEN ROUND(((dim1.sum_dim1 + dim2.sum_dim2 + dim3.sum_dim3 + dim4.sum_dim4 + dim5.sum_dim5 + dim6.sum_dim6 + dim7.sum_dim7 + dim8.sum_dim8 + dim9.sum_dim9 + dim10.sum_dim10 + dim11.sum_dim11 + dim12.sum_dim12 + dim13.sum_dim13 + dim14.sum_dim14 + dim15.sum_dim15 + dim16.sum_dim16 + dim17.sum_dim17 + dim18.sum_dim18 + dim19.sum_dim19) / 492) * 100, 1) <= 31.5 THEN 'Riesgo Medio'
            WHEN ROUND(((dim1.sum_dim1 + dim2.sum_dim2 + dim3.sum_dim3 + dim4.sum_dim4 + dim5.sum_dim5 + dim6.sum_dim6 + dim7.sum_dim7 + dim8.sum_dim8 + dim9.sum_dim9 + dim10.sum_dim10 + dim11.sum_dim11 + dim12.sum_dim12 + dim13.sum_dim13 + dim14.sum_dim14 + dim15.sum_dim15 + dim16.sum_dim16 + dim17.sum_dim17 + dim18.sum_dim18 + dim19.sum_dim19) / 492) * 100, 1) <= 38.0 THEN 'Riesgo Alto'
            WHEN ROUND(((dim1.sum_dim1 + dim2.sum_dim2 + dim3.sum_dim3 + dim4.sum_dim4 + dim5.sum_dim5 + dim6.sum_dim6 + dim7.sum_dim7 + dim8.sum_dim8 + dim9.sum_dim9 + dim10.sum_dim10 + dim11.sum_dim11 + dim12.sum_dim12 + dim13.sum_dim13 + dim14.sum_dim14 + dim15.sum_dim15 + dim16.sum_dim16 + dim17.sum_dim17 + dim18.sum_dim18 + dim19.sum_dim19) / 492) * 100, 1) <= 100.0 THEN 'Riesgo muy alto'
            ELSE 'Error Validar Datos'
        END AS 'nr_total_fa'
	
FROM dim1
LEFT JOIN dim2 ON dim1.fec_aplica = dim2.fec_aplica AND dim1.nro_documento = dim2.nro_documento
LEFT JOIN dim3 ON dim1.fec_aplica = dim3.fec_aplica AND dim1.nro_documento = dim3.nro_documento
LEFT JOIN dim4 ON dim1.fec_aplica = dim4.fec_aplica AND dim1.nro_documento = dim4.nro_documento
LEFT JOIN dim5 ON dim1.fec_aplica = dim5.fec_aplica AND dim1.nro_documento = dim5.nro_documento
LEFT JOIN dim6 ON dim1.fec_aplica = dim6.fec_aplica AND dim1.nro_documento = dim6.nro_documento
LEFT JOIN dim7 ON dim1.fec_aplica = dim7.fec_aplica AND dim1.nro_documento = dim7.nro_documento
LEFT JOIN dim8 ON dim1.fec_aplica = dim8.fec_aplica AND dim1.nro_documento = dim8.nro_documento
LEFT JOIN dim9 ON dim1.fec_aplica = dim9.fec_aplica AND dim1.nro_documento = dim9.nro_documento
LEFT JOIN dim10 ON dim1.fec_aplica = dim10.fec_aplica AND dim1.nro_documento = dim10.nro_documento
LEFT JOIN dim11 ON dim1.fec_aplica = dim11.fec_aplica AND dim1.nro_documento = dim11.nro_documento
LEFT JOIN dim12 ON dim1.fec_aplica = dim12.fec_aplica AND dim1.nro_documento = dim12.nro_documento
LEFT JOIN dim13 ON dim1.fec_aplica = dim13.fec_aplica AND dim1.nro_documento = dim13.nro_documento
LEFT JOIN dim14 ON dim1.fec_aplica = dim14.fec_aplica AND dim1.nro_documento = dim14.nro_documento
LEFT JOIN dim15 ON dim1.fec_aplica = dim15.fec_aplica AND dim1.nro_documento = dim15.nro_documento
LEFT JOIN dim16 ON dim1.fec_aplica = dim16.fec_aplica AND dim1.nro_documento = dim16.nro_documento
LEFT JOIN dim17 ON dim1.fec_aplica = dim17.fec_aplica AND dim1.nro_documento = dim17.nro_documento
LEFT JOIN dim18 ON dim1.fec_aplica = dim18.fec_aplica AND dim1.nro_documento = dim18.nro_documento
LEFT JOIN dim19 ON dim1.fec_aplica = dim19.fec_aplica AND dim1.nro_documento = dim19.nro_documento
;
