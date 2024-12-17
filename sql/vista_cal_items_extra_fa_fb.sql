DROP VIEW vista_cal_items_extra_fa_fb;

CREATE VIEW vista_cal_items_extra_fa_fb AS
SELECT 
    fec_aplica, 
    nro_documento,
    -- Ítems con calificación invertida (Siempre = 0, Nunca = 4)
    CASE pregunta_1 WHEN 'Siempre' THEN 0
                   WHEN 'Casi siempre' THEN 1
                   WHEN 'Algunas veces' THEN 2
                   WHEN 'Casi nunca' THEN 3
                   WHEN 'Nunca' THEN 4 END AS pregunta_1,
    CASE pregunta_4 WHEN 'Siempre' THEN 0
                   WHEN 'Casi siempre' THEN 1
                   WHEN 'Algunas veces' THEN 2
                   WHEN 'Casi nunca' THEN 3
                   WHEN 'Nunca' THEN 4 END AS pregunta_4,
    CASE pregunta_5 WHEN 'Siempre' THEN 0
                   WHEN 'Casi siempre' THEN 1
                   WHEN 'Algunas veces' THEN 2
                   WHEN 'Casi nunca' THEN 3
                   WHEN 'Nunca' THEN 4 END AS pregunta_5,
    CASE pregunta_7 WHEN 'Siempre' THEN 0
                   WHEN 'Casi siempre' THEN 1
                   WHEN 'Algunas veces' THEN 2
                   WHEN 'Casi nunca' THEN 3
                   WHEN 'Nunca' THEN 4 END AS pregunta_7,
    CASE pregunta_8 WHEN 'Siempre' THEN 0
                   WHEN 'Casi siempre' THEN 1
                   WHEN 'Algunas veces' THEN 2
                   WHEN 'Casi nunca' THEN 3
                   WHEN 'Nunca' THEN 4 END AS pregunta_8,
    CASE pregunta_9 WHEN 'Siempre' THEN 0
                   WHEN 'Casi siempre' THEN 1
                   WHEN 'Algunas veces' THEN 2
                   WHEN 'Casi nunca' THEN 3
                   WHEN 'Nunca' THEN 4 END AS pregunta_9,
    CASE pregunta_10 WHEN 'Siempre' THEN 0
                   WHEN 'Casi siempre' THEN 1
                   WHEN 'Algunas veces' THEN 2
                   WHEN 'Casi nunca' THEN 3
                   WHEN 'Nunca' THEN 4 END AS pregunta_10,
    CASE pregunta_11 WHEN 'Siempre' THEN 0
                   WHEN 'Casi siempre' THEN 1
                   WHEN 'Algunas veces' THEN 2
                   WHEN 'Casi nunca' THEN 3
                   WHEN 'Nunca' THEN 4 END AS pregunta_11,
    CASE pregunta_12 WHEN 'Siempre' THEN 0
                   WHEN 'Casi siempre' THEN 1
                   WHEN 'Algunas veces' THEN 2
                   WHEN 'Casi nunca' THEN 3
                   WHEN 'Nunca' THEN 4 END AS pregunta_12,
    CASE pregunta_13 WHEN 'Siempre' THEN 0
                   WHEN 'Casi siempre' THEN 1
                   WHEN 'Algunas veces' THEN 2
                   WHEN 'Casi nunca' THEN 3
                   WHEN 'Nunca' THEN 4 END AS pregunta_13,
    CASE pregunta_14 WHEN 'Siempre' THEN 0
                   WHEN 'Casi siempre' THEN 1
                   WHEN 'Algunas veces' THEN 2
                   WHEN 'Casi nunca' THEN 3
                   WHEN 'Nunca' THEN 4 END AS pregunta_14,
    CASE pregunta_15 WHEN 'Siempre' THEN 0
                   WHEN 'Casi siempre' THEN 1
                   WHEN 'Algunas veces' THEN 2
                   WHEN 'Casi nunca' THEN 3
                   WHEN 'Nunca' THEN 4 END AS pregunta_15,
    CASE pregunta_16 WHEN 'Siempre' THEN 0
                   WHEN 'Casi siempre' THEN 1
                   WHEN 'Algunas veces' THEN 2
                   WHEN 'Casi nunca' THEN 3
                   WHEN 'Nunca' THEN 4 END AS pregunta_16,
    CASE pregunta_17 WHEN 'Siempre' THEN 0
                   WHEN 'Casi siempre' THEN 1
                   WHEN 'Algunas veces' THEN 2
                   WHEN 'Casi nunca' THEN 3
                   WHEN 'Nunca' THEN 4 END AS pregunta_17,
    CASE pregunta_18 WHEN 'Siempre' THEN 0
                   WHEN 'Casi siempre' THEN 1
                   WHEN 'Algunas veces' THEN 2
                   WHEN 'Casi nunca' THEN 3
                   WHEN 'Nunca' THEN 4 END AS pregunta_18,
    CASE pregunta_19 WHEN 'Siempre' THEN 0
                   WHEN 'Casi siempre' THEN 1
                   WHEN 'Algunas veces' THEN 2
                   WHEN 'Casi nunca' THEN 3
                   WHEN 'Nunca' THEN 4 END AS pregunta_19,
    CASE pregunta_20 WHEN 'Siempre' THEN 0
                   WHEN 'Casi siempre' THEN 1
                   WHEN 'Algunas veces' THEN 2
                   WHEN 'Casi nunca' THEN 3
                   WHEN 'Nunca' THEN 4 END AS pregunta_20,
    CASE pregunta_21 WHEN 'Siempre' THEN 0
                   WHEN 'Casi siempre' THEN 1
                   WHEN 'Algunas veces' THEN 2
                   WHEN 'Casi nunca' THEN 3
                   WHEN 'Nunca' THEN 4 END AS pregunta_21,
    CASE pregunta_22 WHEN 'Siempre' THEN 0
                   WHEN 'Casi siempre' THEN 1
                   WHEN 'Algunas veces' THEN 2
                   WHEN 'Casi nunca' THEN 3
                   WHEN 'Nunca' THEN 4 END AS pregunta_22,
    CASE pregunta_23 WHEN 'Siempre' THEN 0
                   WHEN 'Casi siempre' THEN 1
                   WHEN 'Algunas veces' THEN 2
                   WHEN 'Casi nunca' THEN 3
                   WHEN 'Nunca' THEN 4 END AS pregunta_23,
    CASE pregunta_25 WHEN 'Siempre' THEN 0
                   WHEN 'Casi siempre' THEN 1
                   WHEN 'Algunas veces' THEN 2
                   WHEN 'Casi nunca' THEN 3
                   WHEN 'Nunca' THEN 4 END AS pregunta_25,
    CASE pregunta_27 WHEN 'Siempre' THEN 0
                   WHEN 'Casi siempre' THEN 1
                   WHEN 'Algunas veces' THEN 2
                   WHEN 'Casi nunca' THEN 3
                   WHEN 'Nunca' THEN 4 END AS pregunta_27,
    CASE pregunta_29 WHEN 'Siempre' THEN 0
                   WHEN 'Casi siempre' THEN 1
                   WHEN 'Algunas veces' THEN 2
                   WHEN 'Casi nunca' THEN 3
                   WHEN 'Nunca' THEN 4 END AS pregunta_29,
    -- Ítems con calificación directa (Siempre = 4, Nunca = 0)
    CASE pregunta_2 WHEN 'Siempre' THEN 4
                   WHEN 'Casi siempre' THEN 3
                   WHEN 'Algunas veces' THEN 2
                   WHEN 'Casi nunca' THEN 1
                   WHEN 'Nunca' THEN 0 END AS pregunta_2,
    CASE pregunta_3 WHEN 'Siempre' THEN 4
                   WHEN 'Casi siempre' THEN 3
                   WHEN 'Algunas veces' THEN 2
                   WHEN 'Casi nunca' THEN 1
                   WHEN 'Nunca' THEN 0 END AS pregunta_3,
    CASE pregunta_6 WHEN 'Siempre' THEN 4
                   WHEN 'Casi siempre' THEN 3
                   WHEN 'Algunas veces' THEN 2
                   WHEN 'Casi nunca' THEN 1
                   WHEN 'Nunca' THEN 0 END AS pregunta_6,
    CASE pregunta_24 WHEN 'Siempre' THEN 4
                   WHEN 'Casi siempre' THEN 3
                   WHEN 'Algunas veces' THEN 2
                   WHEN 'Casi nunca' THEN 1
                   WHEN 'Nunca' THEN 0 END AS pregunta_24,
    CASE pregunta_26 WHEN 'Siempre' THEN 4
                   WHEN 'Casi siempre' THEN 3
                   WHEN 'Algunas veces' THEN 2
                   WHEN 'Casi nunca' THEN 1
                   WHEN 'Nunca' THEN 0 END AS pregunta_26,
    CASE pregunta_28 WHEN 'Siempre' THEN 4
                   WHEN 'Casi siempre' THEN 3
                   WHEN 'Algunas veces' THEN 2
                   WHEN 'Casi nunca' THEN 1
                   WHEN 'Nunca' THEN 0 END AS pregunta_28,
    CASE pregunta_30 WHEN 'Siempre' THEN 4
                   WHEN 'Casi siempre' THEN 3
                   WHEN 'Algunas veces' THEN 2
                   WHEN 'Casi nunca' THEN 1
                   WHEN 'Nunca' THEN 0 END AS pregunta_30,
    CASE pregunta_31 WHEN 'Siempre' THEN 4
                   WHEN 'Casi siempre' THEN 3
                   WHEN 'Algunas veces' THEN 2
                   WHEN 'Casi nunca' THEN 1
                   WHEN 'Nunca' THEN 0 END AS pregunta_31
FROM forma_extra_fa_fb;
