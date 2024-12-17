DROP VIEW vista_cal_items_fb;

CREATE VIEW vista_cal_items_fb AS
SELECT `fec_aplica`,
       `nro_documento`,
       (CASE `forma_b`.`pregunta_1`
            WHEN 'Siempre' THEN 4
            WHEN 'Casi siempre' THEN 3
            WHEN 'Algunas veces' THEN 2
            WHEN 'Casi nunca' THEN 1
            WHEN 'Nunca' THEN 0
        END) AS `pregunta_1`,
       (CASE `forma_b`.`pregunta_2`
            WHEN 'Siempre' THEN 4
            WHEN 'Casi siempre' THEN 3
            WHEN 'Algunas veces' THEN 2
            WHEN 'Casi nunca' THEN 1
            WHEN 'Nunca' THEN 0
        END) AS `pregunta_2`,
       (CASE `forma_b`.`pregunta_3`
            WHEN 'Siempre' THEN 4
            WHEN 'Casi siempre' THEN 3
            WHEN 'Algunas veces' THEN 2
            WHEN 'Casi nunca' THEN 1
            WHEN 'Nunca' THEN 0
        END) AS `pregunta_3`,
       (CASE `forma_b`.`pregunta_4`
            WHEN 'Siempre' THEN 0
            WHEN 'Casi siempre' THEN 1
            WHEN 'Algunas veces' THEN 2
            WHEN 'Casi nunca' THEN 3
            WHEN 'Nunca' THEN 4
        END) AS `pregunta_4`,
       (CASE `forma_b`.`pregunta_5`
            WHEN 'Siempre' THEN 0
            WHEN 'Casi siempre' THEN 1
            WHEN 'Algunas veces' THEN 2
            WHEN 'Casi nunca' THEN 3
            WHEN 'Nunca' THEN 4
        END) AS `pregunta_5`,
       (CASE `forma_b`.`pregunta_6`
            WHEN 'Siempre' THEN 0
            WHEN 'Casi siempre' THEN 1
            WHEN 'Algunas veces' THEN 2
            WHEN 'Casi nunca' THEN 3
            WHEN 'Nunca' THEN 4
        END) AS `pregunta_6`,
       (CASE `forma_b`.`pregunta_7`
           WHEN 'Siempre' THEN 4
            WHEN 'Casi siempre' THEN 3
            WHEN 'Algunas veces' THEN 2
            WHEN 'Casi nunca' THEN 1
            WHEN 'Nunca' THEN 0
        END) AS `pregunta_7`,
       (CASE `forma_b`.`pregunta_8`
            WHEN 'Siempre' THEN 4
            WHEN 'Casi siempre' THEN 3
            WHEN 'Algunas veces' THEN 2
            WHEN 'Casi nunca' THEN 1
            WHEN 'Nunca' THEN 0
        END) AS `pregunta_8`,
       (CASE `forma_b`.`pregunta_9`
            WHEN 'Siempre' THEN 0
            WHEN 'Casi siempre' THEN 1
            WHEN 'Algunas veces' THEN 2
            WHEN 'Casi nunca' THEN 3
            WHEN 'Nunca' THEN 4
        END) AS `pregunta_9`,
       (CASE `forma_b`.`pregunta_10`
            WHEN 'Siempre' THEN 4
            WHEN 'Casi siempre' THEN 3
            WHEN 'Algunas veces' THEN 2
            WHEN 'Casi nunca' THEN 1
            WHEN 'Nunca' THEN 0
        END) AS `pregunta_10`,
       (CASE `forma_b`.`pregunta_11`
            WHEN 'Siempre' THEN 4
            WHEN 'Casi siempre' THEN 3
            WHEN 'Algunas veces' THEN 2
            WHEN 'Casi nunca' THEN 1
            WHEN 'Nunca' THEN 0
        END) AS `pregunta_11`,
       (CASE `forma_b`.`pregunta_12`
            WHEN 'Siempre' THEN 0
            WHEN 'Casi siempre' THEN 1
            WHEN 'Algunas veces' THEN 2
            WHEN 'Casi nunca' THEN 3
            WHEN 'Nunca' THEN 4
        END) AS `pregunta_12`,
       (CASE `forma_b`.`pregunta_13`
            WHEN 'Siempre' THEN 4
            WHEN 'Casi siempre' THEN 3
            WHEN 'Algunas veces' THEN 2
            WHEN 'Casi nunca' THEN 1
            WHEN 'Nunca' THEN 0
        END) AS `pregunta_13`,
       (CASE `forma_b`.`pregunta_14`
            WHEN 'Siempre' THEN 0
            WHEN 'Casi siempre' THEN 1
            WHEN 'Algunas veces' THEN 2
            WHEN 'Casi nunca' THEN 3
            WHEN 'Nunca' THEN 4
        END) AS `pregunta_14`,
       (CASE `forma_b`.`pregunta_15`
            WHEN 'Siempre' THEN 4
            WHEN 'Casi siempre' THEN 3
            WHEN 'Algunas veces' THEN 2
            WHEN 'Casi nunca' THEN 1
            WHEN 'Nunca' THEN 0
        END) AS `pregunta_15`,
       (CASE `forma_b`.`pregunta_16`
            WHEN 'Siempre' THEN 4
            WHEN 'Casi siempre' THEN 3
            WHEN 'Algunas veces' THEN 2
            WHEN 'Casi nunca' THEN 1
            WHEN 'Nunca' THEN 0
        END) AS `pregunta_16`,
       (CASE `forma_b`.`pregunta_17`
            WHEN 'Siempre' THEN 4
            WHEN 'Casi siempre' THEN 3
            WHEN 'Algunas veces' THEN 2
            WHEN 'Casi nunca' THEN 1
            WHEN 'Nunca' THEN 0
        END) AS `pregunta_17`,
       (CASE `forma_b`.`pregunta_18`
            WHEN 'Siempre' THEN 4
            WHEN 'Casi siempre' THEN 3
            WHEN 'Algunas veces' THEN 2
            WHEN 'Casi nunca' THEN 1
            WHEN 'Nunca' THEN 0
        END) AS `pregunta_18`,
       (CASE `forma_b`.`pregunta_19`
           WHEN 'Siempre' THEN 4
            WHEN 'Casi siempre' THEN 3
            WHEN 'Algunas veces' THEN 2
            WHEN 'Casi nunca' THEN 1
            WHEN 'Nunca' THEN 0
        END) AS `pregunta_19`,
       (CASE `forma_b`.`pregunta_20`
            WHEN 'Siempre' THEN 4
            WHEN 'Casi siempre' THEN 3
            WHEN 'Algunas veces' THEN 2
            WHEN 'Casi nunca' THEN 1
            WHEN 'Nunca' THEN 0
        END) AS `pregunta_20`,
       (CASE `forma_b`.`pregunta_21`
            WHEN 'Siempre' THEN 4
            WHEN 'Casi siempre' THEN 3
            WHEN 'Algunas veces' THEN 2
            WHEN 'Casi nunca' THEN 1
            WHEN 'Nunca' THEN 0
        END) AS `pregunta_21`,
       (CASE `forma_b`.`pregunta_22`
            WHEN 'Siempre' THEN 0
            WHEN 'Casi siempre' THEN 1
            WHEN 'Algunas veces' THEN 2
            WHEN 'Casi nunca' THEN 3
            WHEN 'Nunca' THEN 4
        END) AS `pregunta_22`,
       (CASE `forma_b`.`pregunta_23`
            WHEN 'Siempre' THEN 4
            WHEN 'Casi siempre' THEN 3
            WHEN 'Algunas veces' THEN 2
            WHEN 'Casi nunca' THEN 1
            WHEN 'Nunca' THEN 0
        END) AS `pregunta_23`,
       (CASE `forma_b`.`pregunta_24`
            WHEN 'Siempre' THEN 0
            WHEN 'Casi siempre' THEN 1
            WHEN 'Algunas veces' THEN 2
            WHEN 'Casi nunca' THEN 3
            WHEN 'Nunca' THEN 4
        END) AS `pregunta_24`,
       (CASE `forma_b`.`pregunta_25`
            WHEN 'Siempre' THEN 4
            WHEN 'Casi siempre' THEN 3
            WHEN 'Algunas veces' THEN 2
            WHEN 'Casi nunca' THEN 1
            WHEN 'Nunca' THEN 0
        END) AS `pregunta_25`,
       (CASE `forma_b`.`pregunta_26`
            WHEN 'Siempre' THEN 4
            WHEN 'Casi siempre' THEN 3
            WHEN 'Algunas veces' THEN 2
            WHEN 'Casi nunca' THEN 1
            WHEN 'Nunca' THEN 0
        END) AS `pregunta_26`,
       (CASE `forma_b`.`pregunta_27`
            WHEN 'Siempre' THEN 4
            WHEN 'Casi siempre' THEN 3
            WHEN 'Algunas veces' THEN 2
            WHEN 'Casi nunca' THEN 1
            WHEN 'Nunca' THEN 0
        END) AS `pregunta_27`,
       (CASE `forma_b`.`pregunta_28`
            WHEN 'Siempre' THEN 4
            WHEN 'Casi siempre' THEN 3
            WHEN 'Algunas veces' THEN 2
            WHEN 'Casi nunca' THEN 1
            WHEN 'Nunca' THEN 0
        END) AS `pregunta_28`,
       (CASE `forma_b`.`pregunta_29`
            WHEN 'Siempre' THEN 0
            WHEN 'Casi siempre' THEN 1
            WHEN 'Algunas veces' THEN 2
            WHEN 'Casi nunca' THEN 3
            WHEN 'Nunca' THEN 4
        END) AS `pregunta_29`,
       (CASE `forma_b`.`pregunta_30`
            WHEN 'Siempre' THEN 0
            WHEN 'Casi siempre' THEN 1
            WHEN 'Algunas veces' THEN 2
            WHEN 'Casi nunca' THEN 3
            WHEN 'Nunca' THEN 4
        END) AS `pregunta_30`,
       (CASE `forma_b`.`pregunta_31`
            WHEN 'Siempre' THEN 0
            WHEN 'Casi siempre' THEN 1
            WHEN 'Algunas veces' THEN 2
            WHEN 'Casi nunca' THEN 3
            WHEN 'Nunca' THEN 4
        END) AS `pregunta_31`,
       (CASE `forma_b`.`pregunta_32`
            WHEN 'Siempre' THEN 0
            WHEN 'Casi siempre' THEN 1
            WHEN 'Algunas veces' THEN 2
            WHEN 'Casi nunca' THEN 3
            WHEN 'Nunca' THEN 4
        END) AS `pregunta_32`,
       (CASE `forma_b`.`pregunta_33`
            WHEN 'Siempre' THEN 0
            WHEN 'Casi siempre' THEN 1
            WHEN 'Algunas veces' THEN 2
            WHEN 'Casi nunca' THEN 3
            WHEN 'Nunca' THEN 4
        END) AS `pregunta_33`,
       (CASE `forma_b`.`pregunta_34`
            WHEN 'Siempre' THEN 0
            WHEN 'Casi siempre' THEN 1
            WHEN 'Algunas veces' THEN 2
            WHEN 'Casi nunca' THEN 3
            WHEN 'Nunca' THEN 4
        END) AS `pregunta_34`,
       (CASE `forma_b`.`pregunta_35`
            WHEN 'Siempre' THEN 0
            WHEN 'Casi siempre' THEN 1
            WHEN 'Algunas veces' THEN 2
            WHEN 'Casi nunca' THEN 3
            WHEN 'Nunca' THEN 4
        END) AS `pregunta_35`,
       (CASE `forma_b`.`pregunta_36`
            WHEN 'Siempre' THEN 0
            WHEN 'Casi siempre' THEN 1
            WHEN 'Algunas veces' THEN 2
            WHEN 'Casi nunca' THEN 3
            WHEN 'Nunca' THEN 4
        END) AS `pregunta_36`,
       (CASE `forma_b`.`pregunta_37`
            WHEN 'Siempre' THEN 0
            WHEN 'Casi siempre' THEN 1
            WHEN 'Algunas veces' THEN 2
            WHEN 'Casi nunca' THEN 3
            WHEN 'Nunca' THEN 4
        END) AS `pregunta_37`,
       (CASE `forma_b`.`pregunta_38`
            WHEN 'Siempre' THEN 0
            WHEN 'Casi siempre' THEN 1
            WHEN 'Algunas veces' THEN 2
            WHEN 'Casi nunca' THEN 3
            WHEN 'Nunca' THEN 4
        END) AS `pregunta_38`,
       (CASE `forma_b`.`pregunta_39`
            WHEN 'Siempre' THEN 0
            WHEN 'Casi siempre' THEN 1
            WHEN 'Algunas veces' THEN 2
            WHEN 'Casi nunca' THEN 3
            WHEN 'Nunca' THEN 4
        END) AS `pregunta_39`,
       (CASE `forma_b`.`pregunta_40`
            WHEN 'Siempre' THEN 0
            WHEN 'Casi siempre' THEN 1
            WHEN 'Algunas veces' THEN 2
            WHEN 'Casi nunca' THEN 3
            WHEN 'Nunca' THEN 4
        END) AS `pregunta_40`,
       (CASE `forma_b`.`pregunta_41`
            WHEN 'Siempre' THEN 0
            WHEN 'Casi siempre' THEN 1
            WHEN 'Algunas veces' THEN 2
            WHEN 'Casi nunca' THEN 3
            WHEN 'Nunca' THEN 4
        END) AS `pregunta_41`,
       (CASE `forma_b`.`pregunta_42`
            WHEN 'Siempre' THEN 0
            WHEN 'Casi siempre' THEN 1
            WHEN 'Algunas veces' THEN 2
            WHEN 'Casi nunca' THEN 3
            WHEN 'Nunca' THEN 4
        END) AS `pregunta_42`,
       (CASE `forma_b`.`pregunta_43`
            WHEN 'Siempre' THEN 0
            WHEN 'Casi siempre' THEN 1
            WHEN 'Algunas veces' THEN 2
            WHEN 'Casi nunca' THEN 3
            WHEN 'Nunca' THEN 4
        END) AS `pregunta_43`,
       (CASE `forma_b`.`pregunta_44`
            WHEN 'Siempre' THEN 0
            WHEN 'Casi siempre' THEN 1
            WHEN 'Algunas veces' THEN 2
            WHEN 'Casi nunca' THEN 3
            WHEN 'Nunca' THEN 4
        END) AS `pregunta_44`,
       (CASE `forma_b`.`pregunta_45`
            WHEN 'Siempre' THEN 0
            WHEN 'Casi siempre' THEN 1
            WHEN 'Algunas veces' THEN 2
            WHEN 'Casi nunca' THEN 3
            WHEN 'Nunca' THEN 4
        END) AS `pregunta_45`,
       (CASE `forma_b`.`pregunta_46`
            WHEN 'Siempre' THEN 0
            WHEN 'Casi siempre' THEN 1
            WHEN 'Algunas veces' THEN 2
            WHEN 'Casi nunca' THEN 3
            WHEN 'Nunca' THEN 4
        END) AS `pregunta_46`,
       (CASE `forma_b`.`pregunta_47`
            WHEN 'Siempre' THEN 0
            WHEN 'Casi siempre' THEN 1
            WHEN 'Algunas veces' THEN 2
            WHEN 'Casi nunca' THEN 3
            WHEN 'Nunca' THEN 4
        END) AS `pregunta_47`,
       (CASE `forma_b`.`pregunta_48`
            WHEN 'Siempre' THEN 0
            WHEN 'Casi siempre' THEN 1
            WHEN 'Algunas veces' THEN 2
            WHEN 'Casi nunca' THEN 3
            WHEN 'Nunca' THEN 4
        END) AS `pregunta_48`,
       (CASE `forma_b`.`pregunta_49`
            WHEN 'Siempre' THEN 0
            WHEN 'Casi siempre' THEN 1
            WHEN 'Algunas veces' THEN 2
            WHEN 'Casi nunca' THEN 3
            WHEN 'Nunca' THEN 4
        END) AS `pregunta_49`,
       (CASE `forma_b`.`pregunta_50`
            WHEN 'Siempre' THEN 0
            WHEN 'Casi siempre' THEN 1
            WHEN 'Algunas veces' THEN 2
            WHEN 'Casi nunca' THEN 3
            WHEN 'Nunca' THEN 4
        END) AS `pregunta_50`,
       (CASE `forma_b`.`pregunta_51`
            WHEN 'Siempre' THEN 0
            WHEN 'Casi siempre' THEN 1
            WHEN 'Algunas veces' THEN 2
            WHEN 'Casi nunca' THEN 3
            WHEN 'Nunca' THEN 4
        END) AS `pregunta_51`,
       (CASE `forma_b`.`pregunta_52`
            WHEN 'Siempre' THEN 0
            WHEN 'Casi siempre' THEN 1
            WHEN 'Algunas veces' THEN 2
            WHEN 'Casi nunca' THEN 3
            WHEN 'Nunca' THEN 4
        END) AS `pregunta_52`,
       (CASE `forma_b`.`pregunta_53`
            WHEN 'Siempre' THEN 0
            WHEN 'Casi siempre' THEN 1
            WHEN 'Algunas veces' THEN 2
            WHEN 'Casi nunca' THEN 3
            WHEN 'Nunca' THEN 4
        END) AS `pregunta_53`,
       (CASE `forma_b`.`pregunta_54`
            WHEN 'Siempre' THEN 0
            WHEN 'Casi siempre' THEN 1
            WHEN 'Algunas veces' THEN 2
            WHEN 'Casi nunca' THEN 3
            WHEN 'Nunca' THEN 4
        END) AS `pregunta_54`,
       (CASE `forma_b`.`pregunta_55`
            WHEN 'Siempre' THEN 0
            WHEN 'Casi siempre' THEN 1
            WHEN 'Algunas veces' THEN 2
            WHEN 'Casi nunca' THEN 3
            WHEN 'Nunca' THEN 4
        END) AS `pregunta_55`,
       (CASE `forma_b`.`pregunta_56`
            WHEN 'Siempre' THEN 0
            WHEN 'Casi siempre' THEN 1
            WHEN 'Algunas veces' THEN 2
            WHEN 'Casi nunca' THEN 3
            WHEN 'Nunca' THEN 4
        END) AS `pregunta_56`,
       (CASE `forma_b`.`pregunta_57`
            WHEN 'Siempre' THEN 0
            WHEN 'Casi siempre' THEN 1
            WHEN 'Algunas veces' THEN 2
            WHEN 'Casi nunca' THEN 3
            WHEN 'Nunca' THEN 4
        END) AS `pregunta_57`,
       (CASE `forma_b`.`pregunta_58`
            WHEN 'Siempre' THEN 0
            WHEN 'Casi siempre' THEN 1
            WHEN 'Algunas veces' THEN 2
            WHEN 'Casi nunca' THEN 3
            WHEN 'Nunca' THEN 4
        END) AS `pregunta_58`,
       (CASE `forma_b`.`pregunta_59`
            WHEN 'Siempre' THEN 0
            WHEN 'Casi siempre' THEN 1
            WHEN 'Algunas veces' THEN 2
            WHEN 'Casi nunca' THEN 3
            WHEN 'Nunca' THEN 4
        END) AS `pregunta_59`,
       (CASE `forma_b`.`pregunta_60`
            WHEN 'Siempre' THEN 0
            WHEN 'Casi siempre' THEN 1
            WHEN 'Algunas veces' THEN 2
            WHEN 'Casi nunca' THEN 3
            WHEN 'Nunca' THEN 4
        END) AS `pregunta_60`,
       (CASE `forma_b`.`pregunta_61`
            WHEN 'Siempre' THEN 0
            WHEN 'Casi siempre' THEN 1
            WHEN 'Algunas veces' THEN 2
            WHEN 'Casi nunca' THEN 3
            WHEN 'Nunca' THEN 4
        END) AS `pregunta_61`,
       (CASE `forma_b`.`pregunta_62`
            WHEN 'Siempre' THEN 0
            WHEN 'Casi siempre' THEN 1
            WHEN 'Algunas veces' THEN 2
            WHEN 'Casi nunca' THEN 3
            WHEN 'Nunca' THEN 4
        END) AS `pregunta_62`,
       (CASE `forma_b`.`pregunta_63`
            WHEN 'Siempre' THEN 0
            WHEN 'Casi siempre' THEN 1
            WHEN 'Algunas veces' THEN 2
            WHEN 'Casi nunca' THEN 3
            WHEN 'Nunca' THEN 4
        END) AS `pregunta_63`,
       (CASE `forma_b`.`pregunta_64`
            WHEN 'Siempre' THEN 0
            WHEN 'Casi siempre' THEN 1
            WHEN 'Algunas veces' THEN 2
            WHEN 'Casi nunca' THEN 3
            WHEN 'Nunca' THEN 4
        END) AS `pregunta_64`,
       (CASE `forma_b`.`pregunta_65`
            WHEN 'Siempre' THEN 0
            WHEN 'Casi siempre' THEN 1
            WHEN 'Algunas veces' THEN 2
            WHEN 'Casi nunca' THEN 3
            WHEN 'Nunca' THEN 4
        END) AS `pregunta_65`,
       (CASE `forma_b`.`pregunta_66`
            WHEN 'Siempre' THEN 4
            WHEN 'Casi siempre' THEN 3
            WHEN 'Algunas veces' THEN 2
            WHEN 'Casi nunca' THEN 1
            WHEN 'Nunca' THEN 0
        END) AS `pregunta_66`,
       (CASE `forma_b`.`pregunta_67`
            WHEN 'Siempre' THEN 0
            WHEN 'Casi siempre' THEN 1
            WHEN 'Algunas veces' THEN 2
            WHEN 'Casi nunca' THEN 3
            WHEN 'Nunca' THEN 4
        END) AS `pregunta_67`,
       (CASE `forma_b`.`pregunta_68`
            WHEN 'Siempre' THEN 0
            WHEN 'Casi siempre' THEN 1
            WHEN 'Algunas veces' THEN 2
            WHEN 'Casi nunca' THEN 3
            WHEN 'Nunca' THEN 4
        END) AS `pregunta_68`,
       (CASE `forma_b`.`pregunta_69`
            WHEN 'Siempre' THEN 0
            WHEN 'Casi siempre' THEN 1
            WHEN 'Algunas veces' THEN 2
            WHEN 'Casi nunca' THEN 3
            WHEN 'Nunca' THEN 4
        END) AS `pregunta_69`,
       (CASE `forma_b`.`pregunta_70`
            WHEN 'Siempre' THEN 0
            WHEN 'Casi siempre' THEN 1
            WHEN 'Algunas veces' THEN 2
            WHEN 'Casi nunca' THEN 3
            WHEN 'Nunca' THEN 4
        END) AS `pregunta_70`,
       (CASE `forma_b`.`pregunta_71`
            WHEN 'Siempre' THEN 0
            WHEN 'Casi siempre' THEN 1
            WHEN 'Algunas veces' THEN 2
            WHEN 'Casi nunca' THEN 3
            WHEN 'Nunca' THEN 4
        END) AS `pregunta_71`,
       (CASE `forma_b`.`pregunta_72`
            WHEN 'Siempre' THEN 0
            WHEN 'Casi siempre' THEN 1
            WHEN 'Algunas veces' THEN 2
            WHEN 'Casi nunca' THEN 3
            WHEN 'Nunca' THEN 4
        END) AS `pregunta_72`,
       (CASE `forma_b`.`pregunta_73`
            WHEN 'Siempre' THEN 0
            WHEN 'Casi siempre' THEN 1
            WHEN 'Algunas veces' THEN 2
            WHEN 'Casi nunca' THEN 3
            WHEN 'Nunca' THEN 4
        END) AS `pregunta_73`,
       (CASE `forma_b`.`pregunta_74`
            WHEN 'Siempre' THEN 0
            WHEN 'Casi siempre' THEN 1
            WHEN 'Algunas veces' THEN 2
            WHEN 'Casi nunca' THEN 3
            WHEN 'Nunca' THEN 4
        END) AS `pregunta_74`,
       (CASE `forma_b`.`pregunta_75`
            WHEN 'Siempre' THEN 0
            WHEN 'Casi siempre' THEN 1
            WHEN 'Algunas veces' THEN 2
            WHEN 'Casi nunca' THEN 3
            WHEN 'Nunca' THEN 4
        END) AS `pregunta_75`,
       (CASE `forma_b`.`pregunta_76`
            WHEN 'Siempre' THEN 0
            WHEN 'Casi siempre' THEN 1
            WHEN 'Algunas veces' THEN 2
            WHEN 'Casi nunca' THEN 3
            WHEN 'Nunca' THEN 4
        END) AS `pregunta_76`,
       (CASE `forma_b`.`pregunta_77`
            WHEN 'Siempre' THEN 0
            WHEN 'Casi siempre' THEN 1
            WHEN 'Algunas veces' THEN 2
            WHEN 'Casi nunca' THEN 3
            WHEN 'Nunca' THEN 4
        END) AS `pregunta_77`,
       (CASE `forma_b`.`pregunta_78`
            WHEN 'Siempre' THEN 0
            WHEN 'Casi siempre' THEN 1
            WHEN 'Algunas veces' THEN 2
            WHEN 'Casi nunca' THEN 3
            WHEN 'Nunca' THEN 4
        END) AS `pregunta_78`,
       (CASE `forma_b`.`pregunta_79`
            WHEN 'Siempre' THEN 0
            WHEN 'Casi siempre' THEN 1
            WHEN 'Algunas veces' THEN 2
            WHEN 'Casi nunca' THEN 3
            WHEN 'Nunca' THEN 4
        END) AS `pregunta_79`,
       (CASE `forma_b`.`pregunta_80`
            WHEN 'Siempre' THEN 0
            WHEN 'Casi siempre' THEN 1
            WHEN 'Algunas veces' THEN 2
            WHEN 'Casi nunca' THEN 3
            WHEN 'Nunca' THEN 4
        END) AS `pregunta_80`,
       (CASE `forma_b`.`pregunta_81`
            WHEN 'Siempre' THEN 0
            WHEN 'Casi siempre' THEN 1
            WHEN 'Algunas veces' THEN 2
            WHEN 'Casi nunca' THEN 3
            WHEN 'Nunca' THEN 4
        END) AS `pregunta_81`,
       (CASE `forma_b`.`pregunta_82`
            WHEN 'Siempre' THEN 0
            WHEN 'Casi siempre' THEN 1
            WHEN 'Algunas veces' THEN 2
            WHEN 'Casi nunca' THEN 3
            WHEN 'Nunca' THEN 4
        END) AS `pregunta_82`,
       (CASE `forma_b`.`pregunta_83`
            WHEN 'Siempre' THEN 0
            WHEN 'Casi siempre' THEN 1
            WHEN 'Algunas veces' THEN 2
            WHEN 'Casi nunca' THEN 3
            WHEN 'Nunca' THEN 4
        END) AS `pregunta_83`,
       (CASE `forma_b`.`pregunta_84`
            WHEN 'Siempre' THEN 0
            WHEN 'Casi siempre' THEN 1
            WHEN 'Algunas veces' THEN 2
            WHEN 'Casi nunca' THEN 3
            WHEN 'Nunca' THEN 4
        END) AS `pregunta_84`,
       (CASE `forma_b`.`pregunta_85`
            WHEN 'Siempre' THEN 0
            WHEN 'Casi siempre' THEN 1
            WHEN 'Algunas veces' THEN 2
            WHEN 'Casi nunca' THEN 3
            WHEN 'Nunca' THEN 4
        END) AS `pregunta_85`,
       (CASE `forma_b`.`pregunta_86`
            WHEN 'Siempre' THEN 0
            WHEN 'Casi siempre' THEN 1
            WHEN 'Algunas veces' THEN 2
            WHEN 'Casi nunca' THEN 3
            WHEN 'Nunca' THEN 4
        END) AS `pregunta_86`,
       (CASE `forma_b`.`pregunta_87`
            WHEN 'Siempre' THEN 0
            WHEN 'Casi siempre' THEN 1
            WHEN 'Algunas veces' THEN 2
            WHEN 'Casi nunca' THEN 3
            WHEN 'Nunca' THEN 4
        END) AS `pregunta_87`,
       (CASE `forma_b`.`pregunta_88`
            WHEN 'Siempre' THEN 0
            WHEN 'Casi siempre' THEN 1
            WHEN 'Algunas veces' THEN 2
            WHEN 'Casi nunca' THEN 3
            WHEN 'Nunca' THEN 4
        END) AS `pregunta_88`,
       (CASE `forma_b`.`pregunta_89`
            WHEN 'Siempre' THEN 4
            WHEN 'Casi siempre' THEN 3
            WHEN 'Algunas veces' THEN 2
            WHEN 'Casi nunca' THEN 1
            WHEN 'Nunca' THEN 0
            ELSE 0 
        END) AS `pregunta_89`,
       (CASE `forma_b`.`pregunta_90`
            WHEN 'Siempre' THEN 4
            WHEN 'Casi siempre' THEN 3
            WHEN 'Algunas veces' THEN 2
            WHEN 'Casi nunca' THEN 1
            WHEN 'Nunca' THEN 0
            ELSE 0 
        END) AS `pregunta_90`,
       (CASE `forma_b`.`pregunta_91`
            WHEN 'Siempre' THEN 4
            WHEN 'Casi siempre' THEN 3
            WHEN 'Algunas veces' THEN 2
            WHEN 'Casi nunca' THEN 1
            WHEN 'Nunca' THEN 0
            ELSE 0 
        END) AS `pregunta_91`,
       (CASE `forma_b`.`pregunta_92`
            WHEN 'Siempre' THEN 4
            WHEN 'Casi siempre' THEN 3
            WHEN 'Algunas veces' THEN 2
            WHEN 'Casi nunca' THEN 1
            WHEN 'Nunca' THEN 0
            ELSE 0 
        END) AS `pregunta_92`,
       (CASE `forma_b`.`pregunta_93`
            WHEN 'Siempre' THEN 4
            WHEN 'Casi siempre' THEN 3
            WHEN 'Algunas veces' THEN 2
            WHEN 'Casi nunca' THEN 1
            WHEN 'Nunca' THEN 0
            ELSE 0 
        END) AS `pregunta_93`,
       (CASE `forma_b`.`pregunta_94`
            WHEN 'Siempre' THEN 4
            WHEN 'Casi siempre' THEN 3
            WHEN 'Algunas veces' THEN 2
            WHEN 'Casi nunca' THEN 1
            WHEN 'Nunca' THEN 0
            ELSE 0 
        END) AS `pregunta_94`,
       (CASE `forma_b`.`pregunta_95`
            WHEN 'Siempre' THEN 4
            WHEN 'Casi siempre' THEN 3
            WHEN 'Algunas veces' THEN 2
            WHEN 'Casi nunca' THEN 1
            WHEN 'Nunca' THEN 0
            ELSE 0 
        END) AS `pregunta_95`,
       (CASE `forma_b`.`pregunta_96`
            WHEN 'Siempre' THEN 4
            WHEN 'Casi siempre' THEN 3
            WHEN 'Algunas veces' THEN 2
            WHEN 'Casi nunca' THEN 1
            WHEN 'Nunca' THEN 0
            ELSE 0 
        END) AS `pregunta_96`,
       (CASE `forma_b`.`pregunta_97`
            WHEN 'Siempre' THEN 0
            WHEN 'Casi siempre' THEN 1
            WHEN 'Algunas veces' THEN 2
            WHEN 'Casi nunca' THEN 3
            WHEN 'Nunca' THEN 4
            ELSE 0 
        END) AS `pregunta_97`
FROM forma_b