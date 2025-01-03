DROP VIEW vista_resultados_generales;

CREATE VIEW vista_resultados_generales AS

-- Ficha de Datos Generales

SELECT c.id_colaborador, c.id_centro_trabajo, c.tipo_forma, c.fec_aplica, c.nro_documento, c.nombre_completo, c.sexo, c.año_nacimiento, c.estado_civil, c.nivel_estudio, c.ocupacion, c.municipio_residencia, c.departamento_residencia, c.estrato, c.tipo_vivienda, c.nro_personas, c.municipio_laboral, c.departamento_laboral, c.años_empresa, c.cargo, c.tipo_cargo, c.años_cargo, c.departamento_empresa, c.tipo_contrato, c.horas_trabajo, c.tipo_salario,

-- Forma A

fa.pt_dim1 AS pt_dim1_Forma_A,
    fa.nr_dim1 AS nr_dim1_Forma_A,
    fa.pt_dim2 AS pt_dim2_Forma_A,
    fa.nr_dim2 AS nr_dim2_Forma_A,
    fa.pt_dim3 AS pt_dim3_Forma_A,
    fa.nr_dim3 AS nr_dim3_Forma_A,
    fa.pt_dim4 AS pt_dim4_Forma_A,
    fa.nr_dim4 AS nr_dim4_Forma_A,
    fa.pt_dom1 AS pt_dom1_Forma_A,
    fa.nr_dom1 AS nr_dom1_Forma_A,
    fa.pt_dim5 AS pt_dim5_Forma_A,
    fa.nr_dim5 AS nr_dim5_Forma_A,
    fa.pt_dim6 AS pt_dim6_Forma_A,
    fa.nr_dim6 AS nr_dim6_Forma_A,
    fa.pt_dim7 AS pt_dim7_Forma_A,
    fa.nr_dim7 AS nr_dim7_Forma_A,
    fa.pt_dim8 AS pt_dim8_Forma_A,
    fa.nr_dim8 AS nr_dim8_Forma_A,
    fa.pt_dim9 AS pt_dim9_Forma_A,
    fa.nr_dim9 AS nr_dim9_Forma_A,
    fa.pt_dom2 AS pt_dom2_Forma_A,
    fa.nr_dom2 AS nr_dom2_Forma_A,
    fa.pt_dim10 AS pt_dim10_Forma_A,
    fa.nr_dim10 AS nr_dim10_Forma_A,
    fa.pt_dim11 AS pt_dim11_Forma_A,
    fa.nr_dim11 AS nr_dim11_Forma_A,
    fa.pt_dim12 AS pt_dim12_Forma_A,
    fa.nr_dim12 AS nr_dim12_Forma_A,
    fa.pt_dim13 AS pt_dim13_Forma_A,
    fa.nr_dim13 AS nr_dim13_Forma_A,
    fa.pt_dim14 AS pt_dim14_Forma_A,
    fa.nr_dim14 AS nr_dim14_Forma_A,
    fa.pt_dim15 AS pt_dim15_Forma_A,
    fa.nr_dim15 AS nr_dim15_Forma_A,
    fa.pt_dim16 AS pt_dim16_Forma_A,
    fa.nr_dim16 AS nr_dim16_Forma_A,
    fa.pt_dim17 AS pt_dim17_Forma_A,
    fa.nr_dim17 AS nr_dim17_Forma_A,
    fa.pt_dom3 AS pt_dom3_Forma_A,
    fa.nr_dom3 AS nr_dom3_Forma_A,
    fa.pt_dim18 AS pt_dim18_Forma_A,
    fa.nr_dim18 AS nr_dim18_Forma_A,
    fa.pt_dim19 AS pt_dim19_Forma_A,
    fa.nr_dim19 AS nr_dim19_Forma_A,
    fa.pt_dom4 AS pt_dom4_Forma_A,
    fa.nr_dom4 AS nr_dom4_Forma_A,
    fa.pt_total_fa AS pt_total_Forma_A,
    fa.nr_total_fa AS nr_total_Forma_A,
    
    
    -- Forma B
    
    fb.pt_dim1 AS pt_dim1_Forma_B,
    fb.nr_dim1 AS nr_dim1_Forma_B,
    fb.pt_dim2 AS pt_dim2_Forma_B,
    fb.nr_dim2 AS nr_dim2_Forma_B,
    fb.pt_dim3 AS pt_dim3_Forma_B,
    fb.nr_dim3 AS nr_dim3_Forma_B,
    fb.pt_dom1 AS pt_dom1_Forma_B,
    fb.nr_dom1 AS nr_dom1_Forma_B,
    fb.pt_dim5 AS pt_dim5_Forma_B,
    fb.nr_dim5 AS nr_dim5_Forma_B,
    fb.pt_dim6 AS pt_dim6_Forma_B,
    fb.nr_dim6 AS nr_dim6_Forma_B,
    fb.pt_dim7 AS pt_dim7_Forma_B,
    fb.nr_dim7 AS nr_dim7_Forma_B,
    fb.pt_dim8 AS pt_dim8_Forma_B,
    fb.nr_dim8 AS nr_dim8_Forma_B,
    fb.pt_dim9 AS pt_dim9_Forma_B,
    fb.nr_dim9 AS nr_dim9_Forma_B,
    fb.pt_dom2 AS pt_dom2_Forma_B,
    fb.nr_dom2 AS nr_dom2_Forma_B,
    fb.pt_dim10 AS pt_dim10_Forma_B,
    fb.nr_dim10 AS nr_dim10_Forma_B,
    fb.pt_dim11 AS pt_dim11_Forma_B,
    fb.nr_dim11 AS nr_dim11_Forma_B,
    fb.pt_dim12 AS pt_dim12_Forma_B,
    fb.nr_dim12 AS nr_dim12_Forma_B,
    fb.pt_dim13 AS pt_dim13_Forma_B,
    fb.nr_dim13 AS nr_dim13_Forma_B,
    fb.pt_dim15 AS pt_dim15_Forma_B,
    fb.nr_dim15 AS nr_dim15_Forma_B,
    fb.pt_dim17 AS pt_dim17_Forma_B,
    fb.nr_dim17 AS nr_dim17_Forma_B,
    fb.pt_dom3 AS pt_dom3_Forma_B,
    fb.nr_dom3 AS nr_dom3_Forma_B,
    fb.pt_dim18 AS pt_dim18_Forma_B,
    fb.nr_dim18 AS nr_dim18_Forma_B,
    fb.pt_dim19 AS pt_dim19_Forma_B,
    fb.nr_dim19 AS nr_dim19_Forma_B,
    fb.pt_dom4 AS pt_dom4_Forma_B,
    fb.nr_dom4 AS nr_dom4_Forma_B,
    fb.pt_total_fb AS pt_total_Forma_B,
    fb.nr_total_fb AS nr_total_Forma_B,
    
    
    -- Extralaboral
    
    ex.pt_dim1 AS pt_dim1_Extra,
    ex.nr_dim1 AS nr_dim1_Extra,
    ex.pt_dim2 AS pt_dim2_Extra,
    ex.nr_dim2 AS nr_dim2_Extra,
    ex.pt_dim3 AS pt_dim3_Extra,
    ex.nr_dim3 AS nr_dim3_Extra,
    ex.pt_dim4 AS pt_dim4_Extra,
    ex.nr_dim4 AS nr_dim4_Extra,
    ex.pt_dim5 AS pt_dim5_Extra,
    ex.nr_dim5 AS nr_dim5_Extra,
    ex.pt_dim6 AS pt_dim6_Extra,
    ex.nr_dim6 AS nr_dim6_Extra,
    ex.pt_dim7 AS pt_dim7_Extra,
    ex.nr_dim7 AS nr_dim7_Extra,
    ex.pt_total_extra AS pt_total_extra_Extra,
    ex.nr_total_extra AS nr_total_extra_Extra

FROM colaborador AS c
LEFT JOIN resultados_fa AS fa
ON c.id_colaborador = fa.nro_documento AND c.fec_aplica = fa.fec_aplica
LEFT JOIN resultados_fb AS fb
ON c.id_colaborador = fb.nro_documento AND c.fec_aplica = fb.fec_aplica
LEFT JOIN resultados_extra_fa_fb AS ex
ON c.id_colaborador = ex.nro_documento AND c.fec_aplica = ex.fec_aplica

