DROP VIEW dom1_dim1_fa;

CREATE VIEW dom1_dim1_fa AS SELECT 
    fec_aplica,
    nro_documento,
    'pregunta_63' AS pregunta, pregunta_63 AS valor
FROM cal_items_fa
UNION ALL
SELECT 
    fec_aplica,
    nro_documento,
    'pregunta_64' AS pregunta, pregunta_64 AS valor
FROM cal_items_fa
UNION ALL
SELECT 
    fec_aplica,
    nro_documento,
    'pregunta_65' AS pregunta, pregunta_65 AS valor
FROM cal_items_fa
UNION ALL
SELECT 
    fec_aplica,
    nro_documento,
    'pregunta_66' AS pregunta, pregunta_66 AS valor
FROM cal_items_fa
UNION ALL
SELECT 
    fec_aplica,
    nro_documento,
    'pregunta_67' AS pregunta, pregunta_67 AS valor
FROM cal_items_fa
UNION ALL
SELECT 
    fec_aplica,
    nro_documento,
    'pregunta_68' AS pregunta, pregunta_68 AS valor
FROM cal_items_fa
UNION ALL
SELECT 
    fec_aplica,
    nro_documento,
    'pregunta_69' AS pregunta, pregunta_69 AS valor
FROM cal_items_fa
UNION ALL
SELECT 
    fec_aplica,
    nro_documento,
    'pregunta_70' AS pregunta, pregunta_70 AS valor
FROM cal_items_fa
UNION ALL
SELECT 
    fec_aplica,
    nro_documento,
    'pregunta_71' AS pregunta, pregunta_71 AS valor
FROM cal_items_fa
UNION ALL
SELECT 
    fec_aplica,
    nro_documento,
    'pregunta_72' AS pregunta, pregunta_72 AS valor
FROM cal_items_fa
UNION ALL
SELECT 
    fec_aplica,
    nro_documento,
    'pregunta_73' AS pregunta, pregunta_73 AS valor
FROM cal_items_fa
UNION ALL
SELECT 
    fec_aplica,
    nro_documento,
    'pregunta_74' AS pregunta, pregunta_74 AS valor
FROM cal_items_fa
UNION ALL
SELECT 
    fec_aplica,
    nro_documento,
    'pregunta_75' AS pregunta, pregunta_75 AS valor
FROM cal_items_fa
ORDER BY nro_documento ASC
;
