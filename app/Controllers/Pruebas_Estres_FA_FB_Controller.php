<?php namespace App\Controllers;

use App\Libraries\GroceryCrud;

class Pruebas_Estres_FA_FB_Controller extends BaseController
{
    public function crud_forma_estres_ab()
	{

        $auth = service('auth');
        $user = $auth->user(); // Obtén el usuario autenticado.
        $isDigitador = $user->inGroup('digitadores');

	    $crud = new GroceryCrud();
	    $crud->setTable('forma_estres_fa_fb');         
         
        $crud->setSubject('Registro Estres Forma A-B', 'Formulario Estres Forma A-B');
        $crud->displayAs('fec_aplica', 'Fecha de Aplicación del Instrumento');
        $crud->displayAs('nro_documento', 'Numero de Documento del Colaborador');
        
        $crud->displayAs('creado_por', 'Registro Digitado Por');
        $crud->fieldType('creado_por', 'hidden');

        $crud->displayAs('pregunta_1', '1. Dolores en el cuello y espalda o tensión muscular.');
        $crud->displayAs('pregunta_2', '2. Problemas gastrointestinales, úlcera péptica, acidez, problemas digestivos o del colon.');
        $crud->displayAs('pregunta_3', '3. Problemas respiratorios.');
        $crud->displayAs('pregunta_4', '4. Dolor de cabeza.');
        $crud->displayAs('pregunta_5', '5. Trastornos del sueño como somnolencia durante el día o desvelo en la noche.');
        $crud->displayAs('pregunta_6', '6. Palpitaciones en el pecho o problemas cardíacos.');
        $crud->displayAs('pregunta_7', '7. Cambios fuertes del apetito.');
        $crud->displayAs('pregunta_8', '8. Problemas relacionados con la función de los órganos genitales (impotencia, frigidez).');
        $crud->displayAs('pregunta_9', '9. Dificultad en las relaciones familiares.');
        $crud->displayAs('pregunta_10', '10. Dificultad para permanecer quieto o dificultad para iniciar actividades.');
        $crud->displayAs('pregunta_11', '11. Dificultad en las relaciones con otras personas.');
        $crud->displayAs('pregunta_12', '12. Sensación de aislamiento y desinterés.');
        $crud->displayAs('pregunta_13', '13. Sentimiento de sobrecarga de trabajo.');
        $crud->displayAs('pregunta_14', '14. Dificultad para concentrarse, olvidos frecuentes.');
        $crud->displayAs('pregunta_15', '15. Aumento en el número de accidentes de trabajo.');
        $crud->displayAs('pregunta_16', '16. Sentimiento de frustración, de no haber hecho lo que se quería en la vida.');
        $crud->displayAs('pregunta_17', '17. Cansancio, tedio o desgano.');
        $crud->displayAs('pregunta_18', '18. Disminución del rendimiento en el trabajo o poca creatividad.');
        $crud->displayAs('pregunta_19', '19. Deseo de no asistir al trabajo.');
        $crud->displayAs('pregunta_20', '20. Bajo compromiso o poco interés con lo que se hace.');
        $crud->displayAs('pregunta_21', '21. Dificultad para tomar decisiones.');
        $crud->displayAs('pregunta_22', '22. Deseo de cambiar de empleo.');
        $crud->displayAs('pregunta_23', '23. Sentimiento de soledad y miedo.');
        $crud->displayAs('pregunta_24', '24. Sentimiento de irritabilidad, actitudes y pensamientos negativos.');
        $crud->displayAs('pregunta_25', '25. Sentimiento de angustia, preocupación o tristeza.');
        $crud->displayAs('pregunta_26', '26. Consumo de drogas para aliviar la tensión o los nervios.');
        $crud->displayAs('pregunta_27', '27. Sentimientos de que "no vale nada", o "no sirve para nada".');
        $crud->displayAs('pregunta_28', '28. Consumo de bebidas alcohólicas o café o cigarrillo.');
        $crud->displayAs('pregunta_29', '29. Sentimiento de que está perdiendo la razón.');
        $crud->displayAs('pregunta_30', '30. Comportamientos rígidos, obstinación o terquedad.');
        $crud->displayAs('pregunta_31', '31. Sensación de no poder manejar los problemas de la vida.');

        /**Rules**/
                
        //$crud->unsetDelete();
        
       $crud->requiredFields([
            'fec_aplica', 'nro_documento', 'pregunta_1', 'pregunta_2', 'pregunta_3', 'pregunta_4', 'pregunta_5', 'pregunta_6', 'pregunta_7', 'pregunta_8', 'pregunta_9', 'pregunta_10',
            'pregunta_11', 'pregunta_12', 'pregunta_13', 'pregunta_14', 'pregunta_15', 'pregunta_16', 'pregunta_17', 'pregunta_18', 'pregunta_19', 'pregunta_20',
            'pregunta_21', 'pregunta_22', 'pregunta_23', 'pregunta_24', 'pregunta_25', 'pregunta_26', 'pregunta_27', 'pregunta_28', 'pregunta_29', 'pregunta_30',
            'pregunta_31'
        ]);       

         
        //Relaciones
        $crud->setRelation('nro_documento', 'colaborador', 'nombre_completo');

        if ($crud->getState() === 'list' || $crud->getState() === 'success' || $crud->getState() === 'ajax_list' ) {            
            $crud->setRelation('creado_por', 'users', 'username');
             } 

        // Where
        if ($isDigitador):                  
            $crud->where('forma_estres_fa_fb.creado_por', $user->id);
            $crud->unsetDelete();
            $crud->unsetEdit();
         endif; 


        //Callback
         $crud->callbackBeforeInsert(function ($stateParameters) {
            // Obtén el ID del usuario desde la sesión activa usando Shield o el método de tu preferencia
            $user = \CodeIgniter\Config\Services::auth()->user();  // Esto depende de cómo tengas configurado Shield
        
            // Verifica si el usuario está autenticado y si tiene un ID válido
            if ($user && isset($user->id)) {
                $data = $stateParameters->data;  // Accede directamente a los datos de la inserción
        
                // Añade el ID del usuario al campo 'creado_por'
                $data['creado_por'] = $user->id;
        
                // Actualiza los datos para la inserción
                $stateParameters->data = $data;  // Modifica los datos de la inserción
            } else {
                // Si el usuario no está autenticado, lanza un error o realiza alguna acción
                throw new \Exception('No se pudo obtener el ID del usuario activo.');
            }
        
            return $stateParameters;
        });

        
	    $output = $crud->render();       
		return $this->_dataOutput($output);
	}


    
   
	public function vista_resultados_estres_fa_fb()
	{
	    $crud = new GroceryCrud();
	    $crud->setTable('resultados_estres_fa_fb');
        $crud->setSubject('Resultados Estres Forma A-B', 'Resultados Estres Forma A-B');
        $crud->displayAs('fec_aplica', 'Fecha de Aplicación del Instrumento');
        $crud->displayAs('nro_documento', 'Numero de Documento del Colaborador');
        
        $crud->displayAs('tipo_forma', 'Tipo de Forma');
        $crud->displayAs('a', 'SÌntomas fisiologicos');
        $crud->displayAs('b', 'SÌntomas de comportamiento social');
        $crud->displayAs('c', 'SÌntomas intelectuales y laborales');
        $crud->displayAs('d', 'SÌntomas psicoemocionales');
        $crud->displayAs('pt_total_estres_bruto', 'Puntaje Estres Bruto');
        $crud->displayAs('pt_total_estres_trasnformado', 'Puntaje total evaluación de estrés (puntaje transformado)');
        $crud->displayAs('nr_total_estres', 'Puntaje total evaluación de estrés (nivel de riesgo)');
        

        //Rules
        $crud->unsetOperations();

        //Relaciones
        $crud->setRelation('nro_documento', 'colaborador', '{nro_documento} - {nombre_completo}');

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
