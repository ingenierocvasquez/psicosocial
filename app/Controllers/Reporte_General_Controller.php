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

        $crud->displayAs('pt_dim1', 'Dimensión: Características del liderazgo - Forma A (puntaje transformado)');
        $crud->displayAs('nr_dim1', 'Dimensión: Características del liderazgo - Forma A (nivel de riesgo)');
        $crud->displayAs('pt_dim2', 'Dimensión: Relaciones sociales en el trabajo - Forma A (puntaje transformado)');
        $crud->displayAs('nr_dim2', 'Dimensión: Relaciones sociales en el trabajo - Forma A (nivel de riesgo)');
        $crud->displayAs('pt_dim3', 'Dimensión: Retroalimentación del desempeño - Forma A (puntaje transformado)');
        $crud->displayAs('nr_dim3', 'Dimensión: Retroalimentación del desempeño - Forma A (nivel de riesgo)');
        $crud->displayAs('pt_dim4', 'Dimensión: Relación con los colaboradores - Forma A (puntaje transformado)');
        $crud->displayAs('nr_dim4', 'Dimensión: Relación con los colaboradores - Forma A (nivel de riesgo)');
        $crud->displayAs('pt_dom1', 'DOMINIO: Liderazgo y relaciones sociales en el trabajo - Forma A (puntaje transformado)');
        $crud->displayAs('nr_dom1', 'DOMINIO: Liderazgo y relaciones sociales en el trabajo - Forma A (nivel de riesgo)');
        $crud->displayAs('pt_dim5', 'Dimensión: Claridad de rol - Forma A (puntaje transformado)');
        $crud->displayAs('nr_dim5', 'Dimensión: Claridad de rol - Forma A (nivel de riesgo)');
        $crud->displayAs('pt_dim6', 'Dimensión: Capacitación - Forma A (puntaje transformado)');
        $crud->displayAs('nr_dim6', 'Dimensión: Capacitación - Forma A (nivel de riesgo)');
        $crud->displayAs('pt_dim7', 'Dimensión: Participación y manejo del cambio - Forma A (puntaje transformado)');
        $crud->displayAs('nr_dim7', 'Dimensión: Participación y manejo del cambio - Forma A (nivel de riesgo)');
        $crud->displayAs('pt_dim8', 'Dimensión: Oportunidades para el uso y desarrollo de habilidades y conocimientos - Forma A (puntaje transformado)');
        $crud->displayAs('nr_dim8', 'Dimensión: Oportunidades para el uso y desarrollo de habilidades y conocimientos - Forma A (nivel de riesgo)');
        $crud->displayAs('pt_dim9', 'Dimensión: Control y autonomía sobre el trabajo - Forma A (puntaje transformado)');
        $crud->displayAs('nr_dim9', 'Dimensión: Control y autonomía sobre el trabajo - Forma A (nivel de riesgo)');
        $crud->displayAs('pt_dom2', 'DOMINIO Control sobre el trabajo - Forma A (puntaje transformado)');
        $crud->displayAs('nr_dom2', 'DOMINIO Control sobre el trabajo - Forma A (nivel de riesgo)');
        $crud->displayAs('pt_dim10', 'Dimensión: Demandas ambientales y de esfuerzo físico - Forma A (puntaje transformado)');
        $crud->displayAs('nr_dim10', 'Dimensión: Demandas ambientales y de esfuerzo físico - Forma A (nivel de riesgo)');
        $crud->displayAs('pt_dim11', 'Dimensión: Demandas emocionales - Forma A (puntaje transformado)');
        $crud->displayAs('nr_dim11', 'Dimensión: Demandas emocionales - Forma A (nivel de riesgo)');
        $crud->displayAs('pt_dim12', 'Dimensión: Demandas cuantitativas - Forma A (puntaje transformado)');
        $crud->displayAs('nr_dim12', 'Dimensión: Demandas cuantitativas - Forma A (nivel de riesgo)');
        $crud->displayAs('pt_dim13', 'Dimensión: Influencia del trabajo sobre el entorno extralaboral - Forma A (puntaje transformado)');
        $crud->displayAs('nr_dim13', 'Dimensión: Influencia del trabajo sobre el entorno extralaboral - Forma A (nivel de riesgo)');
        $crud->displayAs('pt_dim14', 'Dimensión: Exigencias de responsabilidad del cargo - Forma A (puntaje transformado)');
        $crud->displayAs('nr_dim14', 'Dimensión: Exigencias de responsabilidad del cargo - Forma A (nivel de riesgo)');
        $crud->displayAs('pt_dim15', 'Dimensión: Demandas de carga mental - Forma A (puntaje transformado)');
        $crud->displayAs('nr_dim15', 'Dimensión: Demandas de carga mental - Forma A (nivel de riesgo)');
        $crud->displayAs('pt_dim16', 'Dimensión: Consistencia del rol - Forma A (puntaje transformado)');
        $crud->displayAs('nr_dim16', 'Dimensión: Consistencia del rol - Forma A (nivel de riesgo)');
        $crud->displayAs('pt_dim17', 'Dimensión: Demandas de la jornada de trabajo - Forma A (puntaje transformado)');
        $crud->displayAs('nr_dim17', 'Dimensión: Demandas de la jornada de trabajo - Forma A (nivel de riesgo)');
        $crud->displayAs('pt_dom3', 'DOMINIO: Demandas del trabajo - Forma A (puntaje transformado)');
        $crud->displayAs('nr_dom3', 'DOMINIO: Demandas del trabajo - Forma A (nivel de riesgo)');
        $crud->displayAs('pt_dim18', 'Dimensión: Recompensas derivadas de la pertenencia a la organización y del trabajo que se realiza - Forma A (puntaje transformado)');
        $crud->displayAs('nr_dim18', 'Dimensión: Recompensas derivadas de la pertenencia a la organización y del trabajo que se realiza - Forma A (nivel de riesgo)');
        $crud->displayAs('pt_dim19', 'Dimensión: Reconocimiento y compensación - Forma A (puntaje transformado)');
        $crud->displayAs('nr_dim19', 'Dimensión: Reconocimiento y compensación - Forma A (nivel de riesgo)');
        $crud->displayAs('pt_dom4', 'DOMINIO: Recompensas - Forma A (puntaje transformado)');
        $crud->displayAs('nr_dom4', 'DOMINIO: Recompensas - Forma A (nivel de riesgo)');
        $crud->displayAs('pt_total_fa', 'PUNTAJE TOTAL del cuestionario de factores de riesgo psicosocial intralaboral - Forma A (puntaje transformado)');
        $crud->displayAs('nr_total_fa', 'PUNTAJE TOTAL del cuestionario de factores de riesgo psicosocial intralaboral - Forma A (nivel de riesgo)');


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
