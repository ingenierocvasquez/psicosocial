CREATE VIEW cal_items_fa AS SELECT fec_aplica, nro_documento,
	 CASE pregunta_1 WHEN 'Siempre' THEN 4
                    WHEN 'Casi siempre' THEN 3
                    WHEN 'Algunas veces' THEN 2
                    WHEN 'Casi nunca' THEN 1
                    WHEN 'Nunca' THEN 0 END AS pregunta_1,
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
    CASE pregunta_6 WHEN 'Siempre' THEN 0 
                   WHEN 'Casi siempre' THEN 1 
                   WHEN 'Algunas veces' THEN 2 
                   WHEN 'Casi nunca' THEN 3 
                   WHEN 'Nunca' THEN 4 END AS pregunta_6,
    CASE pregunta_7 WHEN 'Siempre' THEN 4
                    WHEN 'Casi siempre' THEN 3
                    WHEN 'Algunas veces' THEN 2
                    WHEN 'Casi nunca' THEN 1
                    WHEN 'Nunca' THEN 0 END AS pregunta_7,
    CASE pregunta_8 WHEN 'Siempre' THEN 4
                    WHEN 'Casi siempre' THEN 3
                    WHEN 'Algunas veces' THEN 2
                    WHEN 'Casi nunca' THEN 1
                    WHEN 'Nunca' THEN 0 END AS pregunta_8,
    CASE pregunta_9 WHEN 'Siempre' THEN 0 
                   WHEN 'Casi siempre' THEN 1 
                   WHEN 'Algunas veces' THEN 2 
                   WHEN 'Casi nunca' THEN 3 
                   WHEN 'Nunca' THEN 4 END AS pregunta_9,
    CASE pregunta_10 WHEN 'Siempre' THEN 4
                     WHEN 'Casi siempre' THEN 3
                     WHEN 'Algunas veces' THEN 2
                     WHEN 'Casi nunca' THEN 1
                     WHEN 'Nunca' THEN 0 END AS pregunta_10,
    CASE pregunta_11 WHEN 'Siempre' THEN 4
                     WHEN 'Casi siempre' THEN 3
                     WHEN 'Algunas veces' THEN 2
                     WHEN 'Casi nunca' THEN 1
                     WHEN 'Nunca' THEN 0 END AS pregunta_11,
    CASE pregunta_12 WHEN 'Siempre' THEN 0 
                    WHEN 'Casi siempre' THEN 1 
                    WHEN 'Algunas veces' THEN 2 
                    WHEN 'Casi nunca' THEN 3 
                    WHEN 'Nunca' THEN 4 END AS pregunta_12,
   CASE pregunta_13 WHEN 'Siempre' THEN 4
                     WHEN 'Casi siempre' THEN 3
                     WHEN 'Algunas veces' THEN 2
                     WHEN 'Casi nunca' THEN 1
                     WHEN 'Nunca' THEN 0 END AS pregunta_13,
    CASE pregunta_14 WHEN 'Siempre' THEN 0 
                    WHEN 'Casi siempre' THEN 1 
                    WHEN 'Algunas veces' THEN 2 
                    WHEN 'Casi nunca' THEN 3 
                    WHEN 'Nunca' THEN 4 END AS pregunta_14,
                    CASE pregunta_15 WHEN 'Siempre' THEN 4
                     WHEN 'Casi siempre' THEN 3
                     WHEN 'Algunas veces' THEN 2
                     WHEN 'Casi nunca' THEN 1
                     WHEN 'Nunca' THEN 0 END AS pregunta_15,
    CASE pregunta_16 WHEN 'Siempre' THEN 4
                     WHEN 'Casi siempre' THEN 3
                     WHEN 'Algunas veces' THEN 2
                     WHEN 'Casi nunca' THEN 1
                     WHEN 'Nunca' THEN 0 END AS pregunta_16,
    CASE pregunta_17 WHEN 'Siempre' THEN 4
                     WHEN 'Casi siempre' THEN 3
                     WHEN 'Algunas veces' THEN 2
                     WHEN 'Casi nunca' THEN 1
                     WHEN 'Nunca' THEN 0 END AS pregunta_17,
    CASE pregunta_18 WHEN 'Siempre' THEN 4
                     WHEN 'Casi siempre' THEN 3
                     WHEN 'Algunas veces' THEN 2
                     WHEN 'Casi nunca' THEN 1
                     WHEN 'Nunca' THEN 0 END AS pregunta_18,
    CASE pregunta_19 WHEN 'Siempre' THEN 4
                     WHEN 'Casi siempre' THEN 3
                     WHEN 'Algunas veces' THEN 2
                     WHEN 'Casi nunca' THEN 1
                     WHEN 'Nunca' THEN 0 END AS pregunta_19,
    CASE pregunta_20 WHEN 'Siempre' THEN 4
                     WHEN 'Casi siempre' THEN 3
                     WHEN 'Algunas veces' THEN 2
                     WHEN 'Casi nunca' THEN 1
                     WHEN 'Nunca' THEN 0 END AS pregunta_20,
    CASE pregunta_21 WHEN 'Siempre' THEN 4
                     WHEN 'Casi siempre' THEN 3
                     WHEN 'Algunas veces' THEN 2
                     WHEN 'Casi nunca' THEN 1
                     WHEN 'Nunca' THEN 0 END AS pregunta_21,
    CASE pregunta_22 WHEN 'Siempre' THEN 4
                     WHEN 'Casi siempre' THEN 3
                     WHEN 'Algunas veces' THEN 2
                     WHEN 'Casi nunca' THEN 1
                     WHEN 'Nunca' THEN 0 END AS pregunta_22,
    CASE pregunta_23 WHEN 'Siempre' THEN 4
                     WHEN 'Casi siempre' THEN 3
                     WHEN 'Algunas veces' THEN 2
                     WHEN 'Casi nunca' THEN 1
                     WHEN 'Nunca' THEN 0 END AS pregunta_23,
    CASE pregunta_24 WHEN 'Siempre' THEN 4
                     WHEN 'Casi siempre' THEN 3
                     WHEN 'Algunas veces' THEN 2
                     WHEN 'Casi nunca' THEN 1
                     WHEN 'Nunca' THEN 0 END AS pregunta_24,
    CASE pregunta_25 WHEN 'Siempre' THEN 4
                     WHEN 'Casi siempre' THEN 3
                     WHEN 'Algunas veces' THEN 2
                     WHEN 'Casi nunca' THEN 1
                     WHEN 'Nunca' THEN 0 END AS pregunta_25,
    CASE pregunta_26 WHEN 'Siempre' THEN 4
                     WHEN 'Casi siempre' THEN 3
                     WHEN 'Algunas veces' THEN 2
                     WHEN 'Casi nunca' THEN 1
                     WHEN 'Nunca' THEN 0 END AS pregunta_26,
    CASE pregunta_27 WHEN 'Siempre' THEN 4
                     WHEN 'Casi siempre' THEN 3
                     WHEN 'Algunas veces' THEN 2
                     WHEN 'Casi nunca' THEN 1
                     WHEN 'Nunca' THEN 0 END AS pregunta_27,
    CASE pregunta_28 WHEN 'Siempre' THEN 4
                     WHEN 'Casi siempre' THEN 3
                     WHEN 'Algunas veces' THEN 2
                     WHEN 'Casi nunca' THEN 1
                     WHEN 'Nunca' THEN 0 END AS pregunta_28,
    CASE pregunta_29 WHEN 'Siempre' THEN 4
                     WHEN 'Casi siempre' THEN 3
                     WHEN 'Algunas veces' THEN 2
                     WHEN 'Casi nunca' THEN 1
                     WHEN 'Nunca' THEN 0 END AS pregunta_29,
    CASE pregunta_30 WHEN 'Siempre' THEN 4
                     WHEN 'Casi siempre' THEN 3
                     WHEN 'Algunas veces' THEN 2
                     WHEN 'Casi nunca' THEN 1
                     WHEN 'Nunca' THEN 0 END AS pregunta_30,
    CASE pregunta_31 WHEN 'Siempre' THEN 4
                     WHEN 'Casi siempre' THEN 3
                     WHEN 'Algunas veces' THEN 2
                     WHEN 'Casi nunca' THEN 1
                     WHEN 'Nunca' THEN 0 END AS pregunta_31,
    CASE pregunta_32 WHEN 'Siempre' THEN 0 
                    WHEN 'Casi siempre' THEN 1 
                    WHEN 'Algunas veces' THEN 2 
                    WHEN 'Casi nunca' THEN 3 
                    WHEN 'Nunca' THEN 4 END AS pregunta_32,
    CASE pregunta_33 WHEN 'Siempre' THEN 4
                     WHEN 'Casi siempre' THEN 3
                     WHEN 'Algunas veces' THEN 2
                     WHEN 'Casi nunca' THEN 1
                     WHEN 'Nunca' THEN 0 END AS pregunta_33,
    CASE pregunta_34 WHEN 'Siempre' THEN 0 
                    WHEN 'Casi siempre' THEN 1 
                    WHEN 'Algunas veces' THEN 2 
                    WHEN 'Casi nunca' THEN 3 
                    WHEN 'Nunca' THEN 4 END AS pregunta_34,
    CASE pregunta_35 WHEN 'Siempre' THEN 4
                     WHEN 'Casi siempre' THEN 3
                     WHEN 'Algunas veces' THEN 2
                     WHEN 'Casi nunca' THEN 1
                     WHEN 'Nunca' THEN 0 END AS pregunta_35,
    CASE pregunta_36 WHEN 'Siempre' THEN 4
                     WHEN 'Casi siempre' THEN 3
                     WHEN 'Algunas veces' THEN 2
                     WHEN 'Casi nunca' THEN 1
                     WHEN 'Nunca' THEN 0 END AS pregunta_36,
    CASE pregunta_37 WHEN 'Siempre' THEN 4
                     WHEN 'Casi siempre' THEN 3
                     WHEN 'Algunas veces' THEN 2
                     WHEN 'Casi nunca' THEN 1
                     WHEN 'Nunca' THEN 0 END AS pregunta_37,
    CASE pregunta_38 WHEN 'Siempre' THEN 4
                     WHEN 'Casi siempre' THEN 3
                     WHEN 'Algunas veces' THEN 2
                     WHEN 'Casi nunca' THEN 1
                     WHEN 'Nunca' THEN 0 END AS pregunta_38,
    CASE pregunta_39 WHEN 'Siempre' THEN 0 
                    WHEN 'Casi siempre' THEN 1 
                    WHEN 'Algunas veces' THEN 2 
                    WHEN 'Casi nunca' THEN 3 
                    WHEN 'Nunca' THEN 4 END AS pregunta_39,
    CASE pregunta_40 WHEN 'Siempre' THEN 0 
                    WHEN 'Casi siempre' THEN 1 
                    WHEN 'Algunas veces' THEN 2 
                    WHEN 'Casi nunca' THEN 3 
                    WHEN 'Nunca' THEN 4 END AS pregunta_40,
    CASE pregunta_41 WHEN 'Siempre' THEN 0 
                    WHEN 'Casi siempre' THEN 1 
                    WHEN 'Algunas veces' THEN 2 
                    WHEN 'Casi nunca' THEN 3 
                    WHEN 'Nunca' THEN 4 END AS pregunta_41,
    CASE pregunta_42 WHEN 'Siempre' THEN 0 
                    WHEN 'Casi siempre' THEN 1 
                    WHEN 'Algunas veces' THEN 2 
                    WHEN 'Casi nunca' THEN 3 
                    WHEN 'Nunca' THEN 4 END AS pregunta_42,
    CASE pregunta_43 WHEN 'Siempre' THEN 0 
                    WHEN 'Casi siempre' THEN 1 
                    WHEN 'Algunas veces' THEN 2 
                    WHEN 'Casi nunca' THEN 3 
                    WHEN 'Nunca' THEN 4 END AS pregunta_43,
    CASE pregunta_44 WHEN 'Siempre' THEN 0 
                    WHEN 'Casi siempre' THEN 1 
                    WHEN 'Algunas veces' THEN 2 
                    WHEN 'Casi nunca' THEN 3 
                    WHEN 'Nunca' THEN 4 END AS pregunta_44,
    CASE pregunta_45 WHEN 'Siempre' THEN 0 
                    WHEN 'Casi siempre' THEN 1 
                    WHEN 'Algunas veces' THEN 2 
                    WHEN 'Casi nunca' THEN 3 
                    WHEN 'Nunca' THEN 4 END AS pregunta_45,
    CASE pregunta_46 WHEN 'Siempre' THEN 0 
                    WHEN 'Casi siempre' THEN 1 
                    WHEN 'Algunas veces' THEN 2 
                    WHEN 'Casi nunca' THEN 3 
                    WHEN 'Nunca' THEN 4 END AS pregunta_46,
    CASE pregunta_47 WHEN 'Siempre' THEN 0 
                    WHEN 'Casi siempre' THEN 1 
                    WHEN 'Algunas veces' THEN 2 
                    WHEN 'Casi nunca' THEN 3 
                    WHEN 'Nunca' THEN 4 END AS pregunta_47,
    CASE pregunta_48 WHEN 'Siempre' THEN 0 
                    WHEN 'Casi siempre' THEN 1 
                    WHEN 'Algunas veces' THEN 2 
                    WHEN 'Casi nunca' THEN 3 
                    WHEN 'Nunca' THEN 4 END AS pregunta_48,
    CASE pregunta_49 WHEN 'Siempre' THEN 0 
                    WHEN 'Casi siempre' THEN 1 
                    WHEN 'Algunas veces' THEN 2 
                    WHEN 'Casi nunca' THEN 3 
                    WHEN 'Nunca' THEN 4 END AS pregunta_49,
    CASE pregunta_50 WHEN 'Siempre' THEN 0 
                    WHEN 'Casi siempre' THEN 1 
                    WHEN 'Algunas veces' THEN 2 
                    WHEN 'Casi nunca' THEN 3 
                    WHEN 'Nunca' THEN 4 END AS pregunta_50,
    CASE pregunta_51 WHEN 'Siempre' THEN 0 
                    WHEN 'Casi siempre' THEN 1 
                    WHEN 'Algunas veces' THEN 2 
                    WHEN 'Casi nunca' THEN 3 
                    WHEN 'Nunca' THEN 4 END AS pregunta_51,
    CASE pregunta_52 WHEN 'Siempre' THEN 4
                     WHEN 'Casi siempre' THEN 3
                     WHEN 'Algunas veces' THEN 2
                     WHEN 'Casi nunca' THEN 1
                     WHEN 'Nunca' THEN 0 END AS pregunta_52,
    CASE pregunta_53 WHEN 'Siempre' THEN 0 
                    WHEN 'Casi siempre' THEN 1 
                    WHEN 'Algunas veces' THEN 2 
                    WHEN 'Casi nunca' THEN 3 
                    WHEN 'Nunca' THEN 4 END AS pregunta_53,
    CASE pregunta_54 WHEN 'Siempre' THEN 0 
                    WHEN 'Casi siempre' THEN 1 
                    WHEN 'Algunas veces' THEN 2 
                    WHEN 'Casi nunca' THEN 3 
                    WHEN 'Nunca' THEN 4 END AS pregunta_54,
    CASE pregunta_55 WHEN 'Siempre' THEN 0 
                    WHEN 'Casi siempre' THEN 1 
                    WHEN 'Algunas veces' THEN 2 
                    WHEN 'Casi nunca' THEN 3 
                    WHEN 'Nunca' THEN 4 END AS pregunta_55,
    CASE pregunta_56 WHEN 'Siempre' THEN 0 
                    WHEN 'Casi siempre' THEN 1 
                    WHEN 'Algunas veces' THEN 2 
                    WHEN 'Casi nunca' THEN 3 
                    WHEN 'Nunca' THEN 4 END AS pregunta_56,
    CASE pregunta_57 WHEN 'Siempre' THEN 0 
                    WHEN 'Casi siempre' THEN 1 
                    WHEN 'Algunas veces' THEN 2 
                    WHEN 'Casi nunca' THEN 3 
                    WHEN 'Nunca' THEN 4 END AS pregunta_57,
    CASE pregunta_58 WHEN 'Siempre' THEN 0 
                    WHEN 'Casi siempre' THEN 1 
                    WHEN 'Algunas veces' THEN 2 
                    WHEN 'Casi nunca' THEN 3 
                    WHEN 'Nunca' THEN 4 END AS pregunta_58,
    CASE pregunta_59 WHEN 'Siempre' THEN 0 
                    WHEN 'Casi siempre' THEN 1 
                    WHEN 'Algunas veces' THEN 2 
                    WHEN 'Casi nunca' THEN 3 
                    WHEN 'Nunca' THEN 4 END AS pregunta_59,
    CASE pregunta_60 WHEN 'Siempre' THEN 0 
                    WHEN 'Casi siempre' THEN 1 
                    WHEN 'Algunas veces' THEN 2 
                    WHEN 'Casi nunca' THEN 3 
                    WHEN 'Nunca' THEN 4 END AS pregunta_60,
    CASE pregunta_61 WHEN 'Siempre' THEN 0 
                    WHEN 'Casi siempre' THEN 1 
                    WHEN 'Algunas veces' THEN 2 
                    WHEN 'Casi nunca' THEN 3 
                    WHEN 'Nunca' THEN 4 END AS pregunta_61,
    CASE pregunta_62 WHEN 'Siempre' THEN 0 
                    WHEN 'Casi siempre' THEN 1 
                    WHEN 'Algunas veces' THEN 2 
                    WHEN 'Casi nunca' THEN 3 
                    WHEN 'Nunca' THEN 4 END AS pregunta_62,
    CASE pregunta_63 WHEN 'Siempre' THEN 0 
                    WHEN 'Casi siempre' THEN 1 
                    WHEN 'Algunas veces' THEN 2 
                    WHEN 'Casi nunca' THEN 3 
                    WHEN 'Nunca' THEN 4 END AS pregunta_63,
    CASE pregunta_64 WHEN 'Siempre' THEN 0 
                    WHEN 'Casi siempre' THEN 1 
                    WHEN 'Algunas veces' THEN 2 
                    WHEN 'Casi nunca' THEN 3 
                    WHEN 'Nunca' THEN 4 END AS pregunta_64,
   CASE pregunta_65 WHEN 'Siempre' THEN 0 
                    WHEN 'Casi siempre' THEN 1 
                    WHEN 'Algunas veces' THEN 2 
                    WHEN 'Casi nunca' THEN 3 
                    WHEN 'Nunca' THEN 4 END AS pregunta_65,
    CASE pregunta_66 WHEN 'Siempre' THEN 0 
                    WHEN 'Casi siempre' THEN 1 
                    WHEN 'Algunas veces' THEN 2 
                    WHEN 'Casi nunca' THEN 3 
                    WHEN 'Nunca' THEN 4 END AS pregunta_66,
    CASE pregunta_67 WHEN 'Siempre' THEN 0 
                    WHEN 'Casi siempre' THEN 1 
                    WHEN 'Algunas veces' THEN 2 
                    WHEN 'Casi nunca' THEN 3 
                    WHEN 'Nunca' THEN 4 END AS pregunta_67,
    CASE pregunta_68 WHEN 'Siempre' THEN 0 
                    WHEN 'Casi siempre' THEN 1 
                    WHEN 'Algunas veces' THEN 2 
                    WHEN 'Casi nunca' THEN 3 
                    WHEN 'Nunca' THEN 4 END AS pregunta_68,
    CASE pregunta_69 WHEN 'Siempre' THEN 0 
                    WHEN 'Casi siempre' THEN 1 
                    WHEN 'Algunas veces' THEN 2 
                    WHEN 'Casi nunca' THEN 3 
                    WHEN 'Nunca' THEN 4 END AS pregunta_69,
    CASE pregunta_70 WHEN 'Siempre' THEN 0 
                    WHEN 'Casi siempre' THEN 1 
                    WHEN 'Algunas veces' THEN 2 
                    WHEN 'Casi nunca' THEN 3 
                    WHEN 'Nunca' THEN 4 END AS pregunta_70,
    CASE pregunta_71 WHEN 'Siempre' THEN 0 
                    WHEN 'Casi siempre' THEN 1 
                    WHEN 'Algunas veces' THEN 2 
                    WHEN 'Casi nunca' THEN 3 
                    WHEN 'Nunca' THEN 4 END AS pregunta_71,
    CASE pregunta_72 WHEN 'Siempre' THEN 0 
                    WHEN 'Casi siempre' THEN 1 
                    WHEN 'Algunas veces' THEN 2 
                    WHEN 'Casi nunca' THEN 3 
                    WHEN 'Nunca' THEN 4 END AS pregunta_72,
    CASE pregunta_73 WHEN 'Siempre' THEN 0 
                    WHEN 'Casi siempre' THEN 1 
                    WHEN 'Algunas veces' THEN 2 
                    WHEN 'Casi nunca' THEN 3 
                    WHEN 'Nunca' THEN 4 END AS pregunta_73,
    CASE pregunta_74 WHEN 'Siempre' THEN 0 
                    WHEN 'Casi siempre' THEN 1 
                    WHEN 'Algunas veces' THEN 2 
                    WHEN 'Casi nunca' THEN 3 
                    WHEN 'Nunca' THEN 4 END AS pregunta_74,
    CASE pregunta_75 WHEN 'Siempre' THEN 0 
                    WHEN 'Casi siempre' THEN 1 
                    WHEN 'Algunas veces' THEN 2 
                    WHEN 'Casi nunca' THEN 3 
                    WHEN 'Nunca' THEN 4 END AS pregunta_75,
    CASE pregunta_76 WHEN 'Siempre' THEN 0 
                    WHEN 'Casi siempre' THEN 1 
                    WHEN 'Algunas veces' THEN 2 
                    WHEN 'Casi nunca' THEN 3 
                    WHEN 'Nunca' THEN 4 END AS pregunta_76,
    CASE pregunta_77 WHEN 'Siempre' THEN 0 
                    WHEN 'Casi siempre' THEN 1 
                    WHEN 'Algunas veces' THEN 2 
                    WHEN 'Casi nunca' THEN 3 
                    WHEN 'Nunca' THEN 4 END AS pregunta_77,
    CASE pregunta_78 WHEN 'Siempre' THEN 0 
                    WHEN 'Casi siempre' THEN 1 
                    WHEN 'Algunas veces' THEN 2 
                    WHEN 'Casi nunca' THEN 3 
                    WHEN 'Nunca' THEN 4 END AS pregunta_78,
    CASE pregunta_79 WHEN 'Siempre' THEN 0 
                    WHEN 'Casi siempre' THEN 1 
                    WHEN 'Algunas veces' THEN 2 
                    WHEN 'Casi nunca' THEN 3 
                    WHEN 'Nunca' THEN 4 END AS pregunta_79,
   CASE pregunta_80 WHEN 'Siempre' THEN 4
                     WHEN 'Casi siempre' THEN 3
                     WHEN 'Algunas veces' THEN 2
                     WHEN 'Casi nunca' THEN 1
                     WHEN 'Nunca' THEN 0 END AS pregunta_80,
    CASE pregunta_81 WHEN 'Siempre' THEN 0 
                    WHEN 'Casi siempre' THEN 1 
                    WHEN 'Algunas veces' THEN 2 
                    WHEN 'Casi nunca' THEN 3 
                    WHEN 'Nunca' THEN 4 END AS pregunta_81,
    CASE pregunta_82 WHEN 'Siempre' THEN 0 
                    WHEN 'Casi siempre' THEN 1 
                    WHEN 'Algunas veces' THEN 2 
                    WHEN 'Casi nunca' THEN 3 
                    WHEN 'Nunca' THEN 4 END AS pregunta_82,
    CASE pregunta_83 WHEN 'Siempre' THEN 0 
                    WHEN 'Casi siempre' THEN 1 
                    WHEN 'Algunas veces' THEN 2 
                    WHEN 'Casi nunca' THEN 3 
                    WHEN 'Nunca' THEN 4 END AS pregunta_83,
    CASE pregunta_84 WHEN 'Siempre' THEN 0 
                    WHEN 'Casi siempre' THEN 1 
                    WHEN 'Algunas veces' THEN 2 
                    WHEN 'Casi nunca' THEN 3 
                    WHEN 'Nunca' THEN 4 END AS pregunta_84,
    CASE pregunta_85 WHEN 'Siempre' THEN 0 
                    WHEN 'Casi siempre' THEN 1 
                    WHEN 'Algunas veces' THEN 2 
                    WHEN 'Casi nunca' THEN 3 
                    WHEN 'Nunca' THEN 4 END AS pregunta_85,
    CASE pregunta_86 WHEN 'Siempre' THEN 0 
                    WHEN 'Casi siempre' THEN 1 
                    WHEN 'Algunas veces' THEN 2 
                    WHEN 'Casi nunca' THEN 3 
                    WHEN 'Nunca' THEN 4 END AS pregunta_86,
    CASE pregunta_87 WHEN 'Siempre' THEN 0 
                    WHEN 'Casi siempre' THEN 1 
                    WHEN 'Algunas veces' THEN 2 
                    WHEN 'Casi nunca' THEN 3 
                    WHEN 'Nunca' THEN 4 END AS pregunta_87,
    CASE pregunta_88 WHEN 'Siempre' THEN 0 
                    WHEN 'Casi siempre' THEN 1 
                    WHEN 'Algunas veces' THEN 2 
                    WHEN 'Casi nunca' THEN 3 
                    WHEN 'Nunca' THEN 4 END AS pregunta_88,
    CASE pregunta_89 WHEN 'Siempre' THEN 0 
                    WHEN 'Casi siempre' THEN 1 
                    WHEN 'Algunas veces' THEN 2 
                    WHEN 'Casi nunca' THEN 3 
                    WHEN 'Nunca' THEN 4 END AS pregunta_89,
    CASE pregunta_90 WHEN 'Siempre' THEN 0 
                    WHEN 'Casi siempre' THEN 1 
                    WHEN 'Algunas veces' THEN 2 
                    WHEN 'Casi nunca' THEN 3 
                    WHEN 'Nunca' THEN 4 END AS pregunta_90,
    CASE pregunta_91 WHEN 'Siempre' THEN 0 
                    WHEN 'Casi siempre' THEN 1 
                    WHEN 'Algunas veces' THEN 2 
                    WHEN 'Casi nunca' THEN 3 
                    WHEN 'Nunca' THEN 4 END AS pregunta_91,
    CASE pregunta_92 WHEN 'Siempre' THEN 0 
                    WHEN 'Casi siempre' THEN 1 
                    WHEN 'Algunas veces' THEN 2 
                    WHEN 'Casi nunca' THEN 3 
                    WHEN 'Nunca' THEN 4 END AS pregunta_92,
    CASE pregunta_93 WHEN 'Siempre' THEN 0 
                    WHEN 'Casi siempre' THEN 1 
                    WHEN 'Algunas veces' THEN 2 
                    WHEN 'Casi nunca' THEN 3 
                    WHEN 'Nunca' THEN 4 END AS pregunta_93,
    CASE pregunta_94 WHEN 'Siempre' THEN 0 
                    WHEN 'Casi siempre' THEN 1 
                    WHEN 'Algunas veces' THEN 2 
                    WHEN 'Casi nunca' THEN 3 
                    WHEN 'Nunca' THEN 4 END AS pregunta_94,
    CASE pregunta_95 WHEN 'Siempre' THEN 0 
                    WHEN 'Casi siempre' THEN 1 
                    WHEN 'Algunas veces' THEN 2 
                    WHEN 'Casi nunca' THEN 3 
                    WHEN 'Nunca' THEN 4 END AS pregunta_95,
    CASE pregunta_96 WHEN 'Siempre' THEN 0 
                    WHEN 'Casi siempre' THEN 1 
                    WHEN 'Algunas veces' THEN 2 
                    WHEN 'Casi nunca' THEN 3 
                    WHEN 'Nunca' THEN 4 END AS pregunta_96,
    CASE pregunta_97 WHEN 'Siempre' THEN 0 
                    WHEN 'Casi siempre' THEN 1 
                    WHEN 'Algunas veces' THEN 2 
                    WHEN 'Casi nunca' THEN 3 
                    WHEN 'Nunca' THEN 4 END AS pregunta_97,
    CASE pregunta_98 WHEN 'Siempre' THEN 0 
                    WHEN 'Casi siempre' THEN 1 
                    WHEN 'Algunas veces' THEN 2 
                    WHEN 'Casi nunca' THEN 3 
                    WHEN 'Nunca' THEN 4 END AS pregunta_98,
    CASE pregunta_99 WHEN 'Siempre' THEN 0 
                    WHEN 'Casi siempre' THEN 1 
                    WHEN 'Algunas veces' THEN 2 
                    WHEN 'Casi nunca' THEN 3 
                    WHEN 'Nunca' THEN 4 END AS pregunta_99,
   CASE pregunta_100 WHEN 'Siempre' THEN 0 
                      WHEN 'Casi siempre' THEN 1 
                      WHEN 'Algunas veces' THEN 2 
                      WHEN 'Casi nunca' THEN 3 
                      WHEN 'Nunca' THEN 4 END AS pregunta_100,
    CASE pregunta_101 WHEN 'Siempre' THEN 0 
                      WHEN 'Casi siempre' THEN 1 
                      WHEN 'Algunas veces' THEN 2 
                      WHEN 'Casi nunca' THEN 3 
                      WHEN 'Nunca' THEN 4 END AS pregunta_101,
    CASE pregunta_102 WHEN 'Siempre' THEN 0 
                      WHEN 'Casi siempre' THEN 1 
                      WHEN 'Algunas veces' THEN 2 
                      WHEN 'Casi nunca' THEN 3 
                      WHEN 'Nunca' THEN 4 END AS pregunta_102,
    CASE pregunta_103 WHEN 'Siempre' THEN 0 
                      WHEN 'Casi siempre' THEN 1 
                      WHEN 'Algunas veces' THEN 2 
                      WHEN 'Casi nunca' THEN 3 
                      WHEN 'Nunca' THEN 4 END AS pregunta_103,
    CASE pregunta_104 WHEN 'Siempre' THEN 0 
                      WHEN 'Casi siempre' THEN 1 
                      WHEN 'Algunas veces' THEN 2 
                      WHEN 'Casi nunca' THEN 3 
                      WHEN 'Nunca' THEN 4 END AS pregunta_104,
    CASE pregunta_105 WHEN 'Siempre' THEN 0 
                      WHEN 'Casi siempre' THEN 1 
                      WHEN 'Algunas veces' THEN 2 
                      WHEN 'Casi nunca' THEN 3 
                      WHEN 'Nunca' THEN 4 END AS pregunta_105,
    CASE pregunta_106 WHEN 'Siempre' THEN 4
                      WHEN 'Casi siempre' THEN 3
                      WHEN 'Algunas veces' THEN 2
                      WHEN 'Casi nunca' THEN 1
                      WHEN 'Nunca' THEN 0 END AS pregunta_106,
    CASE pregunta_107 WHEN 'Siempre' THEN 4
                      WHEN 'Casi siempre' THEN 3
                      WHEN 'Algunas veces' THEN 2
                      WHEN 'Casi nunca' THEN 1
                      WHEN 'Nunca' THEN 0 END AS pregunta_107,
    CASE pregunta_108 WHEN 'Siempre' THEN 4
                      WHEN 'Casi siempre' THEN 3
                      WHEN 'Algunas veces' THEN 2
                      WHEN 'Casi nunca' THEN 1
                      WHEN 'Nunca' THEN 0 END AS pregunta_108,
    CASE pregunta_109 WHEN 'Siempre' THEN 4
                      WHEN 'Casi siempre' THEN 3
                      WHEN 'Algunas veces' THEN 2
                      WHEN 'Casi nunca' THEN 1
                      WHEN 'Nunca' THEN 0 END AS pregunta_109,
    CASE pregunta_110 WHEN 'Siempre' THEN 4
                      WHEN 'Casi siempre' THEN 3
                      WHEN 'Algunas veces' THEN 2
                      WHEN 'Casi nunca' THEN 1
                      WHEN 'Nunca' THEN 0 END AS pregunta_110,
    CASE pregunta_111 WHEN 'Siempre' THEN 4
                      WHEN 'Casi siempre' THEN 3
                      WHEN 'Algunas veces' THEN 2
                      WHEN 'Casi nunca' THEN 1
                      WHEN 'Nunca' THEN 0 END AS pregunta_111,
    CASE pregunta_112 WHEN 'Siempre' THEN 4
                      WHEN 'Casi siempre' THEN 3
                      WHEN 'Algunas veces' THEN 2
                      WHEN 'Casi nunca' THEN 1
                      WHEN 'Nunca' THEN 0 END AS pregunta_112,
    CASE pregunta_113 WHEN 'Siempre' THEN 4
                      WHEN 'Casi siempre' THEN 3
                      WHEN 'Algunas veces' THEN 2
                      WHEN 'Casi nunca' THEN 1
                      WHEN 'Nunca' THEN 0 END AS pregunta_113,
    CASE pregunta_114 WHEN 'Siempre' THEN 4
                      WHEN 'Casi siempre' THEN 3
                      WHEN 'Algunas veces' THEN 2
                      WHEN 'Casi nunca' THEN 1
                      WHEN 'Nunca' THEN 0 END AS pregunta_114,
    CASE pregunta_115 WHEN 'Siempre' THEN 4
                      WHEN 'Casi siempre' THEN 3
                      WHEN 'Algunas veces' THEN 2
                      WHEN 'Casi nunca' THEN 1
                      WHEN 'Nunca' THEN 0 END AS pregunta_115,
    CASE pregunta_116 WHEN 'Siempre' THEN 4
                      WHEN 'Casi siempre' THEN 3
                      WHEN 'Algunas veces' THEN 2
                      WHEN 'Casi nunca' THEN 1
                      WHEN 'Nunca' THEN 0 END AS pregunta_116,
    CASE pregunta_117 WHEN 'Siempre' THEN 4
                      WHEN 'Casi siempre' THEN 3
                      WHEN 'Algunas veces' THEN 2
                      WHEN 'Casi nunca' THEN 1
                      WHEN 'Nunca' THEN 0 END AS pregunta_117,
    CASE pregunta_118 WHEN 'Siempre' THEN 4
                      WHEN 'Casi siempre' THEN 3
                      WHEN 'Algunas veces' THEN 2
                      WHEN 'Casi nunca' THEN 1
                      WHEN 'Nunca' THEN 0 END AS pregunta_118,
    CASE pregunta_119 WHEN 'Siempre' THEN 4
                      WHEN 'Casi siempre' THEN 3
                      WHEN 'Algunas veces' THEN 2
                      WHEN 'Casi nunca' THEN 1
                      WHEN 'Nunca' THEN 0 END AS pregunta_119,
    CASE pregunta_120 WHEN 'Siempre' THEN 4
                      WHEN 'Casi siempre' THEN 3
                      WHEN 'Algunas veces' THEN 2
                      WHEN 'Casi nunca' THEN 1
                      WHEN 'Nunca' THEN 0 END AS pregunta_120,
    CASE pregunta_121 WHEN 'Siempre' THEN 4
                      WHEN 'Casi siempre' THEN 3
                      WHEN 'Algunas veces' THEN 2
                      WHEN 'Casi nunca' THEN 1
                      WHEN 'Nunca' THEN 0 END AS pregunta_121,
    CASE pregunta_122 WHEN 'Siempre' THEN 4
                      WHEN 'Casi siempre' THEN 3
                      WHEN 'Algunas veces' THEN 2
                      WHEN 'Casi nunca' THEN 1
                      WHEN 'Nunca' THEN 0 END AS pregunta_122,
    CASE pregunta_123 WHEN 'Siempre' THEN 4
                      WHEN 'Casi siempre' THEN 3
                      WHEN 'Algunas veces' THEN 2
                      WHEN 'Casi nunca' THEN 1
                      WHEN 'Nunca' THEN 0 END AS pregunta_123
FROM forma_a;
