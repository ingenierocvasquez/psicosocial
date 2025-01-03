-- DROP VIEW vista_unpivot_tbl_estres_fa_fb;

CREATE VIEW vista_unpivot_tbl_estres_fa_fb AS

SELECT 
    fec_aplica,
    nro_documento,
    'pregunta_1' AS pregunta, pregunta_1 AS valor
FROM vista_cal_items_estres_fa_fb
UNION ALL
SELECT 
    fec_aplica,
    nro_documento,
    'pregunta_2' AS pregunta, pregunta_2 AS valor
FROM vista_cal_items_estres_fa_fb
UNION ALL
SELECT 
    fec_aplica,
    nro_documento,
    'pregunta_3' AS pregunta, pregunta_3 AS valor
FROM vista_cal_items_estres_fa_fb
UNION ALL
SELECT 
    fec_aplica,
    nro_documento,
    'pregunta_4' AS pregunta, pregunta_4 AS valor
FROM vista_cal_items_estres_fa_fb
UNION ALL
SELECT 
    fec_aplica,
    nro_documento,
    'pregunta_5' AS pregunta, pregunta_5 AS valor
FROM vista_cal_items_estres_fa_fb
UNION ALL
SELECT 
    fec_aplica,
    nro_documento,
    'pregunta_6' AS pregunta, pregunta_6 AS valor
FROM vista_cal_items_estres_fa_fb
UNION ALL
SELECT 
    fec_aplica,
    nro_documento,
    'pregunta_7' AS pregunta, pregunta_7 AS valor
FROM vista_cal_items_estres_fa_fb
UNION ALL
SELECT 
    fec_aplica,
    nro_documento,
    'pregunta_8' AS pregunta, pregunta_8 AS valor
FROM vista_cal_items_estres_fa_fb
UNION ALL
SELECT 
    fec_aplica,
    nro_documento,
    'pregunta_9' AS pregunta, pregunta_9 AS valor
FROM vista_cal_items_estres_fa_fb
UNION ALL
SELECT 
    fec_aplica,
    nro_documento,
    'pregunta_10' AS pregunta, pregunta_10 AS valor
FROM vista_cal_items_estres_fa_fb
UNION ALL
SELECT 
    fec_aplica,
    nro_documento,
    'pregunta_11' AS pregunta, pregunta_11 AS valor
FROM vista_cal_items_estres_fa_fb
UNION ALL
SELECT 
    fec_aplica,
    nro_documento,
    'pregunta_12' AS pregunta, pregunta_12 AS valor
FROM vista_cal_items_estres_fa_fb
UNION ALL
SELECT 
    fec_aplica,
    nro_documento,
    'pregunta_13' AS pregunta, pregunta_13 AS valor
FROM vista_cal_items_estres_fa_fb
UNION ALL
SELECT 
    fec_aplica,
    nro_documento,
    'pregunta_14' AS pregunta, pregunta_14 AS valor
FROM vista_cal_items_estres_fa_fb
UNION ALL
SELECT 
    fec_aplica,
    nro_documento,
    'pregunta_15' AS pregunta, pregunta_15 AS valor
FROM vista_cal_items_estres_fa_fb
UNION ALL
SELECT 
    fec_aplica,
    nro_documento,
    'pregunta_16' AS pregunta, pregunta_16 AS valor
FROM vista_cal_items_estres_fa_fb
UNION ALL
SELECT 
    fec_aplica,
    nro_documento,
    'pregunta_17' AS pregunta, pregunta_17 AS valor
FROM vista_cal_items_estres_fa_fb
UNION ALL
SELECT 
    fec_aplica,
    nro_documento,
    'pregunta_18' AS pregunta, pregunta_18 AS valor
FROM vista_cal_items_estres_fa_fb
UNION ALL
SELECT 
    fec_aplica,
    nro_documento,
    'pregunta_19' AS pregunta, pregunta_19 AS valor
FROM vista_cal_items_estres_fa_fb
UNION ALL
SELECT 
    fec_aplica,
    nro_documento,
    'pregunta_20' AS pregunta, pregunta_20 AS valor
FROM vista_cal_items_estres_fa_fb
UNION ALL
SELECT 
    fec_aplica,
    nro_documento,
    'pregunta_21' AS pregunta, pregunta_21 AS valor
FROM vista_cal_items_estres_fa_fb
UNION ALL
SELECT 
    fec_aplica,
    nro_documento,
    'pregunta_22' AS pregunta, pregunta_22 AS valor
FROM vista_cal_items_estres_fa_fb
UNION ALL
SELECT 
    fec_aplica,
    nro_documento,
    'pregunta_23' AS pregunta, pregunta_23 AS valor
FROM vista_cal_items_estres_fa_fb
UNION ALL
SELECT 
    fec_aplica,
    nro_documento,
    'pregunta_24' AS pregunta, pregunta_24 AS valor
FROM vista_cal_items_estres_fa_fb
UNION ALL
SELECT 
    fec_aplica,
    nro_documento,
    'pregunta_25' AS pregunta, pregunta_25 AS valor
FROM vista_cal_items_estres_fa_fb
UNION ALL
SELECT 
    fec_aplica,
    nro_documento,
    'pregunta_26' AS pregunta, pregunta_26 AS valor
FROM vista_cal_items_estres_fa_fb
UNION ALL
SELECT 
    fec_aplica,
    nro_documento,
    'pregunta_27' AS pregunta, pregunta_27 AS valor
FROM vista_cal_items_estres_fa_fb
UNION ALL
SELECT 
    fec_aplica,
    nro_documento,
    'pregunta_28' AS pregunta, pregunta_28 AS valor
FROM vista_cal_items_estres_fa_fb
UNION ALL
SELECT 
    fec_aplica,
    nro_documento,
    'pregunta_29' AS pregunta, pregunta_29 AS valor
FROM vista_cal_items_estres_fa_fb
UNION ALL
SELECT 
    fec_aplica,
    nro_documento,
    'pregunta_30' AS pregunta, pregunta_30 AS valor
FROM vista_cal_items_estres_fa_fb
UNION ALL
SELECT 
    fec_aplica,
    nro_documento,
    'pregunta_31' AS pregunta, pregunta_31 AS valor
FROM vista_cal_items_estres_fa_fb
ORDER BY nro_documento ASC
;
