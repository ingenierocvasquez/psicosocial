SELECT 
    fec_aplica,
    nro_documento,
    SUM(valor) AS dom1_dim1,
    ROUND((SUM(valor) / 52) * 100, 1) AS porcentaje_transformado,
    CASE 
        WHEN ROUND((SUM(valor) / 52) * 100, 1) <= 3.8 THEN 'Sin Riesgo o Riesgo Despreciable'
        WHEN ROUND((SUM(valor) / 52) * 100, 1) <= 15.4 THEN 'Riesgo Bajo'
        WHEN ROUND((SUM(valor) / 52) * 100, 1) <= 30.8 THEN 'Riesgo Medio'
        WHEN ROUND((SUM(valor) / 52) * 100, 1) <= 46.2 THEN 'Riesgo Alto'
        ELSE 'Riesgo Muy Alto'
    END AS nivel_riesgo
FROM (
    SELECT 
        fec_aplica, 
        nro_documento, 
        valor 
   FROM dom1_dim1_fa
) AS subquery
GROUP BY 
    fec_aplica, 
    nro_documento;