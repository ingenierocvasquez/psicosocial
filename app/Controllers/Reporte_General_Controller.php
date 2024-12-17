<?php namespace App\Controllers;

use App\Libraries\GroceryCrud;

class Reporte_General_Controller extends BaseController
{
    
	public function reporte_general()
	{
	    $crud = new GroceryCrud();
	    $crud->setTable('vista_resultados_generales');

        $crud->setPrimaryKey('id_colaborador');

        $crud->setSubject('Resultados Intralaboral Forma A', 'Resultados Intralaboral Forma A');
        $crud->displayAs('fec_aplica', 'Fecha de Aplicación del Instrumento');
        $crud->displayAs('nro_documento', 'Numero de Documento del Colaborador');

        // Forma A
        $crud->displayAs('pt_dim1_Forma_A', 'Dimensión: Características del liderazgo - Forma A (puntaje transformado)');
        $crud->displayAs('nr_dim1_Forma_A', 'Dimensión: Características del liderazgo - Forma A (nivel de riesgo)');
        $crud->displayAs('pt_dim2_Forma_A', 'Dimensión: Relaciones sociales en el trabajo - Forma A (puntaje transformado)');
        $crud->displayAs('nr_dim2_Forma_A', 'Dimensión: Relaciones sociales en el trabajo - Forma A (nivel de riesgo)');
        $crud->displayAs('pt_dim3_Forma_A', 'Dimensión: Retroalimentación del desempeño - Forma A (puntaje transformado)');
        $crud->displayAs('nr_dim3_Forma_A', 'Dimensión: Retroalimentación del desempeño - Forma A (nivel de riesgo)');
        $crud->displayAs('pt_dim4_Forma_A', 'Dimensión: Relación con los colaboradores - Forma A (puntaje transformado)');
        $crud->displayAs('nr_dim4_Forma_A', 'Dimensión: Relación con los colaboradores - Forma A (nivel de riesgo)');
        $crud->displayAs('pt_dom1_Forma_A', 'DOMINIO: Liderazgo y relaciones sociales en el trabajo - Forma A (puntaje transformado)');
        $crud->displayAs('nr_dom1_Forma_A', 'DOMINIO: Liderazgo y relaciones sociales en el trabajo - Forma A (nivel de riesgo)');
        $crud->displayAs('pt_dim5_Forma_A', 'Dimensión: Claridad de rol - Forma A (puntaje transformado)');
        $crud->displayAs('nr_dim5_Forma_A', 'Dimensión: Claridad de rol - Forma A (nivel de riesgo)');
        $crud->displayAs('pt_dim6_Forma_A', 'Dimensión: Capacitación - Forma A (puntaje transformado)');
        $crud->displayAs('nr_dim6_Forma_A', 'Dimensión: Capacitación - Forma A (nivel de riesgo)');
        $crud->displayAs('pt_dim7_Forma_A', 'Dimensión: Participación y manejo del cambio - Forma A (puntaje transformado)');
        $crud->displayAs('nr_dim7_Forma_A', 'Dimensión: Participación y manejo del cambio - Forma A (nivel de riesgo)');
        $crud->displayAs('pt_dim8_Forma_A', 'Dimensión: Oportunidades para el uso y desarrollo de habilidades y conocimientos - Forma A (puntaje transformado)');
        $crud->displayAs('nr_dim8_Forma_A', 'Dimensión: Oportunidades para el uso y desarrollo de habilidades y conocimientos - Forma A (nivel de riesgo)');
        $crud->displayAs('pt_dim9_Forma_A', 'Dimensión: Control y autonomía sobre el trabajo - Forma A (puntaje transformado)');
        $crud->displayAs('nr_dim9_Forma_A', 'Dimensión: Control y autonomía sobre el trabajo - Forma A (nivel de riesgo)');
        $crud->displayAs('pt_dom2_Forma_A', 'DOMINIO: Control sobre el trabajo - Forma A (puntaje transformado)');
        $crud->displayAs('nr_dom2_Forma_A', 'DOMINIO: Control sobre el trabajo - Forma A (nivel de riesgo)');
        $crud->displayAs('pt_dim10_Forma_A', 'Dimensión: Demandas ambientales y de esfuerzo físico - Forma A (puntaje transformado)');
        $crud->displayAs('nr_dim10_Forma_A', 'Dimensión: Demandas ambientales y de esfuerzo físico - Forma A (nivel de riesgo)');
        $crud->displayAs('pt_dim11_Forma_A', 'Dimensión: Demandas emocionales - Forma A (puntaje transformado)');
        $crud->displayAs('nr_dim11_Forma_A', 'Dimensión: Demandas emocionales - Forma A (nivel de riesgo)');
        $crud->displayAs('pt_dim12_Forma_A', 'Dimensión: Demandas cuantitativas - Forma A (puntaje transformado)');
        $crud->displayAs('nr_dim12_Forma_A', 'Dimensión: Demandas cuantitativas - Forma A (nivel de riesgo)');
        $crud->displayAs('pt_dim13_Forma_A', 'Dimensión: Influencia del trabajo sobre el entorno extralaboral - Forma A (puntaje transformado)');
        $crud->displayAs('nr_dim13_Forma_A', 'Dimensión: Influencia del trabajo sobre el entorno extralaboral - Forma A (nivel de riesgo)');
        $crud->displayAs('pt_dim14_Forma_A', 'Dimensión: Exigencias de responsabilidad del cargo - Forma A (puntaje transformado)');
        $crud->displayAs('nr_dim14_Forma_A', 'Dimensión: Exigencias de responsabilidad del cargo - Forma A (nivel de riesgo)');
        $crud->displayAs('pt_dim15_Forma_A', 'Dimensión: Demandas de carga mental - Forma A (puntaje transformado)');
        $crud->displayAs('nr_dim15_Forma_A', 'Dimensión: Demandas de carga mental - Forma A (nivel de riesgo)');
        $crud->displayAs('pt_dim16_Forma_A', 'Dimensión: Consistencia del rol - Forma A (puntaje transformado)');
        $crud->displayAs('nr_dim16_Forma_A', 'Dimensión: Consistencia del rol - Forma A (nivel de riesgo)');
        $crud->displayAs('pt_dim17_Forma_A', 'Dimensión: Demandas de la jornada de trabajo - Forma A (puntaje transformado)');
        $crud->displayAs('nr_dim17_Forma_A', 'Dimensión: Demandas de la jornada de trabajo - Forma A (nivel de riesgo)');
        $crud->displayAs('pt_dom3_Forma_A', 'DOMINIO: Demandas del trabajo - Forma A (puntaje transformado)');
        $crud->displayAs('nr_dom3_Forma_A', 'DOMINIO: Demandas del trabajo - Forma A (nivel de riesgo)');
        $crud->displayAs('pt_dim18_Forma_A', 'Dimensión: Recompensas derivadas de la pertenencia a la organización y del trabajo que se realiza - Forma A (puntaje transformado)');
        $crud->displayAs('nr_dim18_Forma_A', 'Dimensión: Recompensas derivadas de la pertenencia a la organización y del trabajo que se realiza - Forma A (nivel de riesgo)');
        $crud->displayAs('pt_dim19_Forma_A', 'Dimensión: Reconocimiento y compensación - Forma A (puntaje transformado)');
        $crud->displayAs('nr_dim19_Forma_A', 'Dimensión: Reconocimiento y compensación - Forma A (nivel de riesgo)');
        $crud->displayAs('pt_dom4_Forma_A', 'DOMINIO: Recompensas - Forma A (puntaje transformado)');
        $crud->displayAs('nr_dom4_Forma_A', 'DOMINIO: Recompensas - Forma A (nivel de riesgo)');
        $crud->displayAs('pt_total_Forma_A', 'PUNTAJE TOTAL del cuestionario de factores de riesgo psicosocial intralaboral - Forma A (puntaje transformado)');
        $crud->displayAs('nr_total_Forma_A', 'PUNTAJE TOTAL del cuestionario de factores de riesgo psicosocial intralaboral - Forma A (nivel de riesgo)');


        // Forma B
        $crud->displayAs('pt_dim1_Forma_B', 'Dimensión: Características del liderazgo - Forma B (puntaje transformado)');
        $crud->displayAs('nr_dim1_Forma_B', 'Dimensión: Características del liderazgo - Forma B (nivel de riesgo)');
        $crud->displayAs('pt_dim2_Forma_B', 'Dimensión: Relaciones sociales en el trabajo - Forma B (puntaje transformado)');
        $crud->displayAs('nr_dim2_Forma_B', 'Dimensión: Relaciones sociales en el trabajo - Forma B (nivel de riesgo)');
        $crud->displayAs('pt_dim3_Forma_B', 'Dimensión: Retroalimentación del desempeño - Forma B (puntaje transformado)');
        $crud->displayAs('nr_dim3_Forma_B', 'Dimensión: Retroalimentación del desempeño - Forma B (nivel de riesgo)');

        $crud->displayAs('pt_dom1_Forma_B', 'DOMINIO: Liderazgo y relaciones sociales en el trabajo - Forma B (puntaje transformado)');
        $crud->displayAs('nr_dom1_Forma_B', 'DOMINIO: Liderazgo y relaciones sociales en el trabajo - Forma B (nivel de riesgo)');
        $crud->displayAs('pt_dim5_Forma_B', 'Dimensión: Claridad de rol - Forma B (puntaje transformado)');
        $crud->displayAs('nr_dim5_Forma_B', 'Dimensión: Claridad de rol - Forma B (nivel de riesgo)');
        $crud->displayAs('pt_dim6_Forma_B', 'Dimensión: Capacitación - Forma B (puntaje transformado)');
        $crud->displayAs('nr_dim6_Forma_B', 'Dimensión: Capacitación - Forma B (nivel de riesgo)');
        $crud->displayAs('pt_dim7_Forma_B', 'Dimensión: Participación y manejo del cambio - Forma B (puntaje transformado)');
        $crud->displayAs('nr_dim7_Forma_B', 'Dimensión: Participación y manejo del cambio - Forma B (nivel de riesgo)');
        $crud->displayAs('pt_dim8_Forma_B', 'Dimensión: Oportunidades para el uso y desarrollo de habilidades y conocimientos - Forma B (puntaje transformado)');
        $crud->displayAs('nr_dim8_Forma_B', 'Dimensión: Oportunidades para el uso y desarrollo de habilidades y conocimientos - Forma B (nivel de riesgo)');
        $crud->displayAs('pt_dim9_Forma_B', 'Dimensión: Control y autonomía sobre el trabajo - Forma B (puntaje transformado)');
        $crud->displayAs('nr_dim9_Forma_B', 'Dimensión: Control y autonomía sobre el trabajo - Forma B (nivel de riesgo)');
        $crud->displayAs('pt_dom2_Forma_B', 'DOMINIO Control sobre el trabajo - Forma B (puntaje transformado)');
        $crud->displayAs('nr_dom2_Forma_B', 'DOMINIO Control sobre el trabajo - Forma B (nivel de riesgo)');
        $crud->displayAs('pt_dim10_Forma_B', 'Dimensión: Demandas ambientales y de esfuerzo físico - Forma B (puntaje transformado)');
        $crud->displayAs('nr_dim10_Forma_B', 'Dimensión: Demandas ambientales y de esfuerzo físico - Forma B (nivel de riesgo)');
        $crud->displayAs('pt_dim11_Forma_B', 'Dimensión: Demandas emocionales - Forma B (puntaje transformado)');
        $crud->displayAs('nr_dim11_Forma_B', 'Dimensión: Demandas emocionales - Forma B (nivel de riesgo)');
        $crud->displayAs('pt_dim12_Forma_B', 'Dimensión: Demandas cuantitativas - Forma B (puntaje transformado)');
        $crud->displayAs('nr_dim12_Forma_B', 'Dimensión: Demandas cuantitativas - Forma B (nivel de riesgo)');
        $crud->displayAs('pt_dim13_Forma_B', 'Dimensión: Influencia del trabajo sobre el entorno extralaboral - Forma B (puntaje transformado)');
        $crud->displayAs('nr_dim13_Forma_B', 'Dimensión: Influencia del trabajo sobre el entorno extralaboral - Forma B (nivel de riesgo)');
        $crud->displayAs('pt_dim15_Forma_B', 'Dimensión: Demandas de carga mental - Forma B (puntaje transformado)');
        $crud->displayAs('nr_dim15_Forma_B', 'Dimensión: Demandas de carga mental - Forma B (nivel de riesgo)');
        $crud->displayAs('pt_dim17_Forma_B', 'Dimensión: Demandas de la jornada de trabajo - Forma B (puntaje transformado)');
        $crud->displayAs('nr_dim17_Forma_B', 'Dimensión: Demandas de la jornada de trabajo - Forma B (nivel de riesgo)');
        $crud->displayAs('pt_dom3_Forma_B', 'DOMINIO: Demandas del trabajo - Forma B (puntaje transformado)');
        $crud->displayAs('nr_dom3_Forma_B', 'DOMINIO: Demandas del trabajo - Forma B (nivel de riesgo)');
        $crud->displayAs('pt_dim18_Forma_B', 'Dimensión: Recompensas derivadas de la pertenencia a la organización y del trabajo que se realiza - Forma B (puntaje transformado)');
        $crud->displayAs('nr_dim18_Forma_B', 'Dimensión: Recompensas derivadas de la pertenencia a la organización y del trabajo que se realiza - Forma B (nivel de riesgo)');
        $crud->displayAs('pt_dim19_Forma_B', 'Dimensión: Reconocimiento y compensación - Forma B (puntaje transformado)');
        $crud->displayAs('nr_dim19_Forma_B', 'Dimensión: Reconocimiento y compensación - Forma B (nivel de riesgo)');
        $crud->displayAs('pt_dom4_Forma_B', 'DOMINIO: Recompensas - Forma B (puntaje transformado)');
        $crud->displayAs('nr_dom4_Forma_B', 'DOMINIO: Recompensas - Forma B (nivel de riesgo)');
        $crud->displayAs('pt_total_Forma_B', 'PUNTAJE TOTAL del cuestionario de factores de riesgo psicosocial intralaboral - Forma B (puntaje transformado)');
        $crud->displayAs('nr_total_Forma_B', 'PUNTAJE TOTAL del cuestionario de factores de riesgo psicosocial intralaboral - Forma B (nivel de riesgo)');

        // Extralaboral
        $crud->displayAs('pt_dim1_Extra', 'Dimensión: Tiempo fuera del trabajo (puntaje transformado)');
        $crud->displayAs('nr_dim1_Extra', 'Dimensión: Tiempo fuera del trabajo (nivel de riesgo)');
        $crud->displayAs('pt_dim2_Extra', 'Dimensión: Relaciones familiares (puntaje transformado)');
        $crud->displayAs('nr_dim2_Extra', 'Dimensión: Relaciones familiares (nivel de riesgo)');
        $crud->displayAs('pt_dim3_Extra', 'Dimensión: Comunicación y relaciones interpersonales (puntaje transformado)');
        $crud->displayAs('nr_dim3_Extra', 'Dimensión: Comunicación y relaciones interpersonales (nivel de riesgo)');
        $crud->displayAs('pt_dim4_Extra', 'Dimensión: Situación económica del grupo familiar (puntaje transformado)');
        $crud->displayAs('nr_dim4_Extra', 'Dimensión: Situación económica del grupo familiar (nivel de riesgo)');
        $crud->displayAs('pt_dim5_Extra', 'Dimensión: Características de la vivienda y de su entorno (puntaje transformado)');
        $crud->displayAs('nr_dim5_Extra', 'Dimensión: Características de la vivienda y de su entorno (nivel de riesgo)');
        $crud->displayAs('pt_dim6_Extra', 'Dimensión: Influencia del entorno extralaboral sobre el trabajo (puntaje transformado)');
        $crud->displayAs('nr_dim6_Extra', 'Dimensión: Influencia del entorno extralaboral sobre el trabajo (nivel de riesgo)');
        $crud->displayAs('pt_dim7_Extra', 'Dimensión: Desplazamiento vivienda - trabajo - vivienda (puntaje transformado)');
        $crud->displayAs('nr_dim7_Extra', 'Dimensión: Desplazamiento vivienda - trabajo - vivienda (nivel de riesgo)');
        $crud->displayAs('pt_total_extra_Extra', 'PUNTAJE TOTAL del cuestionario de factores de riesgo psicosocial extralaboral (puntaje transformado)');
        $crud->displayAs('nr_total_extra_Extra', 'PUNTAJE TOTAL del cuestionario de factores de riesgo psicosocial extralaboral (nivel de riesgo)');

        // Estres
        $crud->displayAs('pt_total_estres_trasnformado', 'Puntaje total evaluación de estrés (puntaje transformado)');
        $crud->displayAs('nr_total_estres', 'Puntaje total evaluación de estrés (nivel de riesgo)');
        


        //Rules
        $crud->unsetOperations();

        //Relaciones
        $crud->setRelation('id_centro_trabajo', 'centro_trabajo', '{id} - {nombre}');

	    $output = $crud->render();
		return $this->_dataOutput($output);
      
	}

	    private function _dataOutput($output = null) {

        $auth = service('auth');
        $user = $auth->user(); // Obtiene el usuario autenticado

        $data = [
            'email' => $user->email,
            'username' => $user->username,
            'isAdmin' => $user->inGroup('administradores'),
            'isDigitador' => $user->inGroup('digitadores'),
        ];

        return view('template/header', $data)
               .view('pages/salida_datos', (array)$output)
               .view('template/footer', $data);
    }

}
